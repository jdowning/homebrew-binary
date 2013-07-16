require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.2.0'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.2.0_darwin_amd64.zip'
    sha1 '7cc9dc83586fdfab69b931baa5bb876b3ebfda6a'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.2.0_darwin_386.zip'
    sha1 'cd19471e89cebdd6ad7d51178082b1151c6893ba'
  end

  def install
    bin.install Dir['*']
  end
end
