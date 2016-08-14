require 'formula'

class Muttqt < Formula
  homepage 'https://github.com/tgray/muttqt'
  url 'https://github.com/tgray/muttqt/archive/0.1.0.tar.gz'
  sha256 '2bdd888fa6fb95e0f96e08090595c8c94e0913e9db672aa863cb2da576794fda'
  version '0.1.0'

  def install
    system "make"
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "muttqt -V"
  end
end
