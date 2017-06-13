# lulzmode (wip.)

```
%> ./lulzmode --help
usage: lulzmode [-h] [--toggle] [--debug]

When your finals are close, blacklist distracting hosts.

optional arguments:
  -h, --help  show this help message and exit
  --toggle    Toggle lulz mode
  --debug     Print /etc/hosts after toggling
```

Toggle lulz mode, when your finals are close.

## Example

```
%> ./lulzmode 
Lulzmode: ✔
%> cat /etc/hosts 
127.0.0.1 localhost
%> ./lulzmode --toggle
Lulzmode: ✖
%> cat /etc/hosts 
127.0.0.1 localhost
# UNLULZMODE:
0.0.0.0 twitter.com
0.0.0.0 news.ycombinator.com
0.0.0.0 facebook.com
0.0.0.0 youtube.com$ 
```

## Note

This script needs to edit your /etc/hosts. Assuming
you're the administrator and the only user of the system,
it makes sense to add yourself to the [wheel](https://wiki.archlinux.org/index.php/users_and_groups#User_groups)
group and

```
# chown root:wheel /etc/hosts
# chmod g+w /etc/hosts
```
