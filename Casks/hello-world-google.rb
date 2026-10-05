cask "hello-world-google" do
  version "1.0.0"
  sha256 "be5ff29d02e5c2fa45ed303a0fda970797b5b657c8c4f96644d62fc79417f424"

  url "https://vapor-wares.pages.dev/releases/HelloWorldGoogle-#{version}.zip"
  name "Hello World Google"
  desc "Two words. An entire stack."
  homepage "https://vapor-wares.pages.dev/apps/hello-world-google"

  app "Hello World Google.app"

  # Auto-update via Sparkle appcast.
  appcast "https://vapor-wares.pages.dev/appcast/hello-world-google.xml"

  zap trash: [
    "~/Library/Application Support/me.rismay.hello-world-google.mac",
    "~/Library/Preferences/me.rismay.hello-world-google.mac.plist",
  ]
end
