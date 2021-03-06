Given("the following user account exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:user, hash)
  end
end


Given("I fill in field {string} with {string}") do |email, password|
  fill_in email, with: password
end

Given("I click on {string}") do |login|
  click_link_or_button(login)
end
