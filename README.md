# Cloud Setups

Bash scripts helping the set up of linux servers.

## Usage

If you trust my scripts (thank you!), you can execute them directly without downloading them.
To do this, you juste have to copy the raw content's url of the script (e.g. https://raw.githubusercontent.com/anhgelus/cloud-setups/main/docker/rocky.sh) and execute this command:
```bash
curl <link> | bash
```
e.g.
```bash
curl https://raw.githubusercontent.com/anhgelus/cloud-setups/main/docker/rocky.sh | bash
```

If you must set environment(s) variable(s), add them after the pipe (`|`) like this:
```bash
curl <link> | FOO=bar bash
```
e.g.
```bash
curl https://raw.githubusercontent.com/anhgelus/cloud-setups/main/minecraft/only-java/alpine.sh | JAVA_VERSION=21 bash
```
