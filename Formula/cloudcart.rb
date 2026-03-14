class Cloudcart < Formula
  desc "AI-first developer CLI for managing CloudCart e-commerce stores"
  homepage "https://github.com/cloudcart/cli"
  url "https://registry.npmjs.org/@cloudcart/cli/-/cli-0.1.1.tgz"
  sha256 "2ad7a0a37cae105697cfbb1cf9ff0f5b2116ea9f36e0a044de45bead972e1c5f"
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
