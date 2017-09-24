class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless"
  version "v0.2.0"

  url "https://github.com/kubeless/kubeless/releases/download/v0.2.0/kubeless_darwin-amd64.zip"
  sha256 "d757c14d6b112441dee1ab7e283777b19f42825d9e7adb76b684cb2d24218277"

  bottle :unneeded

  def install
    bin.install "kubeless_darwin-amd64/kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `curl -sL https://github.com/kubeless/kubeless/releases/download/v0.2.0/kubeless-v0.2.0.yaml | kubectl create -f -`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
