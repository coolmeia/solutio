module UserSteps
  step "I create a new user" do
    within '.nav' do
      click_link 'Sign up'
    end

    fill_in '* Name',    :with => 'cajueiro'
    fill_in 'Email',    :with => 'cajueiro@coolmeia.org'
    fill_in '* Password', :with => '12345678'
    fill_in '* Password confirmation', :with => '12345678'

    click_button 'Sign up'
  end

  step "the user should be created successfully" do
    expect(page).to have_content "Welcome! You have signed up successfully."

    click_link 'cajueiro'

    expect(page).to have_field '* Name', :with => 'cajueiro'
    expect(page).to have_field '* Email', :with => 'cajueiro@coolmeia.org'
  end

  step "I have a user" do
    FactoryGirl.create(:cajueiro)
  end

  step "I sign in" do
    click_link 'Sign in'

    fill_in 'Email',    :with => 'cajueiro@coolmeia.org'
    fill_in 'Password', :with => '12345678'

    click_button 'Sign in'
  end

  step "I should be signed in" do
    expect(page).to have_content "Signed in successfully."
  end

  step "I'm logged in" do
    user = FactoryGirl.create(:cajueiro)

    login_as(user, :scope => :user, :run_callbacks => false)

    step "I'm in the root page"
  end

  step "I sign out" do
    click_link 'Sign Out'
  end

  step "I should be signed out" do
    expect(page).to have_content "Signed out successfully."
  end
end

RSpec.configure { |c| c.include UserSteps }
