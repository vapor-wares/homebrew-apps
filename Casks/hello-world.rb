cask "hello-world" do
  version "1.0.0"
  sha256 "9b8b4e8d6c3ebe75824ef3358ca6614c413eee31652a485fe78c1183f8f7618e"

  url "https://vapor-wares.pages.dev/releases/HelloWorld-#{version}.zip"
  name "Hello World"
  desc "The smallest Vapor Wares app, shipped through the full direct Mac lane"
  homepage "https://vapor-wares.pages.dev/apps/hello-world"

  app "Hello World.app"

  # Auto-update via Sparkle appcast.
  appcast "https://vapor-wares.pages.dev/appcast/hello-world.xml"

  zap trash: [
    "~/Library/Application Support/me.rismay.hello-world",
    "~/Library/Preferences/me.rismay.hello-world.plist",
  ]
end
