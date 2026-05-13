class Cloudcart < Formula
  desc "AI-first developer CLI for managing CloudCart e-commerce stores"
  homepage "https://github.com/cloudcart/cli"
  url "https://registry.npmjs.org/@cloudcart/cli/-/cli-1.0.2.tgz"
  sha256 "142f77ea6edcb212ca8034526045990897cbde1666ec036aa518cb54111377c1"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/cloudcart"
  end

  test do
    assert_match "cloudcart", shell_output("#{bin}/cloudcart --version")
  end
end
