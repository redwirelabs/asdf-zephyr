# macOS Compatibility Notes

When using this plugin on macOS, you might encounter a shell recursion issue when running `west build` or other west commands. This happens because:

1. The shell's handling of PATH resolution on macOS can cause the west shim to find itself repeatedly
2. The output format of `asdf current zephyr` includes "Version" text and newlines that need to be parsed properly

The plugin has been updated to handle these macOS-specific issues while maintaining Linux compatibility.

If you're still encountering issues on macOS:

1. Make sure you have the latest version of this plugin
2. Check that your `.tool-versions` file specifies the correct Zephyr version
3. Run `asdf reshim zephyr` to ensure the shims are properly set up
