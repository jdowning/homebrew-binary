require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.4'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.4_darwin_amd64.zip'
    sha1 'aafeb17bd69f4bfcab94bfb32f4248c8819d3c3c'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.4_darwin_386.zip'
    sha1 '5aa0ed435d48bc10bcb4e9c8b02af0bf842ab236'
  end

  def install
    bin.install Dir['*']
  end
end
