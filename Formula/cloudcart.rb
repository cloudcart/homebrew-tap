class Cloudcart < Formula
  desc "AI-first developer CLI for managing CloudCart e-commerce stores"
  homepage "https://github.com/cloudcart/cli"
  url "https://registry.npmjs.org/@cloudcart/cli/-/cli-0.3.0.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
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
