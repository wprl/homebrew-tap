class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless/kubeless"
  version "v0.2.1"

  url "https://github.com/kubeless/kubeless/releases/download/v0.2.1/kubeless_darwin-amd64.zip"
  sha256 "91eb8a94cc15ced6e47d821c513f4fcdece47b918c509b79ff9d578e0196a011"

  bottle :unneeded

  def install
    bin.install "kubeless_darwin-amd64/kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `curl -sL https://github.com/kubeless/kubeless/releases/download/v0.2.1/kubeless-v0.2.1.yaml | kubectl create -f -`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
