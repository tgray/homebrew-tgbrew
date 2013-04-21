require 'formula'

class Mymutt < Formula
  homepage 'http://www.mutt.org/'
  head '~src/hg/mutt', :using => :hg

  depends_on 'tokyo-cabinet'

  def caveats; <<-EOS.undent
    Patches only work for release versions.  They will be disabled if building
    HEAD.
    EOS
  end

  def install
    args = ["--disable-dependency-tracking",
            "--disable-warnings",
            "--prefix=#{prefix}",
            "--with-ssl",
            "--with-sasl",
            "--with-gnutls",
            "--with-gss",
            "--enable-imap",
            "--enable-smtp",
            "--enable-pop",
            "--enable-hcache",
            "--with-tokyocabinet",
            "--with-regex",
            # This is just a trick to keep 'make install' from trying to chgrp
            # the mutt_dotlock file (which we can't do if we're running as an
            # unpriviledged user)
            "--with-homespool=.mbox"
      ]

    if ARGV.include? '--enable-debug'
      args << "--enable-debug"
    else
      args << "--disable-debug"
    end

    system "./prepare", *args
    system "make install"
  end
end
