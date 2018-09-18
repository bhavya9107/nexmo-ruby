require_relative './test'

class NexmoNumbersResponseTest < Nexmo::Test
  def test_success_method_with_200_error_code
    entity = Nexmo::Entity.new(error_code: '200')

    response = Nexmo::NumbersResponse.new(entity)

    assert_equal true, response.success?
  end

  def test_success_method_with_420_error_code
    entity = Nexmo::Entity.new(error_code: '420')

    response = Nexmo::NumbersResponse.new(entity)

    assert_equal false, response.success?
  end
end
