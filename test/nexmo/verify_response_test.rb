require_relative './test'

class NexmoVerifyResponseTest < Nexmo::Test
  def test_success_method_with_success_status
    entity = Nexmo::Entity.new(status: 'SUCCESS')

    response = Nexmo::VerifyResponse.new(entity)

    assert_equal true, response.success?
  end

  def test_success_method_with_zero_status
    entity = Nexmo::Entity.new(status: '0')

    response = Nexmo::VerifyResponse.new(entity)

    assert_equal true, response.success?
  end

  def test_success_method_with_nonzero_status
    entity = Nexmo::Entity.new(status: '101')

    response = Nexmo::VerifyResponse.new(entity)

    assert_equal false, response.success?
  end
end
