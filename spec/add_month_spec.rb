describe "Date#>>" do
  it "adds the number of months to a Date" do
    d = Date.civil(2007,2,27) >> 10
    d.should == Date.civil(2007, 12, 27)
  end

  it "sets the day to the last day of a month if the day doesn't exist" do
    d = Date.civil(2008,3,31) >> 1
    d.should == Date.civil(2008, 4, 30)
  end
end
