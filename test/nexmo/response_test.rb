require_relative './test'

class NexmoResponseTest < Minitest::Test
  def test_delegates_attributes_to_entity
    value = 'xxxx-xxxx'

    entity = Nexmo::Entity.new(id: value)

    response = Nexmo::Response.new(entity)

    assert_equal response.id, value
  end
end
