class D < Formula
  desc "Developer Tools"
  homepage "https://github.com/jimmiebfulton/developer-tools"
  version "0.1.3"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/developer-tools/releases/download/v0.1.3/d-v0.1.3-linux-x86_64.tar.gz"
      sha256 "13f78dca924fc102d53dc822e98a8518249f737512c6562ba4a80ddc028cf9c4"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/developer-tools/releases/download/v0.1.3/d-v0.1.3-macos-arm64.tar.gz"
      sha256 "6a88fbf66fee5c664cee7664a5fc07fbba5f2fcf33c05c82942db5a81cd2fa31"
    end
  end

  def install
    bin.install "d"
  end

  test do
    system "#{bin}/d --version"
  end

end