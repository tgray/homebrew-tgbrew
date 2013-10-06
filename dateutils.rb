require 'formula'

class Dateutils < Formula
  homepage 'http://www.fresse.org/dateutils/'
  url 'https://bitbucket.org/hroptatyr/dateutils/downloads/dateutils-0.2.5.tar.xz'
  sha1 '47f2ba469daff7586d47473f54a77848b724ba45'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    system "dseq 2010-01-01 2010-01-10 --skip sat,sun"
    system "dconv 2012-03-04 -f '%Y-%m-%c-%w'"
    system "dtest today --gt 2010-01-01"
    system "dadd 2010-02-02 +4d"
    system "ddiff 2001-02-08 2001-03-02"
    system "echo 2012-03-01 | dgrep '<2012-03-04'"
    system "dround '2011-08-22' -1"
    system "strptime -i '%a, %b-%d/%Y' 'Mon, May-01/2000'"
  end
end
