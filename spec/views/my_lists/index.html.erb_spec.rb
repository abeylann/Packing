require 'rails_helper'

RSpec.describe "my_lists/index", type: :view do
  before(:each) do
    assign(:my_lists, [
      MyList.create!(
        :place_id => "Place",
        :name => "Name"
      ),
      MyList.create!(
        :place_id => "Place",
        :name => "Name"
      )
    ])
  end

  it "renders a list of my_lists" do
    render
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
