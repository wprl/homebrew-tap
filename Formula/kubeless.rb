class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless"
  version "0.0.20"

  url "https://github.com/kubeless/kubeless/releases/download/0.0.20/kubeless_darwin-amd64.zip"
  sha256 "8a0e20107b220d11a8d2d8a1b6830bf76a16254a7f8058609b05b8d0fa336de9"

  bottle :unneeded

  def install
    bin.install "kubeless_darwin-amd64/kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `curl -sL https://github.com/kubeless/kubeless/releases/download/0.0.20/kubeless-0.0.20.yaml | kubectl create -f -`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
