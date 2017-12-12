require "rsa"

describe RSA do

  let(:encrypter){RSA.new}

  it"checks for encrypt only" do
    expect(encrypter.encrypt('Hola')).not_to eql('Hola')
  end

  it"checks for decrypt and encrypt" do
    expect(encrypter.decrypt(encrypter.encrypt('We done'))).to eql('We done')
  end

  it"checks encrypting and decrypting for long messages" do
    expect(encrypter.decrypt(encrypter.encrypt('I couldnt do the right class and class methods because I didnt get all the logic behind the RSA encrypting'))).to eql('I couldnt do the right class and class methods because I didnt get all the logic behind the RSA encrypting')
  end

  it"checks for numbers" do
    expect(encrypter.decrypt(encrypter.encrypt('10'))).to eql('10')
  end

  it"checks for long numbers" do
    expect(encrypter.decrypt(encrypter.encrypt('10123'))).to eql('10123')
  end



end
