# reference:
# October 1582 (the Gregorian calendar, Civil Date)
#   S   M  Tu   W  Th   F   S
#       1   2   3   4  15  16
#  17  18  19  20  21  22  23
#  24  25  26  27  28  29  30
#  31

describe "Date#valid_commercial?" do

  it "should be able to determine if the date is a valid commercial date" do
    # October 1582 (the Gregorian calendar, Commercial Date in 1.9)
    #      M Tu  W Th  F Sa Su
    # 39:  1  2  3  4  5  6  7
    # 40:  1  2  3  4  5  6  7
    # 41:  1  2  3  4  5  6  7
    Date.valid_commercial?(1582, 39, 4).should == true
    Date.valid_commercial?(1582, 39, 5).should == true
    Date.valid_commercial?(1582, 41, 4).should == true
    Date.valid_commercial?(1582, 41, 5).should == true
    Date.valid_commercial?(1582, 41, 4, Date::ENGLAND).should == true
    Date.valid_commercial?(1752, 37, 4, Date::ENGLAND).should == true
  end

  it "should be able to handle negative week and day numbers" do
    # October 1582 (the Gregorian calendar, Commercial Date in 1.9)
    #       M Tu  W Th  F Sa Su
    # -12: -7 -6 -5 -4 -3 -2 -1
    # -11: -7 -6 -5 -4 -3 -2 -1
    # -10: -7 -6 -5 -4 -3 -2 -1
    Date.valid_commercial?(1582, -12, -4).should == true
    Date.valid_commercial?(1582, -12, -3).should == true

    Date.valid_commercial?(2007, -44, -2).should == true
    Date.valid_commercial?(2008, -44, -2).should == true
  end

end
