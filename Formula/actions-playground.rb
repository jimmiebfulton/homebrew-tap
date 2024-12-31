class ActionsPlayground < Formula
  desc "Actions Playground"
  homepage "https://github.com/jimmiebfulton/actions-playground"
  version "1.2.2"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/releases/download/v1.2.2/actions-playground-v1.2.2-linux-x86_64.tar.gz"
      sha256 "d25f55e97a905c7e1cf527ddd90e99510df0ae6c13e23c566b5f361aafb33a1a"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/releases/download/v1.2.2/actions-playground-v1.2.2-macos-arm64.tar.gz"
      sha256 "d11409808c0c1aa4f39cb1bf4886f0160f1e42edcd3d5049ec935ff3c4474f8a"
    end
  end

  def install
    bin.install "actions-playground"
  end

  test do
    system "#{bin}/actions-playground --version"
  end

end