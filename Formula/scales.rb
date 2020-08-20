class Scales < Formula
  desc "CLI utility to calculate major and minor scales from a root note"
  homepage "https://github.com/ValentinaServile/scales"
  url "https://github.com/ValentinaServile/scales/releases/download/0.1/scales-0.1.tar.gz"
  sha256 "5edaffffcf0bd3e3f059a73757d004e8eb0a77ea28a0de74e5d01d7fad0b22bc"
  license "https://github.com/ValentinaServile/scales/blob/master/LICENSE.md"
  version "0.0.1"

  def install

    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"scales")
  end

end
