require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.1.4_darwin_amd64.zip'
    sha1 'c70deaf2b2532414171c8ceb5df6f845d45ad77a'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.1.4_darwin_386.zip'
    sha1 '082d3e510f09467a9e1bc6439e0a061195dbb5ff'
  end

  def install
    bin.install Dir['*']
  end
end
