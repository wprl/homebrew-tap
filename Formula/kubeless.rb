class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless"
  version "0.0.16"

  url "https://github.com/kubeless/kubeless/releases/download/0.0.16/kubeless_darwin-amd64.zip"
  sha256 "c9a9b401021e106df7780318b4158113e22145a0f827d30638e6b781b56afe7c"

  bottle :unneeded

  def install
    bin.install "kubeless_darwin-amd64/kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `kubectl create -f https://github.com/kubeless/kubeless/releases/download/0.0.16/kubeless-0.0.16.yaml`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
