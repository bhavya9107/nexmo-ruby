# frozen_string_literal: true

module Nexmo
  class Verify < Namespace
    alias_method :namespace_request, :request

    def request(params)
      http_request('/verify/json', params: params, type: Post)
    end

    def check(params)
      http_request('/verify/check/json', params: params, type: Post)
    end

    def search(params)
      http_request('/verify/search/json', params: params)
    end

    def control(params)
      http_request('/verify/control/json', params: params, type: Post)
    end

    def cancel(id)
      control(request_id: id, cmd: 'cancel')
    end

    def trigger_next_event(id)
      control(request_id: id, cmd: 'trigger_next_event')
    end

    private

    def http_request(*args)
      VerifyResponse.new(namespace_request(*args))
    end
  end
end
