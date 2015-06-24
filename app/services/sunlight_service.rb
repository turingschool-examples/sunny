class SunlightService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("https://congress.api.sunlightfoundation.com")
    connection.query['apikey'] = ENV['sunlight_api_key']
  end

  def legislators(zipcode)
    parse(connection.get("/legislators/locate?zip=#{zipcode}"))[:results]
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
