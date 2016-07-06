# We ahead's data overlay for Docker containers

This repo provides an entrypoint that sets the uid & gid of a user inside a 
container to the owner of a directory.

Based on [this comment](https://github.com/docker-library/mysql/issues/99#issuecomment-145665645)


## Requirements

- `usermod`
- `groupmod`
- [`gosu`](https://github.com/tianon/gosu) or [`su-exec`](https://github.com/ncopa/su-exec)


## How to use this image

See the example [Dockerfile for Alpine](Dockerfile.example-alpine) and example
[Dockerfile for Debian](Dockerfile.example-debian).


## License

[X11](LICENSE)
