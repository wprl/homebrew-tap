class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless"
  version "0.0.13"

  url "https://github.com/kubeless/kubeless/releases/download/0.0.13/kubeless_darwin-amd64.zip"
  sha256 "407c2b211ee244ffad4a156ef148165087726d82829587fd6e5e908f21d9807f"

  bottle :unneeded

  def install
    bin.install "kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
