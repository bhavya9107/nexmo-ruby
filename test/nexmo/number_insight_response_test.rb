require_relative './test'

class NexmoNumberInsightResponseTest < Nexmo::Test
  def test_success_method_with_zero_status
    entity = Nexmo::Entity.new(status: 0)

    response = Nexmo::NumberInsightResponse.new(entity)

    assert_equal true, response.success?
  end

  def test_success_method_with_nonzero_status
    entity = Nexmo::Entity.new(status: 1)

    response = Nexmo::NumberInsightResponse.new(entity)

    assert_equal false, response.success?
  end
end
