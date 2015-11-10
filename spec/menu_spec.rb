require 'menu'

describe Menu do

  subject(:menu){ described_class.new(dishes) }
  let(:dishes) do
    {
      chicken: 3.99,
      falafel: 4.00
    }
  end

  it "has a list of dishes and prices" do
    expect(menu.dishes).to eq(dishes)
  end

  it 'prints a list off dishes with prices'  do
    printed_menu = 'Chicken £3.99, Falafel £4.00'
    expect(menu.print).to eq(printed_menu)
  end
end
