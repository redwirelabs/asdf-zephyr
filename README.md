# asdf-zephyr
[![Test](https://github.com/redwirelabs/asdf-zephyr/actions/workflows/test.yml/badge.svg)](https://github.com/redwirelabs/asdf-zephyr/actions/workflows/test.yml)

An [asdf](https://asdf-vm.com) plugin for managing
[Zephyr RTOS](https://docs.zephyrproject.org/latest/) repositories.

## Install

**Note**: Ensure python3 and
[python3-venv](https://docs.python.org/3/library/venv.html) are installed on
your host system.

```shell
asdf plugin add zephyr https://github.com/redwirelabs/asdf-zephyr.git
```

## Platform Compatibility

This plugin is compatible with both Linux and macOS. Special handling is included for macOS to avoid shell recursion issues when running west commands.

If you encounter any issues on macOS, please ensure you're using the latest version of the plugin, and see the [macOS Notes](MACOS_NOTES.md) for more information.
