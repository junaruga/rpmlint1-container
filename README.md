# rpmlint1-container
A container to run rpmlint version 1.

Right now RPMLint version 1 is executed in Zuul CI running in the Fedora 34 container, while Fedora 35+ has RPMLint version 2+ [1].
This repository is to help people to run the rpmlint version 1 on local environment.

```
$ podman build --rm -t rpmlint1 .

$ podman run -t rpmlint1 --version
rpmlint version 1.11
```

```
$ podman run -t -v "$PWD:/work" rpmlint1 --file ./your_package.rpmlintrc ./*.spec ./path/to/*.rpm
```

## References

* [1] https://src.fedoraproject.org/rpms/rpmlint
