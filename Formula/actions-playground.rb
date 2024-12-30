class ActionsPlayground < Formula
  desc "Actions Playground"
  homepage "https://github.com/jimmiebfulton/actions-playground"
  verion "1.1.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/v1.1.1/actions-playground-v1.1.1-linux-x86_64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/d38ce3e742db66684bead986078526895e7b68960aaec295c25abe2987c254af"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/v1.1.1/actions-playground-v1.1.1-macos-arm64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/60cf1b8f6752bdf7fbb45b35d0c6982248219ac5890a86403b52259dbd1a3f6e"
    end
  end

  def install
    bin.install "actions-playground"
  end

  test do
    system "#{bin}/actions-playground --version"
  end

end