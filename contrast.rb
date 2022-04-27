
class Contrast < Formula
    desc "checks plumbing tests"
    homepage "https://www.contrastsecurity.com/"
    license "MIT"
  
    if OS.mac?
      url "https://github.com/Contrast-Security-OSS/homebrew-contrast/releases/download/v1.0.0/contrast-macos"
      sha256 "a7c1b524d7f6056acaa26caa0a03294154b7daa0f0fd14e03bb5e2adb6833dd2"
      
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Contrast-Security-OSS/contrast/releases/download/v1.0.0/contrast-linux"
        sha256 "901ad995daa47e97ee93efcca5735911c1b9409683908a3dace65bf3f647edac"
      end
    end
  
    def install
      bin.install (OS.linux? ? "contrast-linux" : "contrast-macos") => "contrast"
    end
  end
  