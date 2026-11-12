cask "quiztr" do
  version "2.13.0"
  sha256 "d80dc82634f244177e198c828316508fb7eae17c83fc397e77ea493b649562fe"

  url "https://download.quiztr.com/mac/Quiztr-#{version}.dmg"
  name "Quiztr"
  desc "Turn notes, slides or any topic into bite-sized quizzes"
  homepage "https://quiztr.com/"

  livecheck do
    url "https://download.quiztr.com/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Quiztr.app"

  uninstall quit: "com.quiztr.mac"

  zap trash: [
    "~/Library/Application Support/*/*/NativeMessagingHosts/com.quiztr.mac.json",
    "~/Library/Application Support/*/NativeMessagingHosts/com.quiztr.mac.json",
    "~/Library/Application Support/com.quiztr.mac",
    "~/Library/Caches/com.quiztr.mac",
    "~/Library/HTTPStorages/com.quiztr.mac",
    "~/Library/Preferences/com.quiztr.mac.plist",
    "~/Library/Saved Application State/com.quiztr.mac.savedState",
  ]
end
