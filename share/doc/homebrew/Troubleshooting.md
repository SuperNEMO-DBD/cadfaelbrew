# Troubleshooting
**Run `brew update` (twice) and `brew doctor` *before* creating an issue!**

When creating a formula-related issue please include the link output by running:

```shell
brew gist-logs <formula>
```

## Check for common issues
* Run `brew update` (twice).
* Run `brew doctor` and fix all the warnings (**outdated Xcode/CLT and unbrewed dylibs are very likely to cause problems**).
* Read through the [Common Issues](Common-Issues.md).
* If you’re installing something Java-related, maybe you need to install Java (`brew cask install java`)?
* Check that **Command Line Tools for Xcode (CLT)** and/or **Xcode** are up to date.
* If things fail with permissions errors, check the permissions in `/usr/local`. If you’re unsure what to do, you can `sudo chown -R $(whoami) /usr/local`.

## Check to see if the issue has been reported
* Browse open issues on the [issue tracker](https://github.com/SuperNEMO-DBD/Cadfaelbrew/issues) to see if someone else has already reported the same problem. Also browse the issue trackers on the upstream repositories for [OS X](https://github.com/Homebrew/homebrew/issues) and [Linux](https://github.com/Homebrew/linuxbrew/issues).
* Make sure you check issues on the correct repository. If the formula that failed to build is part of a tap, like [homebrew-science](https://github.com/Homebrew/homebrew-science) or [homebrew-dupes](https://github.com/Homebrew/homebrew-dupes), check there instead.

## Create an issue

1. [Create a new issue](https://github.com/SuperNEMO-DBD/Cadfaelbrew/issues/new)
  * Again, make sure you file the issue against the correct repository.
  * If you are reporting a build failure, title it "\<formula name> failed to build on \<Distribution> \<Version>", where \<formula name> is the name of the formula that failed to build, and \<Distribution> and \<Version> is the Linux distribution and version you are using, e.g., Ubuntu Trusty.
  * Otherwise, choose a title that best describes the problem you are experiencing.

2. Upload a [Gist][] with relevant debugging information
  * The simplest method is to run `brew gist-logs <formula name>`
  * You can also create a [Gist][] manually. Include the following:
     1. The output from `HOMEBREW_MAKE_JOBS=1 brew install -v <formula name> 2>&1`
     2. The contents of the largest numbered log in `~/Library/Logs/Homebrew/<formula name>`, e.g. `03.make`
     3. The output from `brew config` and `brew doctor`
  * If you are reporting a bug rather than a build failure, please include `brew config`, `brew doctor`, and enough information to reliably reproduce the bug.

3. Include a link to the gist in your new issue
  * Be sure to use the `https:` URL (i.e. the URL in your browser's address bar), not the `git:` URL.

[Gist]:https://gist.github.com
[Apple Developer]:https://developer.apple.com/downloads
[Java Developer Update]:https://support.apple.com/kb/DL1572
[JDK 7]:https://docs.oracle.com/javase/7/docs/webnotes/install/mac/mac-install-faq.html

