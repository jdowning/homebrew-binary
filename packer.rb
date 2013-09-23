require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.8'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.8_darwin_amd64.zip'
    sha256 '758d48e98d060ee7616baa6bd04c50e365211bc59472436894090b0090dd86ad'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.8_darwin_386.zip'
    sha256 '53bf21932220f0faf06c296319f7f816460f9d0a88fba81de1bbf435923cd721'
  end

  def install
    bin.install Dir['*']
  end
end
