class Scales < Formula
  desc "CLI utility to calculate major and minor scales from a root note"
  homepage "https://github.com/ValentinaServile/scales"
  url "https://github.com/ValentinaServile/scales/releases/download/v1.0.0/scales-1.0.0.tar.gz"
  sha256 "24e2f476f5f03ab8c66e35b21246fe2c6e12e54d8778d174e46bc6dac7216713"
  license "https://github.com/ValentinaServile/scales/blob/master/LICENSE.md"
  version "1.0.0"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"scales")
  end

end
