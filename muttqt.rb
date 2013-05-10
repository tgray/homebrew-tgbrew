require 'formula'

class Muttqt < Formula
  homepage 'https://github.com/tgray/muttqt'
  url 'https://github.com/tgray/muttqt/archive/0.1.0.tar.gz'
  sha1 '97a1de6b8001e9c4b11386a58e3305b4151b5b34'
  version '0.1.0'

  def install
    system "make"
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "muttqt -V"
  end
end
