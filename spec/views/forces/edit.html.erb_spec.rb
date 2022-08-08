require 'rails_helper'

RSpec.describe "forces/edit", type: :view do
  before(:each) do
    @force = assign(:force, Force.create!(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit force form" do
    render

    assert_select "form[action=?][method=?]", force_path(@force), "post" do

      assert_select "input[name=?]", "force[name]"

      assert_select "textarea[name=?]", "force[description]"
    end
  end
end
