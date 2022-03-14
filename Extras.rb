class Extra
  attr_reader :name, :price

  TYPE = ['Radio',
          'AC',
          'Sunroof',
          'Leather seats',
          'Power windows']

  def initialize(params)
    @name = TYPE[params[:option]]
    @price = params[:price]
  end

  def to_s
    "#{name} ($#{'%.2f' % price})"
  end
end

class Extras < Array
  def import(params)
    self << Extra.new(params)
  end

  def list
    list = "Extras:\n"
    each do |e|
      list = <<~LIST
        #{list}
            #{e}
      LIST
    end
    list
  end
end
