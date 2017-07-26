class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless"
  version "0.0.18"

  url "https://github.com/kubeless/kubeless/releases/download/0.0.18/kubeless_darwin-amd64.zip"
  sha256 "404b5c4ea046409e5781b33b5f3a143ce78c7bc40bf5a56c646253ef5c8c45f5"

  bottle :unneeded

  def install
    bin.install "kubeless_darwin-amd64/kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `curl -sL https://github.com/kubeless/kubeless/releases/download/0.0.18/kubeless-0.0.18.yaml | kubectl create -f -`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
