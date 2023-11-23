require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  let(:student) {
    Student.create!(
      name: "MyString",
      email: "MyString",
      phone: 1
    )
  }

  before(:each) do
    assign(:student, student)
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(student), "post" do

      assert_select "input[name=?]", "student[name]"

      assert_select "input[name=?]", "student[email]"

      assert_select "input[name=?]", "student[phone]"
    end
  end
end
