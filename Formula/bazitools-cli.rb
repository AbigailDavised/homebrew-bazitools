class BazitoolsCli < Formula
  desc "Authentic Chinese Astrology, Four Pillars (BaZi) and Classical Naming CLI"
  homepage "https://bazitools.com"
  url "https://registry.npmjs.org/cardworthscanner-cli/-/cardworthscanner-cli-1.0.2.tgz"
  sha256 "ca803e0fe17d3e0856bd7596b2cb2c8c0a9ce591f19dd409be774a0131a675de"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/bazitools-cli", "--help"
  end
end
