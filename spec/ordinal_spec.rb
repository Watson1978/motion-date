# reference:
# October 1582 (the Gregorian calendar, Civil Date)
#   S   M  Tu   W  Th   F   S
#       1   2   3   4  15  16
#  17  18  19  20  21  22  23
#  24  25  26  27  28  29  30
#  31

describe "Date#ordinal" do

  it "should be able to construct a Date object from an ordinal date" do
    # October 1582 (the Gregorian calendar, Ordinal Date in 1.9)
    #   S   M  Tu   W  Th   F   S
    #     274 275 276 277 278 279
    # 280 281 282 283 284 285 286
    # 287 288 289 290 291 292 293
    # 294
    Date.ordinal(1582, 274).should == Date.civil(1582, 10,  1)
    Date.ordinal(1582, 277).should == Date.civil(1582, 10,  4)
    Date.ordinal(1582, 278).should == Date.civil(1582, 10, 15)
    Date.ordinal(1582, 287, Date::ENGLAND).should == Date.civil(1582, 10, 14, Date::ENGLAND)
  end

end

describe "Date#valid_ordinal?" do

  it "should be able to determine if the date is a valid ordinal date" do
    # October 1582 (the Gregorian calendar, Ordinal Date in 1.9)
    #   S   M  Tu   W  Th   F   S
    #     274 275 276 277 278 279
    # 280 281 282 283 284 285 286
    # 287 288 289 290 291 292 293
    # 294
    Date.valid_ordinal?(1582, 277).should == true
    Date.valid_ordinal?(1582, 278).should == true
    Date.valid_ordinal?(1582, 287).should == true
    Date.valid_ordinal?(1582, 288).should == true
  end

  it "should be able to handle negative day numbers" do
    # October 1582 (the Gregorian calendar, Ordinal Date in 1.9)
    #   S   M  Tu   W  Th   F   S
    #     -82 -81 -80 -79 -78 -77
    # -76 -75 -74 -73 -72 -71 -70
    # -69 -68 -67 -66 -65 -64 -63
    # -62
    Date.valid_ordinal?(1582, -79).should == true
    Date.valid_ordinal?(1582, -78).should == true
    Date.valid_ordinal?(2007, -100).should == true
  end

end
