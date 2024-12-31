class ActionsPlayground < Formula
  desc "Actions Playground"
  homepage "https://github.com/jimmiebfulton/actions-playground"
  version "1.2.1"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/release/download/v1.2.1/actions-playground-v1.2.1-linux-x86_64.tar.gz"
      sha256 "d90d92f9d3b523587930ece25e52059759b96713bc577a1040a64e180d385cb3"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/release/download/v1.2.1/actions-playground-v1.2.1-macos-arm64.tar.gz"
      sha256 "7881ecd7144de3ad2791fca5dc61d2d68dade344ab551973631d6b90a471fd66"
    end
  end

  def install
    bin.install "actions-playground"
  end

  test do
    system "#{bin}/actions-playground --version"
  end

end