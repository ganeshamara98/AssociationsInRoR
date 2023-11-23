require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    assign(:address, Address.create!(
      city: "City",
      state: "State",
      pin: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/2/)
  end
end
