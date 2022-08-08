require 'rails_helper'

RSpec.describe "forces/index", type: :view do
  before(:each) do
    assign(:forces, [
      Force.create!(
        name: "Name",
        description: "MyText"
      ),
      Force.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of forces" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
