require 'openssl'
require 'base64'

  class RSA
    def initialize
      new_key
    end

    def encrypt message
      @public = OpenSSL::PKey::RSA.new File.read 'public_key.pem'
      @public.public_encrypt(message)
    end

    def decrypt message
      @private = OpenSSL::PKey::RSA.new File.read 'private_key.pem'
      @private.private_decrypt(message)
    end

    def new_key
      key = OpenSSL::PKey::RSA.new 2048

      @private = open 'private_key.pem', 'w' do |io| io.write key.to_pem end
      @public = open 'public_key.pem', 'w' do |io| io.write key.public_key.to_pem end
    end

  end
