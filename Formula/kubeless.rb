class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless"
  version "0.0.15"

  url "https://github.com/kubeless/kubeless/releases/download/0.0.15/kubeless_darwin-amd64.zip"
  sha256 "bb1aa1dec0da9dc9f746869ac4f5d52db794f0e7cfea29d99dbf3190871b874a"

  bottle :unneeded

  def install
    bin.install "kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `kubectl create -f https://github.com/kubeless/kubeless/releases/download/0.0.15/kubeless-0.0.15.yaml`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
