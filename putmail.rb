require 'formula'

class Putmail < Formula
  url 'https://github.com/tgray/putmail/tarball/v1.4.1'
  homepage 'https://github.com/tgray/putmail/'
  head 'git://github.com/tgray/putmail.git'
  
  unless ARGV.build_head?
    sha256 '1f4e6f33496100ad89b8f029621fb78ab2f80258994c7cd8687fd46730df45be'
  end

  def install
    system "export PREFIX=#{prefix};./install.sh"
  end
end
