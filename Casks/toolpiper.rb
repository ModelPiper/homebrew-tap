cask "toolpiper" do
  version "0.0.9-beta,63"
  sha256 "0aabb0423fa5adaf3409ba2a40514d39d711af4dec0bb4e4ef8c05a7dbf1196c"

  url "https://releases.modelpiper.com/ToolPiper-#{version.csv.first}-#{version.csv.second}.dmg"
  name "ToolPiper"
  desc "Local AI toolkit and MCP server for coding agents"
  homepage "https://modelpiper.com/toolpiper"

  livecheck do
    url "https://releases.modelpiper.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

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
