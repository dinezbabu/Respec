require 'rspec'

describe "GetTime" do
  let(:current_time) { Time.now }

  it "gets the same time over and over again" do
    puts current_time # => 2018-07-19 09:35:29 +0300
    sleep(4)
    puts current_time # => 2018-07-19 09:35:29 +0300
  end

  it "gets the time again" do
    puts current_time # => 2018-07-19 09:35:32 +0300
    sleep 1
  end
end

describe "GetTime" do
  let!(:current_time) { Time.now }

  before(:each) do
    puts Time.now # => 2018-07-19 09:57:52 +0300
  end

  it "gets the time" do
    sleep(3)
    puts current_time # => 2018-07-19 09:57:52 +0300
  end
end