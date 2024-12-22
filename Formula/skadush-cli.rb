require "formula"
require_relative "../custom_download_strategy.rb"

class SkadushCli < Formula
    desc "Skadush's super secret aliases"
    homepage "https://https://github.com/mskadush"
    url "https://github.com/mskadush/skadush-cli/archive/refs/tags/1.0.1.tar.gz", :using => GitHubPrivateRepositoryDownloadStrategy
    # sha256 "<SHA256 CHECKSUM>"
    head "https://github.com/mskadush/skadush-cli.git"
  
    def install
        # build/distributions/cli-1.1-SNAPSHOT/bin/cli
        bin.install "app/cli-1.1-SNAPSHOT/scripts/cli" => "skadush-cli"
    end
  
    # Homebrew requires tests.
    test do
      assert_match "version: 1.x.x", shell_output("#{bin}/skadush-cli", 0)
    end
  end