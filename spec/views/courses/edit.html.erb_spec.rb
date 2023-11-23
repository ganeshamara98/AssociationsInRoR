require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  let(:course) {
    Course.create!(
      name: "MyString",
      duration_in_months: 1
    )
  }

  before(:each) do
    assign(:course, course)
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(course), "post" do

      assert_select "input[name=?]", "course[name]"

      assert_select "input[name=?]", "course[duration_in_months]"
    end
  end
end
