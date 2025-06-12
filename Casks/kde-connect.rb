cask "kde-connect" do
  arch arm: "arm64", intel: "x86_64"

  version "master-5085"
  sha256 arm:   "b3226556285f159a6a3eef21d56c060187bfffcd744c26eaa585eb5231d03938",
         intel: "17e3c42529d9a105a7527c6e9a9f903b0df10d4f3d462acd8471e091f4a032b5"

  url "https://cdn.kde.org/ci-builds/network/kdeconnect-kde/master/macos-#{arch}/kdeconnect-kde-#{version}-macos-clang-#{arch}.dmg"
  name "KDE Connect"
  desc "Communication between all your devices. Phone, Text, Photos and more"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/network/kdeconnect-kde/master/macos-#{arch}/"
    regex(/href="kdeconnect-kde-([a-z]+-\d+)-macos-clang-#{arch}\.dmg/i)
  end

  app "KDE Connect.app"

  zap trash: [
    "~/Library/Application Support/kdeconnect.app",
    "~/Library/Caches/kdeconnect.app",
    "~/Library/Caches/kdeconnect.sms",
    "~/Library/Preferences/kdeconnect",
  ]
end
