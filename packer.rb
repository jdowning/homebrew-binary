require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.7'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.7_darwin_amd64.zip'
    sha1 '817b75c691062da9298cdc5eccc1e4037d3eb03f'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.7_darwin_386.zip'
    sha1 'cd9aabfe8411f7864f015c0f644588782e695c4f'
  end

  def install
    bin.install Dir['*']
  end
end
