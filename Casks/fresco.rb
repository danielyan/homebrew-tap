cask "fresco" do
  version "0.4.1,106"
  sha256 "f9d67f2e32e671134b4a72727f276c1b8cd4071ab224532bf75f27f137b9796d"

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
