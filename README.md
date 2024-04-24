# Pearcleaner
<p align="center">
   <img src="https://github.com/alienator88/Pearcleaner/assets/91337119/165f6961-f4fc-4199-bc68-580bacff6eaf" align="center" width="128" height="128" />
   <br />
   <strong>Status: </strong>Maintained 
   <br />
   <strong>Version: </strong>3.5.3
   <br />
   <a href="https://github.com/alienator88/Pearcleaner/releases"><strong>Download</strong></a>
    · 
   <a href="https://github.com/alienator88/Pearcleaner/commits">Commits</a>
   <br />
   <br />
   <a href="https://www.producthunt.com/posts/pearcleaner?utm_source=badge-featured&utm_medium=badge&utm_souce=badge-pearcleaner" target="_blank"><img src="https://api.producthunt.com/widgets/embed-image/v1/featured.svg?post_id=439875&theme=neutral" alt="Pearcleaner - An&#0032;open&#0045;source&#0032;mac&#0032;app&#0032;cleaner | Product Hunt" style="width: 250px; height: 54px;" width="250" height="54" /></a>
  </p>
</p>
</br>

A free, source-available and fair-code licensed mac app cleaner inspired by [Freemacsoft's AppCleaner](https://freemacsoft.net/appcleaner/) and [Sun Knudsen's Privacy Guides](https://sunknudsen.com/privacy-guides/how-to-clean-uninstall-macos-apps-using-appcleaner-open-source-alternative) post on his app-cleaner script.
This project was born out of wanting to learn more on how macOS deals with app installation/uninstallation and getting more Swift experience. If you have suggestions I'm open to hearing them, submit a feature request!

### TOC
[Monetization](#monetization)

[Features](#features)

[Screenshots](#screenshots)

[Requirements](#requirements)

[Download](#getting-pearcleaner)

[Thanks](#thanks)

[Other Apps](#other-apps)

## Monetization
>In asserting my ethical stance on software management, I've implemented a Commons Clause in the Apache 2.0 licensing agreement of Pearcleaner to explicitly prohibit any form of monetization. This stance is rooted in the belief that the functionality to cleanly uninstall applications should be a standard, no-cost feature within operating systems. Since macOS does not currently offer this essential feature, my application(and others) fill this gap by providing a transparent and privacy-focused alternative. By legally ensuring that this software remains free of charge, I am upholding a commitment to software transparency and user privacy, guaranteeing that this critical tool remains accessible to all, thereby fostering an environment of trust and utility.

Be weary of copy clones [like this](https://apps.apple.com/us/app/cyclear/id6480414027?mt=12) charging exorbitant amounts for an app that is free and will remain free.

## Features
- 100% Swift
- Small app size (~3MB)
- Quick file search
- Reverse search for finding remaining files from previously uninstalled applications
- Sentinel monitor helper that can be enabled to watch Trash folder for deleted apps to cleanup after the fact(Extremely small (210KB) and uses ~2mb of ram to run in the background and file watch)
- Mini mode which can be enabled from Settings
- Menubar option
- Can drop apps to uninstall directly on the Pearcleaner Dock icon itself or the drop target in the app window
- Optional Finder Extension which allows you to uninstall an app directly from Finder by right clicking > Pearcleaner Uninstall
- Theme System available with custom color selector
- Will differentiate between regular apps and Safari web-apps with a "web" label and also iOS apps with an "iOS" label next to each item in the list
- Has clean uninstall menu option for the Pearcleaner app itself if you want to stop using it and get rid of all files and launch items
- New feature alert on app startup
- Can update app conditions remotely for finding more files for unique apps, therefore not requiring a new app updates/releases
- Optional Homebrew cleanup
- Custom auto-updater that pulls latest release notes and binaries from GitHub Releases (Pearcleaner should run from `/Applications` folder to avoid permission issues)


## Screenshots

<img src="https://github.com/alienator88/Pearcleaner/assets/91337119/64f581a6-47b7-4ad1-acd3-24d585407aa7" align="left" width="400" />

<img src="https://github.com/alienator88/Pearcleaner/assets/6263626/3cfe64c2-eba9-4aa0-8250-1f318d3f624c" align="center" width="400" />
<p></p>
<img src="https://github.com/alienator88/Pearcleaner/assets/91337119/327388d9-e043-40ba-b473-4a7c255b1cdf" align="left" width="400" />

<img src="https://github.com/alienator88/Pearcleaner/assets/6263626/e6cc2708-35ed-4084-aa0b-c789a85c6324" align="center" width="400" />
<p></p>


<details open>
  <summary>Themes</summary>
<img src="https://github.com/alienator88/Pearcleaner/assets/6263626/e3178f02-785d-48b9-b9ac-20f4e94550ff" align="left" width="400" />

<img src="https://github.com/alienator88/Pearcleaner/assets/6263626/d65bc6b4-23b1-47de-b461-f24581aae149" align="center" width="400" />
</details>


<details>
  <summary>Mini Mode</summary>
<img src="https://github.com/alienator88/Pearcleaner/assets/91337119/0bcfbbee-7d43-4f14-9657-d3d62da72d88" align="left" width="400" />

<img src="https://github.com/alienator88/Pearcleaner/assets/91337119/3724094f-f160-4e07-8162-ff8e5e850596" align="center" width="400" />
<p></p>
<img src="https://github.com/alienator88/Pearcleaner/assets/91337119/9f713923-2eca-41c0-95da-3d35ce546f93" align="left" width="400" />

<img src="https://github.com/alienator88/Pearcleaner/assets/91337119/52cec03b-9b5c-40c0-865d-669466713c18" align="center" width="400" />
<p></p>
</details>

<details>
  <summary>Finder Extension</summary>
   <img src="https://github.com/alienator88/Pearcleaner/assets/6263626/098d58a4-bc2b-4bb3-958f-b1456dd7cb84" align="center" width="400" />
</details>

<details>
  <summary>Leftover File Search</summary>
<img src="https://github.com/alienator88/Pearcleaner/assets/91337119/7f0bb69c-67ef-488b-b7ea-43e9215b3065" align="left" width="400" />

<img src="https://github.com/alienator88/Pearcleaner/assets/91337119/a1d815cd-7118-4817-80f7-e568c6357d19" align="center" width="400" />

</details>

<details>
  <summary>Settings</summary>
<img src="https://github.com/alienator88/Pearcleaner/assets/6263626/dda6c134-57f1-4a37-95e7-a053d7bab62b" align="left" width="400" />

<img src="https://github.com/alienator88/Pearcleaner/assets/6263626/dd483175-65ad-44de-a742-2bbfffbf124e" align="center" width="400" />

</details>

<p></p>


## Requirements
- MacOS 13.0+ (App uses a lot of newer SwiftUI functions/modifiers which don't work on any OS lower than 13.0)
- Open Pearcleaner first time by right clicking and selecting Open. This adds an exception to Gatekeeper so it doesn't complain about the app not being signed with an Apple Developer certificate
- Full Disk permission to search for files and also Accessibility permission to delete/restore files



## Getting Pearcleaner

<details>
  <summary>Releases</summary>

> Pre-compiled, always up-to-date versions are available from my releases page.
You might need to open this with right click-open since I don't have a paid developer account.
</details>

<details>
  <summary>Homebrew</summary>
   
> Since I don't have a paid developer account, I can't submit to the main Homebrew cask repo.
You can still add the app via Homebrew by tapping my homebrew repo:
```
brew install alienator88/homebrew-cask/pearcleaner
```
</details>

## Thanks

Much appreciation to [Freemacsoft's AppCleaner](https://freemacsoft.net/appcleaner/) and [Sun Knudsen's app-cleaner script](https://sunknudsen.com/privacy-guides/how-to-clean-uninstall-macos-apps-using-appcleaner-open-source-alternative)

## Other Apps

[Pearcleaner](https://github.com/alienator88/Pearcleaner) - An opensource app cleaner with privacy in mind

[Sentinel](https://github.com/alienator88/Sentinel) - A GUI for controlling gatekeeper status on your mac

[Viz](https://github.com/alienator88/Viz) - Utility for extracting text from images, videos, qr/barcodes

[McBrew](https://github.com/alienator88/McBrew) - A GUI for managing your homebrew
