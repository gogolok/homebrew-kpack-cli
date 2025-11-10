  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/buildpacks-community/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.13.1/kp-darwin-amd64-0.13.1"
      sha256 "87d14771a07319c48a73c022a12e385f59ba515e02c7d859ef0c71fc002ba52e"
    elsif Hardware::CPU.arm?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.13.1/kp-darwin-arm64-0.13.1"
      sha256 "ed352dafffcbf60c1001b65585fe589b987b9146c1f93bafe12d2aaae20e8470"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.13.1/kp-linux-amd64-0.13.1"
      sha256 "c5b8a675f58489e77bb75c340c425568930ad694906dc3657abac566b06b0011"
    elsif Hardware::CPU.arm?
      url "https://github.com/buildpacks-commujnity/kpack-cli/releases/download/v0.13.1/kp-linux-arm64-0.13.1"
      sha256 "21ebaa7aadbde560e6b63314306e9c90a63bd1eca9d89da1c86491aecb0a0999"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

