cask "vapor-wares" do
  version "0.2.1"
  sha256 "8f775b8ec5280bab9e34166ac5dfa9cf4096aafb3812df9e79b21485ddb7c2de"

  url "https://vapor-wares.pages.dev/releases/VaporWares-#{version}.zip"
  name "Vapor Wares"
  desc "The Mac app catalog that proves how hard shipping really is"
  homepage "https://vapor-wares.pages.dev"

  # Bundle name inside the published zip is the build product name.
  # Rename-at-publish to "Vapor Wares.app" is an open publish-tool follow-up.
  app "vapor-wares.macos.release.app"

  # Auto-update via Sparkle appcast - per-app feed
  appcast "https://vapor-wares.pages.dev/appcast/vapor-wares.xml"

  zap trash: [
    "~/Library/Application Support/me.rismay.vapor-wares.macos.release",
    "~/Library/Preferences/me.rismay.vapor-wares.macos.release.plist",
  ]
end
