require_relative './test'

class NexmoSMSResponseTest < Nexmo::Test
  def test_success_method_with_zero_message_status
    entity = Nexmo::Entity.new(messages: [Nexmo::Entity.new(status: '0')])

    response = Nexmo::SMSResponse.new(entity)

    assert_equal true, response.success?
  end

  def test_success_method_with_nonzero_message_status
    entity = Nexmo::Entity.new(messages: [Nexmo::Entity.new(status: '1')])

    response = Nexmo::SMSResponse.new(entity)

    assert_equal false, response.success?
  end
end
