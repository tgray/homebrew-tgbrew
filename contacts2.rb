class Contacts2 < Formula
  desc "A command line interface to the macOS Address Book."
  homepage "https://github.com/tgray/contacts"
  url "https://github.com/tgray/contacts/archive/0.2.1.tar.gz"
  sha256 "2401697690751fa3c796f8b8fe0350f7d7977117cf6027b7ad4e80f5ceed8d5f"

  conflicts_with "contacts", :because => "contacts is no longer maintained and this formula replaces it."

  def install
    system "make"
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "contacts", "-v"
  end
end
