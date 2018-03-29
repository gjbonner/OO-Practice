require_relative "../app/models/gym.rb"

describe "Gym" do

  describe "#new" do
    it "initializes with a name" do
      golds = Gym.new("Golds")
      expect(golds.name).to eq("Golds")
    end
  end

end
