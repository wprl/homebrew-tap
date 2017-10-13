class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless/kubeless"
  version "v0.2.3"

  url "https://github.com/kubeless/kubeless/releases/download/v0.2.3/kubeless_darwin-amd64.zip"
  sha256 "0d8c19d8d08858c1508dfa892b11ee37f128c70563c2e7569c66fbde847844bf"

  bottle :unneeded

  def install
    bin.install "kubeless_darwin-amd64/kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `curl -sL https://github.com/kubeless/kubeless/releases/download/v0.2.3/kubeless-v0.2.3.yaml | kubectl create -f -`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
