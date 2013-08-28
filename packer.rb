require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.3.5'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.3.5_darwin_amd64.zip'
    sha1 '1629b0e9215d6d87e8303ecf90fdb5489f3d47c8'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.3.5_darwin_386.zip'
    sha1 'd018414acbe511a97162133486e6c74cf1220b44'
  end

  def install
    bin.install Dir['*']
  end
end
