require "takeaway"

describe Takeaway do

  let(:dishes){ {'hamburger' => 2} }
  let(:dish){'hamburger'}
  let(:sel_dish){{'hamburger' => 4}}
  let(:total_cost){8}


  it "expect takeaway to print the menu" do
    expect(subject.menu_restaurant).to eq(dishes)
  end

  it "expect to select more quantity of the same item" do
    subject.select_dishes(dish, 4)
    expect(subject.selected_dishes).to eq([sel_dish])
  end

  it "expect to calculate the total of the ordered dishes" do
    subject.select_dishes(dish, 4)
    expect(subject.total).to eq(total_cost)
  end

end
