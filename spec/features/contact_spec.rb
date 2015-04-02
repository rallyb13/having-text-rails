require 'rails_helper'

describe 'add a new contact process' do
  it "adds a new contact for a user" do
    user1 = FactoryGirl.create(:user)
    sign_in(user1)
    click_on "My Profile"
    click_on "Add New Contact"
    fill_in "Name", with: "billy joebob ray cyrus"
    fill_in "Phone", with: "1234567890"
    fill_in "Email", with: "achybreaky@notthatsong.com"
    click_on "Add Contact"
    expect(page).to have_content "successfully"
  end

  # it 'throws an error if phone field is left blank' do
  #   user1 = FactoryGirl.create(:user)
  #   sign_in(user1)
  #   click_on "My Profile"
  #   click_on "Add New Contact"
  #   fill_in "Name", with: "billy joebob ray cyrus"
  #   fill_in "Email", with: "achybreaky@notthatsong.com"
  #   click_on "Add Contact"
  #   expect(page).to have_content "must enter"
  # end
end
