class GccAarch64LinuxGnu < Formula
  desc "Pre-built ARM/Linux cross compilers for macOS"
  homepage "https://github.com/jaedon/homebrew-gcc-aarch64-linux-gnu"
  url "https://github.com/jaedon/homebrew-gcc-aarch64-linux-gnu/releases/download/gcc-12-aarch64-linux-gnu/gcc-aarch64-linux-gnu--12.1.0.big_sur.bottle.tar.gz"
  sha256 "9c88a6988949350fa4a3b0b1a0b4e2717c9c6bd44d6c52381c5000d63edaa374"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }

  keg_only :versioned_formula

  def install
    prefix.install Dir["12.1.0/*"]
  end

  test do
    system bin/"aarch64-linux-gnu-gcc", "-v"
  end
end
