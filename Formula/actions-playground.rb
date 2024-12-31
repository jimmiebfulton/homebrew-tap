class ActionsPlayground < Formula
  desc "Actions Playground"
  homepage "https://github.com/jimmiebfulton/actions-playground"
  version "1.1.3"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/downloads/v1.1.3/actions-playground-v1.1.3-linux-x86_64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/downloads/428a8e06bc85383b1cc277d92c9db9de429737cda2474573f45809fad5f034bd"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/downloads/v1.1.3/actions-playground-v1.1.3-macos-arm64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/downloads/15be208784b576b6a601ad268559da63a887e692b3bea64923f14d90085fb601"
    end
  end

  def install
    bin.install "actions-playground"
  end

  test do
    system "#{bin}/actions-playground --version"
  end

end