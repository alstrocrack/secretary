# Secretary

## Overview

The command to search the syntax of each language in one shot

## Usage

1. Download "secretary" via git.

```bash
git clone git@github.com:YutoUrushima/secretary.git
```

2. Move "secreatry.sh" and "syntax.json" to a directory with paths through it. Rename the file from "secretary.sh" to "secretary" at that time.

ex.

```bash
cp ./secretary.sh ~/bin/secretary
cp ./syntax.json ~/bin/syntax.json
```

3. Search for the syntax as follows.

```bash
secretary --ruby if
```

## Note

- Only Bash on Ubuntu has been tested to work, other OS and shells are not guaranteed.
- Mainly about Ruby and JavaScript syntax, but may add other languages.
