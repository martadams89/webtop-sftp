# Webtop SFTP

This repository contains a Docker image based on Linuxserver IO's XFCE Ubuntu image, with FileZilla installed for SFTP file management.

## Features

- XFCE desktop environment
- FileZilla for SFTP file transfers
- Based on Linuxserver IO's Ubuntu image

## Usage

To run the Docker container, use the following command:

```sh
docker run -d \
  --name=webtop-sftp \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 3000:3000 \
  -v /path/to/config:/config \
  -v /path/to/data:/data \
  --restart unless-stopped \
  your-docker-image
```

Replace `/path/to/config` and `/path/to/data` with the appropriate paths on your host system.

## Environment Variables

- `PUID`: User ID for the container (default: `1000`)
- `PGID`: Group ID for the container (default: `1000`)
- `TZ`: Timezone (default: `Etc/UTC`)

## Volumes

- `/config`: Configuration files
- `/data`: Data directory

## Ports

- `3000`: Web interface port

## Building the Image

To build the Docker image, run:

```sh
docker build -t your-docker-image .
```

## Contributing

Contributions are welcome! Please submit a pull request or open an issue to discuss any changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
