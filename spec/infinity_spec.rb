describe "Date::Infinity" do

  it "should be able to check whether Infinity is zero" do
    i = Date::Infinity.new
    i.zero?.should == false
  end

  it "should be able to check whether Infinity is finite" do
    i1 = Date::Infinity.new
    i1.finite?.should == false
    i2 = Date::Infinity.new(-1)
    i2.finite?.should == false
    i3 = Date::Infinity.new(0)
    i3.finite?.should == false
  end

  it "should be able to check whether Infinity is infinite" do
    i1 = Date::Infinity.new
    i1.infinite?.should == 1
    i2 = Date::Infinity.new(-1)
    i2.infinite?.should == -1
    i3 = Date::Infinity.new(0)
    i3.infinite?.should == nil
  end

  it "should be able to check whether Infinity is not a number" do
    i1 = Date::Infinity.new
    i1.nan?.should == false
    i2 = Date::Infinity.new(-1)
    i2.nan?.should == false
    i3 = Date::Infinity.new(0)
    i3.nan?.should == true
  end

  it "should be able to coerce a Date::Infinity object" do
    Date::Infinity.new.coerce(1).should == [-1, 1]
    Date::Infinity.new(0).coerce(2).should == [0, 0]
    Date::Infinity.new(-1).coerce(1.5).should == [1, -1]
  end
end
