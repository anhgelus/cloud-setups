# Install Minecraft Modrinth Pack

Select the right script according your Minecraft version and your linux distribution.

For example, if you want to install a modpack for Minecraft 1.16.5 for RockyLinux, download the script `java17-rocky.sh`.

| Minecraft version | Java version |
| ----------------- | ------------ |
| 1.6.1 to 1.16.5   | 8            |
| 1.17 to 1.20.4    | 17           |
| 1.20.5 and +      | 21           |

[Source](https://minecraft.wiki/w/Tutorials/Update_Java#Why_update?).

## How to use

### Specific java version

Run the script with the variable `PACK_LINK` set.
This variable specifies the path or the link to the `.mrpack`.

e.g.
```bash
PACK_LINK=https://cdn.modrinth.com/data/my1CiIFD/versions/hgUMxYI2/Nohtis%20Apohcalyps-0.10.3.mrpack sh java17-rocky.sh
```

### Non-specific java version

Run the script with the variable `PACK_LINK` and the variable `JAVA_VERSION` set.
The first variable specifies the path or the link to the `/mrpack`.
The second variable specifies the version of java to use.

e.g.
```bash
PACK_LINK=https://cdn.modrinth.com/data/my1CiIFD/versions/hgUMxYI2/Nohtis%20Apohcalyps-0.10.3.mrpack JAVA_VERSION=17 sh rocky.sh
```

