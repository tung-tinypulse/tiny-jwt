require "tiny/jwt/version"
require "tiny/jwt/configuration"
require "jwt"
module Tiny
  module Jwt
    class << self
      attr_accessor :configuration
    end

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configure
      yield(configuration)
    end

    def self.encode(payload)
      JWT.encode(payload, configuration.secret_hash, configuration.algorithm)
    end

    def self.decode(token)
      p token
      p configuration.secret_hash
      p configuration.algorithm
      decoded_token = JWT.decode(token, configuration.secret_hash, configuration.algorithm)
      p decoded_token
      decoded_token[0]
    end
  end
end
