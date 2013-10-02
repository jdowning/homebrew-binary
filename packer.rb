require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.9'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.9_darwin_amd64.zip'
    sha256 '67464866bbfd21f7caea3c618bdd2a23be66293543adadf81802d6faf16ff29c'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.9_darwin_386.zip'
    sha256 '35adf1a41040efaede654a8108b3f8ecaaa20658f84828600afcba9bbd702c7a'
  end

  def install
    bin.install Dir['*']
  end
end
