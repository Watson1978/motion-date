# reference:
# October 1582 (the Gregorian calendar, Civil Date)
#   S   M  Tu   W  Th   F   S
#       1   2   3   4  15  16
#  17  18  19  20  21  22  23
#  24  25  26  27  28  29  30
#  31

describe "Date#valid_civil?" do

  it "should be able to determine if a date is valid" do
    Date.valid_civil?(1582, 10, 14).should == false
    Date.valid_civil?(1582, 10, 15).should == true
    Date.valid_civil?(1582, 10, 14, Date::ENGLAND).should == true
  end

  it "should be able to handle negative months and days" do
    # October 1582 (the Gregorian calendar, Civil Date in 1.9)
    #     S   M  Tu   W  Th   F   S
    #       -21 -20 -19 -18 -17 -16
    #   -15 -14 -13 -12 -11 -10  -9
    #    -8  -7  -6  -5  -4  -3  -2
    #    -1
    Date.valid_civil?(1582, -3, -22).should == false
    Date.valid_civil?(1582, -3, -21).should == true
    Date.valid_civil?(1582, -3, -18).should == true
    Date.valid_civil?(1582, -3, -17).should == true

    Date.valid_civil?(2007, -11, -10).should == true
    Date.valid_civil?(2008, -11, -10).should == true
  end

end