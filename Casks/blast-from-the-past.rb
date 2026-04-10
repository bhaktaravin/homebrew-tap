cask "blast-from-the-past" do
  version "1.2.6"

  on_intel do
    url "https://github.com/bhaktaravin/blast-from-the-past-messenger/releases/download/v#{version}/blast-from-the-past-macos-intel.dmg"
    sha256 "36252af7ec083e7c8c771f1b1f4f434fe402bc0bf7f4d626fd950022840d3a24"
  end

  on_arm do
    url "https://github.com/bhaktaravin/blast-from-the-past-messenger/releases/download/v#{version}/blast-from-the-past-macos-silicon.dmg"
    sha256 "89636799cd41d2897ab1bfca144e539f6ef021fb2b4128409dd9c6b60652a42a"
  end

  name "Blast From The Past"
  desc "Retro AOL-style instant messenger"
  homepage "https://github.com/bhaktaravin/blast-from-the-past-messenger"

  app "Blast From The Past.app"

  zap trash: [
    "~/.config/blast-from-the-past",
  ]
end
