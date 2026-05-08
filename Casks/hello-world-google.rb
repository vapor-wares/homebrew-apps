cask "hello-world-google" do
  version "1.0.0"
  sha256 :no_check # replace with sha256 of notarized DMG

  url "https://github.com/vapor-wares/apps/releases/download/hello-world-google-v#{version}/HelloWorld-#{version}.dmg"
  name "Hello World"
  desc "Two words. An entire stack."
  homepage "https://vapor-wares.com/apps/hello-world-google"

  app "Hello World.app"

  zap trash: [
    "~/Library/Application Support/me.rismay.hello-world-google",
    "~/Library/Preferences/me.rismay.hello-world-google.plist",
  ]
end
