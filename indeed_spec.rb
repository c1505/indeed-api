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

    it "can fetch all results" do
      zip_code = 27713
      query = "Ruby"
      indeed = Indeed.new(zip_code, query)
      response = indeed.fetch_one
      all = indeed.fetch_all
      expect(response["totalResults"]).to be all.count * 25
    end

    it "the results are unique"

    it "gets the full description"

    it "gets the company name"

    it "gets the location"

    it "gets the link"


  end
end
