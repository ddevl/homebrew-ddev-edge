# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddev < Formula
  desc "DDEV"
  homepage "https://github.com/ddev/ddev"
  version "1.22.0-beta3"
  license "Apache 2"

  depends_on "mkcert"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ddev/ddev/releases/download/v1.22.0-beta3/ddev_macos-amd64.v1.22.0-beta3.tar.gz"
      sha256 "9c97807f176d819185fbadbd94128da6e884199962c60e7ce71769032666ebf0"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ddev/ddev/releases/download/v1.22.0-beta3/ddev_macos-arm64.v1.22.0-beta3.tar.gz"
      sha256 "c10b8774f184aa835f851da2b6610e65f91f32bf6ae61687ad9d2df3f96ceed2"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ddev/ddev/releases/download/v1.22.0-beta3/ddev_linux-arm64.v1.22.0-beta3.tar.gz"
      sha256 "e2b3ad5eeab314b500ad858f81ee24e9999ed87de460e6cf7623556572ab7338"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ddev/ddev/releases/download/v1.22.0-beta3/ddev_linux-amd64.v1.22.0-beta3.tar.gz"
      sha256 "a00cdc935e7cf2bce118634aca976e68b0a6fc3288678416ee583e0ce31d3b04"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
  end

  head "https://github.com/ddev/ddev.git", branch: "master"
  depends_on "go" => :build
  depends_on "make" => :build

  test do
    system "#{bin}/ddev --version"
  end
end
