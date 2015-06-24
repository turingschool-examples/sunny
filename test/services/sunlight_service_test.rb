require 'test_helper'

class SunlightServiceTest < ActiveSupport::TestCase
  test 'it gets all legislators' do
    VCR.use_cassette('sunlight_service#locate') do
      service = SunlightService.new
      result  = service.legislators('80202')

      assert_equal 3,         result.count
      assert_equal "Cory",    result.first[:first_name]
      assert_equal "Gardner", result.first[:last_name]
    end
  end
end
