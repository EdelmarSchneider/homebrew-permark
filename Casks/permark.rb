cask "permark" do
  version "0.17.0"
  sha256 "5e7a1b23d30c86c377a001650a418ed7e44008259309cce1d79658e4e45db7f8"

  url "https://github.com/EdelmarSchneider/permark/releases/download/v#{version}/PerMark_#{version}_universal.dmg"
  name "PerMark"
  desc "Markdown app to read, write and steer what your AI agents write"
  homepage "https://edelmarschneider.github.io/permark/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PerMark.app"
  binary "#{appdir}/PerMark.app/Contents/MacOS/permark"

  zap trash: [
    "~/Library/Application Support/dev.permark.app",
    "~/Library/Application Support/dev.trailmark.app",
    "~/Library/Caches/dev.permark.app",
    "~/Library/Caches/dev.trailmark.app",
    "~/Library/Preferences/dev.permark.app.plist",
    "~/Library/Preferences/dev.trailmark.app.plist",
    "~/Library/Saved Application State/dev.permark.app.savedState",
    "~/Library/Saved Application State/dev.trailmark.app.savedState",
  ]
end
