class TerminalSpeaker < Speaker
  def initialize    
    super.alloc.init          
    self
  end
  
  def speak
    return "I am an instance of a Ruby Speaker extending an Objective-C++ Speaker class"
  end
end