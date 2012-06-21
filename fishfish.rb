require 'formula'

class Fishfish < Formula
  homepage 'http://ridiculousfish.com/shell'

  url 'git://gitorious.org/fish-shell/fish-shell/fishfish.git',
      :tag => 'OpenBeta_r2'
  version 'OpenBeta_r2'

  head 'git://github.com/fish-shell/fish-shell.git',
       :branch => 'master'

  depends_on 'autoconf' => :build
  depends_on 'doxygen' => :build

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}", "--without-xsel"
    system "make install"
  end

  def caveats; <<-EOS.undent
    You will need to add:
      #{HOMEBREW_PREFIX}/bin/fish
    Interactively set your colors from a web page:
      fish_config
    Update man-page completions:
      fish_update_completions
    Make fish your default shell (after adding it to /etc/shells):
      chsh -s #{HOMEBREW_PREFIX}/bin/fish
    EOS
  end

  def test
    system "fish -c 'echo'"
  end
end
