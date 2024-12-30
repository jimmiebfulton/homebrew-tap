class Archetect < Formula
  desc "A powerful code generator"
  homepage "https://archetect.github.io"
  verion "2.0.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "Linux x86_64 Archive"
      sha256 "Linux x86_64 SHA256"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "MacOS amd64 Archive"
      sha256 "MacOS amd64 SHA256"
    end
  end

  def install
    bin.install "archetect"
  end

  test do
    system "#{bin}/archetect --version"
  end

end