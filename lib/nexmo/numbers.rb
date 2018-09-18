# frozen_string_literal: true

module Nexmo
  class Numbers < Namespace
    include Keys

    self.host = 'rest.nexmo.com'

    def list(params = nil)
      request('/account/numbers', params: params)
    end

    def search(params)
      request('/number/search', params: params)
    end

    def buy(params)
      entity = request('/number/buy', params: params, type: Post)

      NumbersResponse.new(entity)
    end

    def cancel(params)
      entity = request('/number/cancel', params: params, type: Post)

      NumbersResponse.new(entity)
    end

    def update(params)
      entity = request('/number/update', params: camelcase(params), type: Post)

      NumbersResponse.new(entity)
    end
  end
end
