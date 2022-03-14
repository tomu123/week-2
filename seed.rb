require 'faker'

File.open('./seed.sql', mode: 'w') {}
File.open('./seed.sql', mode: 'a') do |f|
  (1..5).each do |_x|
    f.puts 'INSERT INTO public."Customers"(first_name,last_name,address,phone)'
    f.puts "VALUES('#{Faker::Name.first_name}','#{Faker::Name.last_name}','#{Faker::Address.full_address}','#{Faker::PhoneNumber.cell_phone_with_country_code}');"
  end

  (1..20).each do |_x|
    f.puts 'INSERT INTO public."Products"(sku,name,description,price,stock)'
    f.puts "VALUES('#{Faker::Code.asin}','#{Faker::Commerce.product_name}','#{Faker::Lorem.sentence}',#{Faker::Commerce.price.round(1)},#{rand(30..100)});"
  end

  (1..10).each do |x|
    f.puts 'INSERT INTO public."Orders"(date,customer_id,status)'
    f.puts "VALUES('#{Faker::Date.in_date_period}',#{rand(1..5)},'#{%w[pending completed cancelled].sample}');"
    products = (1..20).to_a.shuffle
    (1..rand(1..5)).each do |_y|
      product_id = products.pop
      f.puts 'INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)'
      f.puts "SELECT #{x},#{product_id},#{rand(1..5)},price FROM public.\"Products\" WHERE id = #{product_id};"
    end
  end
end
