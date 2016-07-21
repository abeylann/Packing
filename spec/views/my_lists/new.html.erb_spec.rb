require 'rails_helper'

RSpec.describe "my_lists/new", type: :view do
  before(:each) do
    assign(:my_list, MyList.new(
      :place_id => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new my_list form" do
    render

    assert_select "form[action=?][method=?]", my_lists_path, "post" do

      assert_select "input#my_list_place_id[name=?]", "my_list[place_id]"

      assert_select "input#my_list_name[name=?]", "my_list[name]"
    end
  end
end
