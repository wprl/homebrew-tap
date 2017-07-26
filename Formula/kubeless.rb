class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless"
  version "0.0.18"

  url "https://github.com/kubeless/kubeless/releases/download/0.0.18/kubeless_darwin-amd64.zip"
  sha256 "b4a60475893a60e6c653444d4e20db424a42d17127a57a3d01e86d71ff5f3f67"

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
