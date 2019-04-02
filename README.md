# FreeBSD-vagrant-tezos

Test env for FreeBSD Tezos compatibility 

## Usage

```
vagrant box add freebsd/FreeBSD-12.0-STABLE
vagrant up 
vagrant ssh
```

if it fails:

```
vagrant up --no-destroy-on-error
```


## References

- https://gitlab.com/tezos/tezos/issues/494
- https://forums.freebsd.org/threads/official-vagrant-freebsd-images.52717/
