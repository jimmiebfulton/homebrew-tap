class ActionsPlayground < Formula
  desc "Actions Playground"
  homepage "https://github.com/jimmiebfulton/actions-playground"
  version "1.1.2"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/v1.1.2/actions-playground-v1.1.2-linux-x86_64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/9c83d3728f9705a630ba90cc9cca89268954a2014b244baf99471c9ff852694d"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/v1.1.2/actions-playground-v1.1.2-macos-arm64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/e42d62c51c38ee555f9e1225fe606df9cd85f8d562728d89bd46d1b6b947fd7e"
    end
  end

  def install
    bin.install "actions-playground"
  end

  test do
    system "#{bin}/actions-playground --version"
  end

end