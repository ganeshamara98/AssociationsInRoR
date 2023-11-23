require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        city: "City",
        state: "State",
        pin: 2
      ),
      Address.create!(
        city: "City",
        state: "State",
        pin: 2
      )
    ])
  end

  it "renders a list of addresses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
