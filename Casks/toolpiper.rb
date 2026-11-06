cask "toolpiper" do
  version "0.0.10-beta,68"
  sha256 "426c3982e649f722a9466ef975920c6295b435ce0fd0af9c55c963be9cd12e32"

  url "https://releases.modelpiper.com/ToolPiper-#{version.csv.first}-#{version.csv.second}.dmg"
  name "ToolPiper"
  desc "Local AI toolkit and MCP server for coding agents"
  homepage "https://modelpiper.com/toolpiper"

  livecheck do
    url "https://releases.modelpiper.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "ToolPiper.app"

  uninstall quit: "com.toolpiper.app"

  zap trash: [
    "~/.local/bin/claude-tp",
    "~/.toolpiper",
    "~/Library/Application Support/ToolPiper",
    "~/Library/Caches/com.toolpiper.app",
    "~/Library/Caches/com.toolpiper.app.sparkle",
    "~/Library/HTTPStorages/com.toolpiper.app",
    "~/Library/HTTPStorages/com.toolpiper.app.binarycookies",
    "~/Library/Logs/ToolPiper",
    "~/Library/Preferences/com.toolpiper.app.plist",
    "~/Library/Saved Application State/com.toolpiper.app.savedState",
    "~/Library/WebKit/com.toolpiper.app",
  ]
end
