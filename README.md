## Introduction
[Stytch's](https://stytch.com) iOS device fingerprinting ([DFP](https://stytch.com/docs/fraud/guides)) SDK aggregates various attributes of a user’s device into a single identifier.

## Setup
TODO

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
