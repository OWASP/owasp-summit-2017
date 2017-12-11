# OWASP Summit 2018 Site

We switched from Jekyll to [https://gohugo.io](Hugo) for generating our Web Site.

You can find, and edit all relevant content below the '/content' directory.

## For local editing

If you will be changing many files at once, and you prefer to edit locally rather than using github, just [https://gohugo.io/getting-started/installing/](download Hugo).

After downloading and adding it to your PATH, just run it with `hugo serve -v` at the root level of this repository.

Just change all the files you need, verify your changes, and then just create a new PR in github with your changes.

## For developing

To edit the layouts or any assets, you will need a more elaborate setting.
We use `hugulp` for our assets pipeline. `hugulp` will add gulp tasks for compiling less, minifying assets, and fingerprinting.

Just download hugulp using `npm`:

```
npm install hugulp
./node_modules/.bin/hugulp watch
```

If you have ERR in node with hugulp, you may need to add `fs.inotify.max_user_watches=524288` to your system.
