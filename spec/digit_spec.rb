require "digit"

describe Digit do
  let(:digit) { Digit.new }
  
  it "has 7 leds" do
    digit.leds.count.should eql 7
  end
  
  it "should have 7 leds objets" do
    digit.leds.each { |l| l.should be_kind_of Led }
  end
  
  it "should respond to print" do
    digit.should respond_to :print
  end
  
  it "should have a value" do
    digit.value.should be_kind_of Fixnum   
  end
  
  it "could be initialized with a value" do
    Digit.new(5).value.should eql 5
  end
  
  it "should verify that print return an array of string" do
    digit.print.should be_kind_of Array
    digit.print[0].should be_kind_of String    
  end

  it "should verify that print return five rows" do
    digit.print.size.should eq 5
  end
  
  it "should return 5 rows of 000 when all leds are off" do
    digit.leds = [Led.new(false), Led.new(false), Led.new(false), Led.new(false), Led.new(false), Led.new(false), Led.new(false)]    
      digit.print[0].should eql '000'
      digit.print[1].should eql '000'
      digit.print[2].should eql '000'
      digit.print[3].should eql '000'
      digit.print[4].should eql '000'
  end
  it "the first led on will print a string '010'" do
    pending
    digit.print.first.should eql '010'    
  end

  it "the second led on will print a string '001' on the second row" do
    pending
    digit.leds = [Led.new(false), Led.new(true), Led.new(false), Led.new(false), Led.new(false), Led.new(false), Led.new(false)]    
      digit.print[0].should eql '000'
      digit.print[1].should eql '001'
      digit.print[2].should eql '000'
      digit.print[3].should eql '000'
      digit.print[4].should eql '000'
  end

  it "the second and sixth leds  are on will print a string '101' on the second row" do
    pending
    digit.leds = [Led.new(false), Led.new(true), Led.new(false), Led.new(false), Led.new(false), Led.new(true), Led.new(false)]    
    digit.print[1].should eql '101'
  end
  
end

describe Led do
  it "must have an on state" do
    Led.new(true).should be_on
  end

  it "must have an off state" do
    Led.new(false).should be_off
  end
    
end