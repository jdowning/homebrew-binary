require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.2'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.2_darwin_amd64.zip'
    sha1 'bf81a81250044d69a4a867bbaf4d08a24ab89b82'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.2_darwin_386.zip'
    sha1 '8de8c430b4f0b65e2ffd1cac473de08270021c49'
  end

  def install
    bin.install Dir['*']
  end
end
