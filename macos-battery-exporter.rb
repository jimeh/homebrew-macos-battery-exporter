# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MacosBatteryExporter < Formula
  desc "Prometheus exporter for detailed battery metrics on macOS."
  homepage "https://github.com/jimeh/macos-battery-exporter"
  version "0.0.2"
  license "MIT"
  depends_on :macos

  on_macos do
    url "https://github.com/jimeh/macos-battery-exporter/releases/download/v0.0.2/macos-battery-exporter-0.0.2_darwin_universal.tar.gz"
    sha256 "a8f321a1f416cf52051a7decd3f9a496c8608ea677942478b1eea74f8308d9d3"

    def install
      bin.install "macos-battery-exporter"
    end
  end

  service do
    run [bin/"macos-battery-exporter"]
  end

  test do
    system "#{bin}/macos-battery-exporter -v"
  end
end
