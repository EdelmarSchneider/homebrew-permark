cask "trailmark" do
  version "0.5.5"
  sha256 "65517ddaedf0d928ac659debb149bad2be8cd3bb8c7c27e9ba92944bec384c1b"

  url "https://github.com/EdelmarSchneider/trailmark/releases/download/v#{version}/TrailMark_#{version}_universal.dmg"
  name "TrailMark"
  desc "IDE for planning, reviewing, and steering AI-written specs and docs in Markdown"
  homepage "https://edelmarschneider.github.io/trailmark/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TrailMark.app"
  binary "#{appdir}/TrailMark.app/Contents/MacOS/trailmark"

  zap trash: [
    "~/Library/Application Support/dev.trailmark.app",
    "~/Library/Caches/dev.trailmark.app",
    "~/Library/Preferences/dev.trailmark.app.plist",
    "~/Library/Saved Application State/dev.trailmark.app.savedState",
  ]
end
