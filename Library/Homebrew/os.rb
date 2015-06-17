module OS
  def self.mac?
    /darwin/i === RUBY_PLATFORM
  end

  def self.linux?
    /linux/i === RUBY_PLATFORM
  end

  GITHUB_USER = "SuperNEMO-DBD"
  GITHUB_REPOSITORY = "cadfaelbrew"
  ISSUES_URL = "https://github.com/#{GITHUB_USER}/#{GITHUB_REPOSITORY}/blob/master/share/doc/homebrew/Troubleshooting.md#troubleshooting"

  if OS.mac?
    PATH_OPEN = "/usr/bin/open"
    PATH_PATCH = "/usr/bin/patch"
  elsif OS.linux?
    PATH_OPEN = "xdg-open"
    PATH_PATCH = "patch"
  else
    raise "Unknown operating system"
  end
end
