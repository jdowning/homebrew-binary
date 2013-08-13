require 'formula'

class Perforce < Formula
  homepage 'http://www.perforce.com/'

  if MacOS.prefer_64_bit?
    url 'http://filehost.perforce.com/perforce/r13.1/bin.darwin90x86_64/p4'
    version '2013.1.659207-x86_64'
    sha1 '77737480a93bb68d4874c4d242e42680cbd045e5'
  else
    url 'http://filehost.perforce.com/perforce/r13.1/bin.darwin90x86/p4'
    version '2013.1.659207-x86'
    sha1 '4913a1d2dd9758190ede81d950d27d58ae4c2fce'
  end

  def install
    bin.install 'p4'
  end
end
