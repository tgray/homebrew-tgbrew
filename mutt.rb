require 'formula'

class Mutt < Formula
  url 'ftp://ftp.mutt.org/mutt/devel/mutt-1.5.20.tar.gz'
  homepage 'http://www.mutt.org/'
  head 'http://dev.mutt.org/hg/mutt#HEAD', :using => :hg

  unless ARGV.build_head?
    md5 '027cdd9959203de0c3c64149a7ee351c'
  end

  depends_on 'tokyo-cabinet'

  def caveats; <<-EOS.undent
    Patches only work for release versions.  They will be disabled if building
    HEAD.
    EOS
  end

  def options
    [
      ['--sidebar-patch', "Apply sidebar (folder list) patch"],
      ['--enable-debug', "Build with debug option enabled"],
      ['--trash-patch', "Apply trash folder patch"]
    ]
  end

  def patches
    # Fix unsubscribe malformed folder
    # See: http://dev.mutt.org/trac/ticket/3389
    p = [ 'http://dev.mutt.org/hg/mutt/raw-rev/25e46aad362b' ]

    if ARGV.include? '--sidebar-patch'
      p << 'http://lunar-linux.org/~tchan/mutt/patch-1.5.20.sidebar.20090619.txt'
    end

    if ARGV.include? '--trash-patch'
      p <<  'http://trac.macports.org/export/69644/trunk/dports/mail/mutt-devel/files/patch-1.5.20.bk.trash_folder-purge_message.1'
    end

    # HEAD doesn't need patches
    return p unless ARGV.build_head?
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

    if ARGV.build_head?
      system "./prepare", *args
    else
      system "./configure", *args
    end
    system "make install"
  end
end
