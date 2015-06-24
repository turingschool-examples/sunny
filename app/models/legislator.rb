class Legislator < OpenStruct
  def self.service
    @service = SunlightService.new
  end

  def self.find_by(location: "")
    service.legislators(location).map { |legislator| new(legislator) }
  end
end
