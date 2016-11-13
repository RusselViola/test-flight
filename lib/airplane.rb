require 'pry'
class Airplane
  attr_reader :type, :wing_load, :horsepower, :flying
  attr_accessor :engine
  def initialize(type, wing_load = 0, horsepower = 0)
    @type = type
    @wing_load = wing_load
    @horsepower = horsepower
    @engine = 0
    @flying = false
  end

  def initialization
    @type
  end

  def start
    if @engine == 0
       @engine += 1
      "The engine has been started"
    elsif
      @engine == 1
      "The engine is currently running"
    end
  end

  def takeoff
    if @engine == 0
       @engine += 1
       @flying = false
      "Please start the engine"
    else
      if @flying == true
      "You're already in the air"
      else
        @flying = true
        "Prepare for Takeoff!"
      end
    end

  end

  def land
    if @engine == 0 && @flying == false
      "airplane not started. please start"
  elsif @engine == 1 && @flying == false
      "airplane already on the ground"
    elsif @engine = 1 && @flying == true
      "airplane landed"
    end
  end


end
airplane = Airplane.new("Vespa", 32, 500)
# binding.pry
