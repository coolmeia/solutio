step "I'm in the root page" do
  visit "/"
end

step "I'm logged in" do
  user = FactoryGirl.create(:cajueiro)

  login_as(user, :scope => :user, :run_callbacks => false)

  step "I'm in the root page"
end
