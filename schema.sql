BEGIN;

CREATE TABLE IF NOT EXISTS public."Customers"
(
    id serial,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    address character varying NOT NULL,
    phone character varying NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public."Orders"
(
    id serial,
    date date NOT NULL,
    total double precision DEFAULT 0,
    customer_id integer NOT NULL,
	status order_status DEFAULT 'pending',
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public."Order Lines"
(
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    price double precision NOT NULL,
    total double precision GENERATED ALWAYS AS ( round(price::numeric * quantity::numeric, 2)) STORED,
    PRIMARY KEY (order_id, product_id)
);

CREATE TABLE IF NOT EXISTS public."Products"
(
    id serial,
    sku character varying(12) NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    price double precision NOT NULL,
    stock integer NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public."Orders"
    ADD FOREIGN KEY (customer_id)
    REFERENCES public."Customers" (id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Order Lines"
    ADD FOREIGN KEY (order_id)
    REFERENCES public."Orders" (id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Order Lines"
    ADD FOREIGN KEY (product_id)
    REFERENCES public."Products" (id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE NO ACTION
    NOT VALID;

END;