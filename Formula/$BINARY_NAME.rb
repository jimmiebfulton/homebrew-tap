class BinaryName < Formula
  desc "$BINARY_DESCRIPTION"
  homepage "$BINARY_HOMEPAGE"
  verion "1.1.0"

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/v1.1.0/actions-playground-v1.1.0-linux-x86_64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/88668dbff12128deac51aace06d0697ce2902336d0d3947546204fc500bd6060"
    end
  end

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimmiebfulton/actions-playground/v1.1.0/actions-playground-v1.1.0-macos-arm64.tar.gz"
      sha256 "https://github.com/jimmiebfulton/actions-playground/7a3ddbac89c0c4df39c4291c74d0397121e799e40e7564f60fd7b3d336bf1e6b"
    end
  end

  def install
    bin.install "$BINARY_NAME"
  end

  test do
    system "#{bin}/$BINARY_NAME --version"
  end

end