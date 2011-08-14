require 'formula'

class Putmail < Formula
  url 'https://github.com/tgray/putmail/tarball/v1.4.1'
  homepage 'https://github.com/tgray/putmail/'
  head 'git://github.com/tgray/putmail.git'
  
  unless ARGV.build_head?
    md5 '30414407ff040091d55f940df195c6c2'
  end

  def install
    system "export PREFIX=#{prefix};./install.sh"
  end
end
