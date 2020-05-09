git windows-remote
==================

`git remote` for Windows machines. Dealing with Windows-based git remotes isn't *hard*, but this just makes it a little bit easier.

Installing
----------

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/foxxyz/git-windows-remote/master/install.sh)"
```

Of course, make sure to [read the install script](https://github.com/foxxyz/git-windows-remote/blob/master/install.sh) before doing something dangerous like that.

Usage
-----

Use `git windows-remote` exactly like you'd use `git remote`. It takes care of setting the right config variables so you never have to remember those pesky commands ever again.

Adding Remotes:
```
git windows-remote add prod myhost:c:/opt/my/git/repo
```

Removing Remotes:
```
git windows-remote remove prod
```

Uninstalling
------------

To get rid of `git-windows-remote` just run:
```
git windows-remote uninstall
```

*Wait. You can push/pull from Windows git remotes? 🤯*
---------------------------------------------------

This has become a bit easier since Microsoft [added OpenSSH to Windows in Fall 2018](https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_overview), although you still need to make sure to install the OpenSSH server in [Optional Features](https://winaero.com/blog/optional-feature-management-improvements-windows-10-20h1/), then start the SSH server from [Windows Services](https://kb.blackbaud.com/articles/Knowledge/49839). This should allow you to SSH into your machine using your username and password.

**Note: For some reason, Microsoft decided that, by default, all users can log in via SSH instead of just Administrators.** To restrict access to Administrators only, edit `C:\Program Data\ssh\sshd_config` and add:
```
AllowGroups Administrators
```

However, even if you tried to `git push` or `git pull` to a location on this machine, you'll still get a cryptic error to the tune of _`git-receive-pack not found`_, due to [some nonsense regarding quotes that seems too difficult for the Microsoft folks to figure out](https://github.com/PowerShell/Win32-OpenSSH/issues/895).

Hopefully, in the future Microsoft fixes this and makes this library superfluous. Until then, enjoy. 👨‍💻

License
-------

MIT

