# CasPaste

A web service that allows you to share notes anonymously, an alternative to `pastebin.com`.

This is a fork of [Lenpaste](https://github.com/lcomrade/lenpaste) by Leonid Maslakov.

## Features
- No need to register
- Supports multiple languages
- Uses cookies only to store settings
- Can work without JavaScript
- Has its own API
- Open source and self-hosted
- Modern, mobile-friendly UI
- Static single-binary builds for multiple platforms

## Installation

### Pre-built Binaries

Download the latest release for your platform from the [Releases](https://github.com/casjay-forks/caspaste/releases) page.

Available platforms:
- Linux (amd64, arm64)
- macOS (amd64, arm64)
- Windows (amd64, arm64)
- FreeBSD (amd64, arm64)
- OpenBSD (amd64, arm64)

### Build from Source

Requirements: Go 1.21+

```bash
git clone https://github.com/casjay-forks/caspaste.git
cd caspaste
make build
```

Binaries will be in `./binaries/`.

## Configuration

### Environment Variables

#### HTTP
- `LENPASTE_ADDRESS` - Address:port for HTTP (default: `:80`)

#### Database
- `LENPASTE_DB_DRIVER` - Database driver: `sqlite` or `postgres` (default: `sqlite`)
- `LENPASTE_DB_SOURCE` - Database connection string (default: `/data/lenpaste.db` for SQLite)
- `LENPASTE_DB_MAX_OPEN_CONNS` - Max open connections (default: `25`)
- `LENPASTE_DB_MAX_IDLE_CONNS` - Max idle connections (default: `5`)
- `LENPASTE_DB_CLEANUP_PERIOD` - Cleanup interval for expired pastes (default: `1m`)

#### Storage Limits
- `LENPASTE_TITLE_MAX_LENGTH` - Max title length (default: `100`)
- `LENPASTE_BODY_MAX_LENGTH` - Max body length (default: `20000`)
- `LENPASTE_MAX_PASTE_LIFETIME` - Max paste lifetime, e.g., `10m`, `1h`, `7d` (default: `unlimited`)

#### Rate Limits
- `LENPASTE_GET_PASTES_PER_5MIN` / `15MIN` / `1HOUR` - View rate limits (defaults: `50`, `100`, `500`)
- `LENPASTE_NEW_PASTES_PER_5MIN` / `15MIN` / `1HOUR` - Create rate limits (defaults: `15`, `30`, `40`)

Set any rate limit to `0` to disable.

#### Server Information
- `LENPASTE_ADMIN_NAME` - Administrator name
- `LENPASTE_ADMIN_MAIL` - Administrator email
- `LENPASTE_ROBOTS_DISALLOW` - Block search engines (default: `false`)

#### UI Settings
- `LENPASTE_UI_DEFAULT_LIFETIME` - Default paste lifetime in UI
- `LENPASTE_UI_DEFAULT_THEME` - Default theme (default: `dark`)

### Data Files
- `/data/about` - Server description (displayed on About page)
- `/data/rules` - Server rules
- `/data/terms` - Terms of use
- `/data/lenpasswd` - Login credentials (format: `LOGIN:PASSWORD` per line)
- `/data/themes/` - Custom themes directory

## API Documentation

See the [API v1 documentation](https://github.com/casjay-forks/caspaste/blob/main/docs/api.md) or access `/docs/apiv1` on your running instance.

## Development

```bash
# Build all platforms
make build

# Run tests
make test

# Create GitHub release
make release

# Bump version
make bump-patch  # 1.0.0 -> 1.0.1
make bump-minor  # 1.0.0 -> 1.1.0
make bump-major  # 1.0.0 -> 2.0.0
```

## License

GNU Affero General Public License v3.0 - see [LICENSE](LICENSE) file.

## Credits

### CasPaste
- CasjaysDev <project-admin@casjay.dev> - Fork Maintainer

### Original Lenpaste
- Leonid Maslakov (lcomrade) <root@lcomrade.su> - Core Developer
- Soumyajit Dass (Pardesi_Cat) - Bengali translation
- Hiajen - German translation

## Contact

- GitHub Issues: [https://github.com/casjay-forks/caspaste/issues](https://github.com/casjay-forks/caspaste/issues)
- Email: project-admin@casjay.dev
