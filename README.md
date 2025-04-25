<div align=center>

![Stytch iOS SDK](Resources/stytch-dark.png#gh-dark-mode-only)
![Stytch iOS SDK](Resources/stytch-light.png#gh-light-mode-only)

![iOS](https://img.shields.io/badge/iOS-15.0-blue)
![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-4BC51D)

</div>

## Introduction
[Stytch's](https://stytch.com) iOS device fingerprinting ([DFP](https://stytch.com/docs/fraud/guides)) SDK aggregates various attributes of a user’s device into a single identifier.

## Installation Using Swift Package Manager

Open the following menu item in Xcode: **File -> Add Package Dependencies...**

In the **Search or Enter Package URL** search box enter this URL: 

```text
https://github.com/stytchauth/stytch-ios-dfp
```

Then, select the dependency rule and press **Add Package**.

## Usage
``` swift
import StytchDFP

let stytchDFP = StytchDFP()

// Required: Configure customer DFP public token
// Optional: Specify your submitURL if you wish to use a custom CNAME i.e. "https://mycname.company.com/submit"
stytchDFP.configure(withPublicToken: "public-token-test-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx", submitURL: nil)

// Request a telemetryID
stytchDFP.getTelemetryID { telemetry_id in
    print(telemetry_id)
}
```

## License
The Stytch iOS Native DFP SDK is released under the MIT license. See [LICENSE](LICENSE) for details.
