require 'formula'

class Bogofilter < Formula
  url 'http://sourceforge.net/projects/bogofilter/files/bogofilter-current/bogofilter-1.2.2/bogofilter-1.2.2.tar.bz2'
  homepage ''
  md5 '4bcabdf8c5e7efefcb508eda7e80eebc'

  depends_on '# berkeley-db'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # , "--with-database=sqlite"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
