class Kubeless < Formula
  desc "Kubernetes Native Serverless Framework"
  homepage "https://github.com/kubeless"
  version "v0.1.0"

  url "https://github.com/kubeless/kubeless/releases/download/v0.1.0/kubeless_darwin-amd64.zip"
  sha256 "c608cd63422c1e225b9f044b82ee98d71af3bd2c25de322fbe9c9aa51fba919f"

  bottle :unneeded

  def install
    bin.install "kubeless_darwin-amd64/kubeless"
  end

  def caveats; <<-EOS.undent
    To use kubeless you need a running Kubernetes cluster
    Try `kubectl version` to make sure you are ready
    Then launch the kubeless controller with:
    `curl -sL https://github.com/kubeless/kubeless/releases/download/v0.1.0/kubeless-v0.1.0.yaml | kubectl create -f -`
    EOS
  end

  test do
    system "kubeless", "version"
  end
end
