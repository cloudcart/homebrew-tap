class Cloudcart < Formula
  desc "AI-first developer CLI for managing CloudCart e-commerce stores"
  homepage "https://github.com/cloudcart/cli"
  url "https://registry.npmjs.org/@cloudcart/cli/-/cli-0.1.4.tgz"
  sha256 "89a6b349ae8e3c307a1b0e85a56350add584a66cf95022bd4890ac75bb8fe825"
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
