
class contrast < Formula
    desc "checks plumbing tests"
    homepage "https://www.contrastsecurity.com/"
    license "MIT"
  
    if OS.mac?
      url ""
      sha256 ""
      
    elsif OS.linux?
      if Hardware::CPU.intel?
        url ""
        sha256 ""
      end
    end
  
    def install
      bin.install (OS.linux? ? "contrast-linux" : "contrast-macos") => "contrast"
    end
  end
  