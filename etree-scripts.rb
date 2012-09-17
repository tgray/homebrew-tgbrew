require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class EtreeScripts < Formula
  homepage 'http://sourceforge.net/projects/etree-scripts/'
  url 'http://sourceforge.net/projects/etree-scripts/files/latest/download'
  sha1 '4f7a9c1bbcb519d53441a5975869dc6901116ff9'
  version '3.1'


  def install
    # ENV.j1  # if your formula's build system can't parallelize

    # system "cmake", ".", *std_cmake_args
    system "perl Makefile.PL PREFIX=#{prefix}"
    system "make"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test etree-scripts`.
    system "false"
  end
end
