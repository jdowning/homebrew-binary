require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.1'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.1_darwin_amd64.zip'
    sha1 '300ac756104830c3c6e3a3a45d79bfdd83c3b55e'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.1_darwin_386.zip'
    sha1 '4ab38b4c6f402ad9d276787304b97bc3933fd8f8'
  end

  def install
    bin.install Dir['*']
  end
end
