class ActionsPlayground < Formula
  desc "Actions Playground"
  homepage "https://github.com/jimmiebfulton/actions-playground"
  version "1.2.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/release/download/v1.2.0/actions-playground-v1.2.0-linux-x86_64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/release/download/ce948ac7b666a8a7551d59ea04638195237a4d3d73c0586822329a38146ebd0d"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/release/download/v1.2.0/actions-playground-v1.2.0-macos-arm64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/release/download/0c4d4e7792436db15a67ee5f2f840aac57f647fd78f362457780eeeedef27a46"
    end
  end

  def install
    bin.install "actions-playground"
  end

  test do
    system "#{bin}/actions-playground --version"
  end

end