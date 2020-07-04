# i3blocks-batterieees

`batterieees` is an `i3blocks` battery status indicator that reports a total percentage of available power based on the sum of available power in every present battery of a given laptop.

- [Disclaimer](#disclaimer)
- [Install](#install)
- [Runtime](#runtime)
- [Contributing](#contributing)
- [License](#license)

## Disclaimer

Due to issues of inaccuracy as a result of the shortcomings of battery technology, `batterieees` does not report remaining time data.

## Install

__1)__ Copy `batterieees` to a directory of your choosing.

__2)__ Open your `i3blocks` configuration file in a text editor and add the following `batterieees` configuration:

```
[batterieees]
command=/path/to/batterieees
label=B
interval=1
```

Specify the full path of `batterieees` in the `command` argument.

__3)__ Refresh your i3wm session to begin using `batterieees`.

## Runtime

The following power status indicators are used:

Status | Meaning
---    | ---
CHR    | Charging
DIS    | Discharging
FUL    | Full
PLG    | Plugged In
???    | Unknown

These statuses are displayed along with the percentage of total available power in the following fashion:

```
CHR 84%
```

## Contributing

Contributions are welcome!

Submit __patches__ via email at [~speguero/patch@lists.sr.ht](mailto:~speguero/patch@lists.sr.ht) using [git-send-email](https://git-send-email.io). Include `[i3blocks-batterieees]` at the beginning of your subject line.

Submit __issue__, __question__ and __suggestion__ tickets as a [SourceHut registered user](https://todo.sr.ht/~speguero/tracker) or via email at [~speguero/tracker@todo.sr.ht](mailto:~speguero/tracker@todo.sr.ht). Include `[i3blocks-batterieees]` at the beginning of your subject line.

Items submitted to mirror repositories on GitHub and GitLab will be ignored.

## License

Access the `LICENSE` file for details.
