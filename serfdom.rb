require 'formula'

class Serfdom < Formula
  homepage 'http://www.serfdom.io'
  version '0.3.0'

  depends_on :arch => :intel

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/serf/0.3.0_darwin_amd64.zip'
    sha256 'd0f26a2344ad1b0357ddfe7074350aab4bbe4b7f36ec6b3cda96b07c6490bd36'
  else
    url 'https://dl.bintray.com/mitchellh/serf/0.3.0_darwin_386.zip'
    sha256 '4e31c39abd8d807e821f67ca01e77a59c3fda016fd88dd9e64505b9791df6f89'
  end

  def install
    bin.install 'serf'
  end
end
