require_relative 'indeed'
RSpec.describe Indeed do
  describe "indeed" do
    it "has a class" do
      zip_code = 27713
      query = "Ruby"
      indeed = Indeed.new(zip_code, query)
      expect(indeed).to be_instance_of(Indeed)
    end
    it "has a successful request" do
      zip_code = 27713
      query = "Ruby"
      indeed = Indeed.new(zip_code, query)
      response = indeed.fetch_one
      expect(response.code).to be 200
    end
  end
end

