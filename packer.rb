require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.11'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.11_darwin_amd64.zip'
    sha256 'fc226df5dbfb189e8a1e948a2e9c12d2918001374dd3833088dd5eedd0b6fcf1'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.11_darwin_386.zip'
    sha256 '12dc9435ef062757dd0a90b1bad2fe06e7e72378d8f33275c3143ab7cd320770'
  end

  def install
    bin.install Dir['*']
  end
end
