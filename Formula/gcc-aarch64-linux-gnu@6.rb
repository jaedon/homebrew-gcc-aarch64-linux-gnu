class GccAarch64LinuxGnuAT6 < Formula
  desc "Pre-built ARM/Linux cross compilers for macOS"
  homepage "https://github.com/jaedon/homebrew-gcc-aarch64-linux-gnu"
  url "https://github.com/jaedon/homebrew-gcc-aarch64-linux-gnu/releases/download/gcc-6-aarch64-linux-gnu/gcc-aarch64-linux-gnu--6.5.0.big_sur.bottle.tar.gz"
  sha256 "6b05b8f10f465f9356728d963c5b2eda7979a0792c2594b2c83063239aa48105"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }

  keg_only :versioned_formula

  def install
    prefix.install Dir["6.5.0/*"]
  end

  test do
    system bin/"aarch64-linux-gnu-gcc", "-v"
  end
end
