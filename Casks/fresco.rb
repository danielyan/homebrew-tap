cask "fresco" do
  version "0.4.3,109"
  sha256 "82b3f86ad053b82bc4653f54ed1f78e0bb7761e3fbd1ac2176fec0c42766e183"

  url "https://danielyan.github.io/fresco-releases/Fresco-#{version.csv.first}.zip"
  name "Fresco"
  desc "Menu bar app that rotates the desktop wallpaper"
  homepage "https://danielyan.github.io/fresco-releases/"

  livecheck do
    url "https://danielyan.github.io/fresco-releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Fresco.app"

  zap trash: [
    "~/Library/Application Support/Fresco",
    "~/Library/Caches/org.danielyan.Fresco",
    "~/Library/HTTPStorages/org.danielyan.Fresco",
    "~/Library/Preferences/org.danielyan.Fresco.plist",
  ]
end
