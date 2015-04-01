# FEATURE SPEC
describe 'the user sign-up process' do
  it 'creates a new user' do
    visit root_path
    click_on 'Sign Up'
    fill_in "Email", with: "a@b.com"
    fill_in "Password", with: "1234yrmom"
    fill_in "Password confirmation", with: "1234yrmom"
    click_on 'Sign up'
    expect(page).to have_content "successfully"
  end
end

describe 'the user log-in process' do
  it 'signs in a user' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on "Log in"
    expect(page).to have_content "successfully"
  end
end

describe 'the user log-out process' do
  it 'signs a user out' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on 'Sign Out'
    expect(page).to have_content "successfully"
  end
end

# describe 'the edit user process' do
#
# end
