Given("I enter {string}") do |string|
@text=string
end

When("calculate number of words") do
@wc= WordCount.new(@text)
end

Then("verify the number of count as {int}") do |int|
  expect(@wc.results).to eql int
end
