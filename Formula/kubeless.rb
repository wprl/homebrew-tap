class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless/kubeless"
  version "v0.3.0"

  url "https://github.com/kubeless/kubeless/releases/download/v0.3.0/kubeless_darwin-amd64.zip"
  sha256 "284ba87243891eb9de0c6353ea25046e019e9b4e7d701aa7e0a774ca8c94fd19"

  bottle :unneeded

  def install
    bin.install "kubeless_darwin-amd64/kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `curl -sL https://github.com/kubeless/kubeless/releases/download/v0.3.0/kubeless-v0.3.0yaml | kubectl create -f -`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
