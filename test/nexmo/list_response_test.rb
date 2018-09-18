require_relative './test'

class NexmoListResponseTest < Nexmo::Test
  def uuid
    'xx-xx-xx-xx'
  end

  def test_each_yields_embedded_entities
    call_entity = Nexmo::Entity.new(uuid: uuid)

    entity = Nexmo::Entity.new(_embedded: Nexmo::Entity.new(calls: [call_entity]))

    response = Nexmo::ListResponse.new(entity)

    enumerator = response.each

    assert_kind_of Enumerator, enumerator
    assert_equal call_entity, enumerator.next
    assert_raises(StopIteration) { enumerator.next }
  end
end
