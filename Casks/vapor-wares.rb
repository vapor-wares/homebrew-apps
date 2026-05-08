cask "vapor-wares" do
  version "0.1.0"
  sha256 :no_check # replace with sha256 of notarized DMG

  url "https://github.com/vapor-wares/apps/releases/download/v#{version}/VaporWares-#{version}.dmg"
  name "Vapor Wares"
  desc "The Mac app catalog that proves how hard shipping really is"
  homepage "https://vapor-wares.com"

  app "Vapor Wares.app"

  # Auto-update via Sparkle appcast
  # appcast "https://vapor-wares.com/appcast.xml"

  zap trash: [
    "~/Library/Application Support/com.vapor-wares.app",
    "~/Library/Preferences/com.vapor-wares.app.plist",
  ]
end
