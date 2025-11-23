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

All configuration is done via command-line flags. Run `caspaste -help` for full details.

### Basic Usage

```bash
# SQLite (default)
caspaste -db-source /path/to/database.db

# PostgreSQL
caspaste -db-driver postgres -db-source "postgres://user:pass@localhost/dbname"
```

### Common Flags

#### Server
- `-address` - HTTP server address:port (default: `:80`)

#### Database
- `-db-driver` - Database driver: `sqlite3` or `postgres` (default: `sqlite3`)
- `-db-source` - Database connection string (required)
- `-db-max-open-conns` - Max open connections (default: `25`)
- `-db-max-idle-conns` - Max idle connections (default: `5`)
- `-db-cleanup-period` - Cleanup interval for expired pastes (default: `1m`)

#### Storage Limits
- `-title-max-length` - Max title length, 0 to disable titles, -1 for unlimited (default: `100`)
- `-body-max-length` - Max body length, -1 for unlimited (default: `20000`)
- `-max-paste-lifetime` - Max paste lifetime, e.g., `10m`, `1h`, `7d` (default: `unlimited`)

#### Rate Limits
- `-get-pastes-per-5min` / `-15min` / `-1hour` - View rate limits (defaults: `50`, `100`, `500`)
- `-new-pastes-per-5min` / `-15min` / `-1hour` - Create rate limits (defaults: `15`, `30`, `40`)

Set any rate limit to `0` to disable.

#### Server Information
- `-admin-name` - Administrator name
- `-admin-mail` - Administrator email
- `-robots-disallow` - Block search engine crawlers

#### UI Settings
- `-ui-default-lifetime` - Default paste lifetime in UI (e.g., `10min`, `1h`, `1d`)
- `-ui-default-theme` - Default theme (default: `dark`)
- `-ui-themes-dir` - Directory for custom themes

#### Content Files
- `-server-about` - Path to TXT file with server description
- `-server-rules` - Path to TXT file with server rules
- `-server-terms` - Path to TXT file with terms of use
- `-lenpasswd-file` - Path to auth file (format: `LOGIN:PASSWORD` per line)

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
