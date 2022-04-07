
class Contrast < Formula
    desc "checks plumbing tests"
    homepage "https://www.contrastsecurity.com/"
    license "MIT"
  
    if OS.mac?
      url "https://github.com/Contrast-Security-OSS/homebrew-contrast/releases/download/v0.0.0/contrast-macos"
      sha256 "1cb21076b55e9a6dc2688b72ccccd6cc2d39ac884bf3c73b5b915c1340b816f0"
      
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Contrast-Security-OSS/contrast/releases/download/v0.0.0/contrast-linux"
        sha256 "41234350aa93ba4b5a53492c928aaeee649bbdba4dc6802482722685ba95b355"
      end
    end
  
    def install
      bin.install (OS.linux? ? "contrast-linux" : "contrast-macos") => "contrast"
    end
  end
  