require_relative 'indeed'
RSpec.describe Indeed do
  describe "indeed" do
    it "has a class" do
      indeed = Indeed.new
      expect(indeed).to be_instance_of(Indeed)
    end
  end
end

