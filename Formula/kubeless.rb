class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless/kubeless"
  version "v0.2.4"

  url "https://github.com/kubeless/kubeless/releases/download/v0.2.4/kubeless_darwin-amd64.zip"
  sha256 "141ee691480f303a64aba70381a3cde5d7444c068bb5dfda7328e68ed72ed0a2"

  bottle :unneeded

  def install
    bin.install "kubeless_darwin-amd64/kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `curl -sL https://github.com/kubeless/kubeless/releases/download/v0.2.4/kubeless-v0.2.4.yaml | kubectl create -f -`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
