require 'formula'

class Muttqt < Formula
  homepage 'https://github.com/tgray/muttqt'
  url 'https://github.com/tgray/muttqt/archive/0.1.0.tar.gz'
  sha1 '6df69a2e0c3548655e682eee7c848e7271e02b5f'
  version '0.1.0'

  def install
    system "make"
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "muttqt -V"
  end
end
