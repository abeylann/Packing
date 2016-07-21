require 'rails_helper'

RSpec.describe "my_lists/show", type: :view do
  before(:each) do
    @my_list = assign(:my_list, MyList.create!(
      :place_id => "Place",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Place/)
    expect(rendered).to match(/Name/)
  end
end
