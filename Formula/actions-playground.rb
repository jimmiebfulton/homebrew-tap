class ActionsPlayground < Formula
  desc "Actions Playground"
  homepage "https://github.com/jimmiebfulton/actions-playground"
  verion "1.0.18"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "v1.0.18/actions-playground-v1.0.18-linux-x86_64.tar.gz"
      sha256 "d36b07c3a2697bb06aecb4bee90d680a7dae5ae0f72742456cd91805b17dba4a"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "v1.0.18/actions-playground-v1.0.18-macos-arm64.tar.gz"
      sha256 "37534ab4fdae9a2a18749a666d0bf3ecf926ffca6291c2798cca61c8ffce25b7"
    end
  end

  def install
    bin.install "actions-playground"
  end

  test do
    system "#{bin}/actions-playground --version"
  end

end