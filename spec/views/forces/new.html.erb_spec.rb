require 'rails_helper'

RSpec.describe "forces/new", type: :view do
  before(:each) do
    assign(:force, Force.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new force form" do
    render

    assert_select "form[action=?][method=?]", forces_path, "post" do

      assert_select "input[name=?]", "force[name]"

      assert_select "textarea[name=?]", "force[description]"
    end
  end
end
