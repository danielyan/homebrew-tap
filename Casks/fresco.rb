cask "fresco" do
  version "0.4.2,108"
  sha256 "64f2bea00614e91663ad83104e91e42b5ee71d97d57c32e1d542dee4175df032"

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
