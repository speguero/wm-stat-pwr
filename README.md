# wm-stat-pwr

`wm-stat-pwr` is an [`i3blocks`](https://github.com/vivien/i3blocks) status indicator that reports a percentage of available battery power on your machine, based upon a single battery or a total sum of available power between all present batteries.

---

- [Requirements](#requirements)
- [Disclaimer](#disclaimer)
- [Install](#install)
- [Arguments](#arguments)
- [Runtime](#runtime)
- [Contributing](#contributing)
- [License](#license)

## Requirements

- Linux, or...
- OpenBSD, or...
- FreeBSD, with...
- Python v3.5+

## Disclaimer

Due to the nature of battery technology and issues of inaccuracy from estimated times of remaining life before loss of power, `wm-stat-pwr` does not, and will never, report such information.

## Install

__1)__ Copy `wm-stat-pwr` to a directory of your choosing.

__2)__ Edit your `i3blocks` configuration file and add the following configuration:

```ini
[wm-stat-pwr]
command=/path/to/wm-stat-pwr
label=B
interval=1
```

Specify the full path of `wm-stat-pwr` in the `command` argument.

__3)__ Refresh your i3 or Sway session and enjoy.

## Arguments

Argument | Description
---      | ---
[none]   | Defaults to the `-t` argument.
`-t`     | Enable text-based status indicators.
`-i`     | Enable icon-based status indicators, which require the [Font Awesome](https://github.com/FortAwesome/Font-Awesome) font.

## Runtime

The following power status indicators are used:

Status (Text) | Status (Icon)  | Meaning
---           | ---            | ---
`CHR`         | Lightning Bolt | Charging
`DIS`         | Battery        | Discharging
`FUL`         | Power Plug     | Full
`PLG`         | Power Plug     | Plugged In
`NBF`         | [none]         | No Battery Found
`PNS`         | [none]         | Platform Not Supported
`???`         | [none]         | Unknown

If one or more batteries are present, one of the first four status indicators will be displayed along with a power percentage:

```
CHR 84%
```

## License

Refer to the `LICENSE` file for details.
