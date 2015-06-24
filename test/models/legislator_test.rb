require 'test_helper'

class LegislatorTest < ActiveSupport::TestCase
  test 'it returns legislators by location' do
    VCR.use_cassette("legislator#find_by") do
      results = Legislator.find_by(location: '80202')

      assert_equal 3,         results.count
      assert_equal 'Cory',    results.first.first_name
      assert_equal 'Gardner', results.first.last_name
    end
  end
end
