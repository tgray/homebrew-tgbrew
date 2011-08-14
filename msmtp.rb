require 'formula'

class Msmtp < Formula
  url 'http://downloads.sourceforge.net/project/msmtp/msmtp/1.4.24/msmtp-1.4.24.tar.bz2'
  homepage 'http://msmtp.sourceforge.net'
  head 'git://msmtp.git.sourceforge.net/gitroot/msmtp/msmtp', :using => :git

  unless ARGV.build_head?
    md5 '3ed704fbd3e7419cab5c65bb7928d9ba'
  end

  def options
    [['--with-macosx-keyring', "Support Mac OS X Keyring"]]
  end

  def install
    args = [ "--disable-dependency-tracking", "--prefix=#{prefix}" ]
    args << "--with-macosx-keyring" if ARGV.include? '--with-macosx-keyring'

    system "autoreconf -i" if ARGV.build_head?
    system "./configure", *args
    system "make install"
  end
end
