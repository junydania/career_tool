Given("the following job families exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:job_family, hash)
  end
end

Given("the following business units exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:business_unit, hash)
  end
end

Given("the following divisions exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:division, hash)
  end
end

Given("the following organizational units exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:organizational_unit, hash)
  end
end

Given("the following primary clusters exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:primary_cluster, hash)
  end
end

Given("the following secondary clusters exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:secondary_cluster, hash)
  end
end

Given("I select {string} from {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

