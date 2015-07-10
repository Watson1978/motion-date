describe "Date#+" do
  it "adds the number of days to a Date" do
    d = Date.civil(2007,2,27) + 10
    d.should == Date.civil(2007, 3, 9)
  end

  it "adds a negative number of days to a Date" do
    d = Date.civil(2007,2,27).+(-10)
    d.should == Date.civil(2007, 2, 17)
  end
end
