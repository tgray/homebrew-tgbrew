require 'formula'

class Muttqt < Formula
  homepage 'https://github.com/tgray/muttqt'
  url 'https://github.com/tgray/muttqt/archive/0.1.0b1.tar.gz'
  sha1 'f409ec2a84ec0f6e00874af5746c28545926e3d0'

  def install
    system "make"
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "muttqt -V"
  end
end
