require "rsa"

describe RSA do
  let(:encrypter){RSA.new}

  it"checks encrypting and decrypting" do
    expect(encrypter.decrypt(encrypter.encrypt('We done'))).to eql('We done')
  end

end
