class ActionsPlayground < Formula
  desc "Actions Playground"
  homepage "https://github.com/jimmiebfulton/actions-playground"
  version "1.2.3"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/releases/download/v1.2.3/actions-playground-v1.2.3-linux-x86_64.tar.gz"
      sha256 "ecc8b5d02dd67162dcc25c59fd9e236d848eb746a1418ad7106f16d21b9e4691"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/releases/download/v1.2.3/actions-playground-v1.2.3-macos-arm64.tar.gz"
      sha256 "f73ca87dba1bb717e9d54100829cfda1b9284e38907139e1dbdd0113a1c2b43c"
    end
  end

  def install
    bin.install "actions-playground"
  end

  test do
    system "#{bin}/actions-playground --version"
  end

end