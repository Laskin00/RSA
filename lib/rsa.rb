require 'openssl'

class RSA
  def new_key
    @public_key = OpenSSL::PKey::RSA.new(2048)
    @cipher =  OpenSSL::Cipher::Cipher.new('des3')
    @private_key = rsa_key.to_pem(cipher,'efu311')
    @public_key = rsa_key.public_key.to_pem
    @key_pair = private_key + public_key
  end


  def encrypt message
    @public_key.public_encrypt(message)
  end

  def decrypt message
    @public_key.public_decrypt(message)
  end

end
