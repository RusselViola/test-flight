require 'pry'
require_relative "../../lib/airplane"


describe Airplane do
  let(:airplane) {Airplane.new("Vespa", 32, 500)}

  describe "#initialization" do
    it "reads back the type of aircraft" do
      airplane.initialization
      expect(airplane.initialization).to eq("Vespa")
    end
  end

  describe "#start" do
    it "should return that engine has been started" do
        airplane.engine = 0
        expect(airplane.start).to eq("The engine has been started")
    end
    it "should return that the engine is already running" do
      airplane.engine = 1
      expect(airplane.start).to eq("The engine is currently running")
    end
  end

  describe "#takeoff" do
    it "should return flying as false if the engine is off" do
      airplane.engine = 0
      expect(airplane.flying).to eq(false)
      expect(airplane.takeoff).to be_a(String)
    end

    it "should return flying as false if engine is on but not flying" do
      airplane.engine = 1
      airplane.takeoff
      expect(airplane.flying).to eq(true)
    end

    it "should return 'Prepare for takeoff' When switching flying from false to true" do
      airplane.start
      expect(airplane.takeoff).to eq("Prepare for Takeoff!")
    end


  end

  describe "#land" do
    it "should ask to start if the plane is on the ground" do
      expect(airplane.land).to eq("airplane not started. please start")
    end
    it "should say the plane is on the ground" do
      airplane.start
      expect(airplane.land).to eq("airplane already on the ground")
    end
    it "should land the plane" do
      airplane.start 
      airplane.takeoff
      expect(airplane.land).to eq("airplane landed")
    end
  end

end
