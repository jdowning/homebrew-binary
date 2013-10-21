require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.10'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.10_darwin_amd64.zip'
    sha256 '233d5e0ae73d6cc5955b719bcb4fa9067494659d5416bab7ac4f12d1d29c5897'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.10_darwin_386.zip'
    sha256 '322cbf6ca112eb3b319eb6a13ce9d235ee71a1d05e1454ba6da8fc61b27f4a56'
  end

  def install
    bin.install Dir['*']
  end
end
