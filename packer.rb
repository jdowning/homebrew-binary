require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.0'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.0_darwin_amd64.zip'
    sha1 'eae4e660632ffcfcbc297a4becb75b49c31ecc7b'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.0_darwin_386.zip'
    sha1 'dcbe575176157db281019d9ec3b89c9157bbcdc1'
  end

  def install
    bin.install Dir['*']
  end
end
