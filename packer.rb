require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.1.5'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.1.5_darwin_amd64.zip'
    sha1 '4696d29061e2483352f8a446c9228a726cc77950'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.1.5_darwin_386.zip'
    sha1 'bf79b92b5296625f4dec5edd4153f88af480901d'
  end

  def install
    bin.install Dir['*']
  end
end
