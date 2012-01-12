class Digit
  
  attr_accessor :leds
  attr_reader :value
  
  def initialize value=0
    @leds = [Led.new(true),Led.new(true),Led.new(true),Led.new(true),Led.new(true),Led.new(true),Led.new(true)]
    @value = value
  end
  
  def print
    res = []
    # if @leds[0].on?
    #   res[0][1] =  "1"  
    # else
    #   res[0][1] =  "0"  
    # end      
    # 
    # if @leds[0].on?
    #   res << "010"  
    # else
    #   res << "000"  
    # end      
    #   
    # if @leds[1].on?
    #   res << "001"
    # else
    #   res << "000"    
    # end      
  
    5.times do
      res << "000"
    end    
  
    res
  end
  
end

class Led
  
  def initialize(status)
    @status = status
  end
  
  def on?
    @status
  end
  
  def off?
    not @status
  end
  
end