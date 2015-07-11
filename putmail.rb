require 'formula'

class Putmail < Formula
  url 'https://github.com/tgray/putmail/tarball/v1.4.1'
  homepage 'https://github.com/tgray/putmail/'
  head 'git://github.com/tgray/putmail.git'
  
  unless ARGV.build_head?
    sha256 '8ec2e774c3fb0c23dd768b24b43a97bdaf592bd4a396cb9256b6f924e938f643'
  end

  def install
    system "export PREFIX=#{prefix};./install.sh"
  end
end
