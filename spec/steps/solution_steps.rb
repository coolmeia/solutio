module SolutionSteps
  step 'I go to the solutions page' do
    click_on 'Solutions'
  end

  step 'I go to the new solution page' do
    click_on 'New Solution'
  end

  step 'I fill the form' do
    fill_in 'Name', :with => 'Clean water'
    fill_in 'Description', :with => 'How to clear your own water'
    select 'Food', :from => 'Category'

    click_on "Create Solution"
  end

  step 'it should be saved properly' do
    expect(page).to have_content "Solution was successfully created."

    expect(page).to have_content "Clean water"
    expect(page).to have_content "Category: Food"
  end

  step 'I have a solution' do
    FactoryGirl.create(:solution, :user => User.first)
  end

  step 'I edit the solution' do
    click_on "Solutions"
    click_on "Free money"
    click_on "Edit"

    fill_in 'Name', :with => 'Clean water'
    fill_in 'Description', :with => 'How to clear your own water'
    select 'Food', :from => 'Category'

    click_on "Update Solution"
  end

  step 'it should be updated properly' do
    expect(page).to have_content "Solution was successfully updated."

    expect(page).to have_content "Clean water"
    expect(page).to have_content "Category: Food"
  end

  step 'Another user has a solution' do
    FactoryGirl.create(:solution, :user => FactoryGirl.create(:user))
  end

  step "I can't edit that solution" do
    click_on "Solutions"
    click_on "Free money"

    expect(page).to_not have_link "Edit"
  end

  step "I'm not logged in" do
    visit root_path

    expect(page).to have_link "Sign in"
    expect(page).to have_link "Sign up"
  end

  step "I see the solutions" do
    click_on "Solutions"

    expect(page).to have_content "Free money"
  end

  step "but I don't see any new solution link" do
    expect(page).to_not have_link "New Solution"
  end
end

RSpec.configure { |c| c.include SolutionSteps }
