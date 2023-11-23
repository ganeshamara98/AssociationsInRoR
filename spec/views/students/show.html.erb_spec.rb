require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    assign(:student, Student.create!(
      name: "Name",
      email: "Email",
      phone: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/2/)
  end
end
