# We ahead's data overlay for Docker containers

This repo provides an entrypoint that sets the uid & gid of a user inside a 
container to the owner of a directory.

Based on [this comment](https://github.com/docker-library/mysql/issues/99#issuecomment-145665645)

## Requirements

- `usermod`
- `groupmod`
- `gosu` or `su-exec`

## License

[X11](LICENSE)
