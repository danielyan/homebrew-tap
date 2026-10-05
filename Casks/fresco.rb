cask "fresco" do
  version "0.3.1,92"
  sha256 "af1990c77e25147e445c2adfc74d02531becebbd88543d84995c088b61a48b77"

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
