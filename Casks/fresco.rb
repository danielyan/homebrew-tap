cask "fresco" do
  version "0.3.3,97"
  sha256 "184aac969dcf73131389d42a0eb10f3e0c493aad28a51c1c3b4f7dd336b193a3"

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
