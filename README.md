# Build for Mac

scripts section of `package.json` should look like this:

```JavaScript
"scripts": {
  "setup": "yarn install && babel src --out-dir lib && bash setup.sh -ml",
  "start": "electron .",
  "pack": "electron-builder --dir",
  "dist": "electron-builder",
  "postinstall": "electron-builder install-app-deps"
}
```

# Build for Win

scripts section of `package.json` should look like this:

```JavaScript
"scripts": {
  "setup": "yarn install && babel src --out-dir lib && bash setup.sh -wl",
  "start": "electron .",
  "pack": "electron-builder --dir",
  "dist": "electron-builder",
  "postinstall": "electron-builder install-app-deps"
}
```
