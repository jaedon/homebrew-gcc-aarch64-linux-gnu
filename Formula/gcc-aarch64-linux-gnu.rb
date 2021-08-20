class GccAarch64LinuxGnu < Formula
  desc "Pre-built ARM/Linux cross compilers for macOS"
  homepage "https://github.com/jaedon/homebrew-gcc-aarch64-linux-gnu"
  url "https://github.com/jaedon/homebrew-gcc-aarch64-linux-gnu/releases/download/gcc-11-aarch64-linux-gnu/gcc-aarch64-linux-gnu--11.2.0.big_sur.bottle.tar.gz"
  sha256 "516a8f044d70157e625cb3c04449f376e7fbf245d9f1ee9144fe19eb46aea935"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }

  keg_only :versioned_formula

  def install
    prefix.install Dir["11.2.0/*"]
  end

  test do
    system bin/"aarch64-linux-gnu-gcc", "-v"
  end
end
