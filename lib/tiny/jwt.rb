require "tiny/jwt/version"
require "jwt"
module Tiny
  module Jwt
    ALGORITHM = ENV['alg']
    SECRET_HASH = ENV['secret']

    def self.encode(payload)
      p payload
      p SECRET_HASH
      p ALGORITHM
      p JWT.encode(payload, SECRET_HASH, ALGORITHM)
      JWT.encode(payload, SECRET_HASH, ALGORITHM)
    end

    def self.decode(token)
      decoded_token = JWT.decode(token, SECRET_HASH, ALGORITHM)
      decoded_token[0]
    end
  end
end
