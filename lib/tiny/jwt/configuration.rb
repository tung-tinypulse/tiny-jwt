module Tiny
  module Jwt
    class Configuration
    attr_accessor :algorithm, :secret_hash

    def initialize
      @algorithm = 'HS256'
      @secret_hash = ''
    end
  end
  end
end
