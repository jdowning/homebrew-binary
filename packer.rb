require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.2.1'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.2.1_darwin_amd64.zip'
    sha1 'ea834b4a14b52821718de5f333cfa3f32af9078c'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.2.1_darwin_386.zip'
    sha1 '73c33311a68743eaaf40adffef985cb484e1f8fc'
  end

  def install
    bin.install Dir['*']
  end
end
