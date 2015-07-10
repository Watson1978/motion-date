describe "Date#parse" do
  # The space separator is also different, doesn't work for only numbers
  it "can parse a day name into a Date object" do
    d = Date.parse("friday")
    d.should == Date.commercial(d.cwyear, d.cweek, 5)
  end

  it "can parse a month name into a Date object" do
    d = Date.parse("october")
    d.should == Date.civil(Date.today.year, 10)
  end

  it "can parse a month day into a Date object" do
    d = Date.parse("5th")
    d.should == Date.civil(Date.today.year, Date.today.month, 5)
  end

  it "can handle DD as month day number" do
    d = Date.parse("10")
    d.should == Date.civil(Date.today.year, Date.today.month, 10)
  end

  it "can handle DDD as year day number" do
    d = Date.parse("100")
    if Date.gregorian_leap?(Date.today.year)
      d.should == Date.civil(Date.today.year, 4, 9)
    else
      d.should == Date.civil(Date.today.year, 4, 10)
    end
  end

  it "can handle MMDD as month and day" do
    d = Date.parse("1108")
    d.should == Date.civil(Date.today.year, 11, 8)
  end

  it "can handle YYDDD as year and day number in 1969--2068" do
    d = Date.parse("10100")
    d.should == Date.civil(2010, 4, 10)
  end

  it "can handle YYMMDD as year month and day in 1969--2068" do
    d = Date.parse("201023")
    d.should == Date.civil(2020, 10, 23)
  end

  it "can handle YYYYDDD as year and day number" do
    d = Date.parse("1910100")
    d.should == Date.civil(1910, 4, 10)
  end

  it "can handle YYYYMMDD as year and day number" do
    d = Date.parse("19101101")
    d.should == Date.civil(1910, 11, 1)
  end
end
