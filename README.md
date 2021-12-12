# macOS-mincraft

Configure Minecraft Java Edition for Apple Silicon MacBooks. Inspried from https://www.youtube.com/watch?v=8PWf-D6Lyx8.

## Details

Working directory...
```
~/Library/Application\ Support/minecraft
```

## Prereq

1. Install Minecraft by `brew` or download from minecraft.net.
```sh
brew install --cask minecraft
```

2. Install Java 17 ARM by `brew` or download from https://www.azul.com/downloads.
```sh
brew tap mdogan/zulu
brew install --cask zulu-jdk17
```

3. Launch Minecraft by `Terminal` or find app and open.
```sh
open -a Minecraft
```

4. Install project files.
```sh
./install.sh
```

5. Close Minecraft by `Terminal` or find app and close.
```sh
osascript -e 'quit app "Minecraft"'
```

6. Add `New Installation` for the new version with settings below (example for 1.17.1 but same steps for 1.18).
```sh
diff --git a/launcher_profiles.json b/launcher_profiles.json
index 73c3eab..caf3eae 100644
--- a/launcher_profiles.json
+++ b/launcher_profiles.json
@@ -14,6 +14,17 @@
       "name" : "",
       "type" : "latest-snapshot"
     },
+    "d53993e5bee3cddbeb0dd5393a7338cf" : {
+      "created" : "2021-11-29T03:17:12.800Z",
+      "gameDir" : "/Users/nesbert/Library/Application Support/minecraft",
+      "icon" : "TNT",
+      "javaArgs" : "-Xmx8G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dlog4j2.formatMsgNoLookups=true",
+      "javaDir" : "/usr/bin/java",
+      "lastUsed" : "1970-01-01T00:00:00.000Z",
+      "lastVersionId" : "1.17.1-arm",
+      "name" : "1.17.1 ARM64",
+      "type" : "custom"
+    },
     "e99b6f0ae40bf15c96f01b24a051cc8a" : {
       "created" : "1970-01-02T00:00:00.000Z",
       "icon" : "Grass",

```

7. Play `1.17.1 ARM64` and enjoy!

## Resources

* https://www.youtube.com/watch?v=8PWf-D6Lyx8
* https://gist.github.com/tanmayb123/d55b16c493326945385e815453de411a
