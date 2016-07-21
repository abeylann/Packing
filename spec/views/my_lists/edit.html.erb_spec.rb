require 'rails_helper'

RSpec.describe "my_lists/edit", type: :view do
  before(:each) do
    @my_list = assign(:my_list, MyList.create!(
      :place_id => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit my_list form" do
    render

    assert_select "form[action=?][method=?]", my_list_path(@my_list), "post" do

      assert_select "input#my_list_place_id[name=?]", "my_list[place_id]"

      assert_select "input#my_list_name[name=?]", "my_list[name]"
    end
  end
end
