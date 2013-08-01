require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.2.2'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.2.2_darwin_amd64.zip'
    sha1 '05cc32db261fe80f1b342850ade2c35f85613936'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.2.2_darwin_386.zip'
    sha1 'c0d55ed17ae97f838c13059dccfdf87d9f2bf6d8'
  end

  def install
    bin.install Dir['*']
  end
end
