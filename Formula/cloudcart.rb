class Cloudcart < Formula
  desc "AI-first developer CLI for managing CloudCart e-commerce stores"
  homepage "https://github.com/cloudcart/cli"
  url "https://registry.npmjs.org/@cloudcart/cli/-/cli-2.0.1.tgz"
  sha256 "cbd8f5ccfd6c3cd626d0927997e85517298040447f6605e5f4795eaac529213e"
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
