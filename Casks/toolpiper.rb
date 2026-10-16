cask "toolpiper" do
  version "0.0.10-beta,65"
  sha256 "64138d9725fae55cfa784ad0df73c6ba2377737fa10c78e71b76f35102336824"

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
