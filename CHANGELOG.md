## 📝 Changelog: 2025-11-23 at 11:00:08 📝  

📝 Update codebase 📝  
  
  
README.md  


### 📝 End of changes for 202511231100-git 📝  

----  
## 🔧 Changelog: 2025-11-23 at 10:43:42 🔧  

🔧 Update configuration files 🔧  
  
  
.github/workflows/build.yml  


### 🔧 End of changes for 202511231043-git 🔧  

----  
## 🗃️ Changelog: 2025-11-23 at 10:32:02 🗃️  

🗃️ Update codebase 🗃️  
  
  
Makefile  
README.md  


### 🗃️ End of changes for 202511231032-git 🗃️  

----  
## 🔧 Changelog: 2025-11-23 at 10:00:45 🔧  

🔧 Update configuration files 🔧  
  
  
.gitignore  


### 🔧 End of changes for 202511231000-git 🔧  

----  
## 🔧 Changelog: 2025-11-23 at 09:56:13 🔧  

🔧 Update configuration files 🔧  
  
  
cmd/caspaste/  
cmd/lenpaste/lenpaste.go  
Dockerfile  
entrypoint.sh  
.github/workflows/build.yml  
.github/workflows/release_docker.yml  
.github/workflows/release_sources.yml  
go.mod  
go.sum  
internal/apiv1/api_error.go  
internal/apiv1/api_get.go  
internal/apiv1/api.go  
internal/apiv1/api_main.go  
internal/apiv1/api_new.go  
internal/apiv1/api_server.go  
internal/config/config.go  
internal/logger/logger.go  
internal/netshare/netshare_paste.go  
internal/raw/raw_error.go  
internal/raw/raw.go  
internal/raw/raw_raw.go  
internal/storage/storage.go  
internal/web/data/about.tmpl  
internal/web/data/authors.tmpl  
internal/web/data/base.tmpl  
internal/web/data/docs_apiv1.tmpl  
internal/web/data/docs.tmpl  
internal/web/data/locale/en.json  
internal/web/data/main.tmpl  
internal/web/data/source_code.tmpl  
internal/web/data/style.css  
internal/web/data/theme/dark.theme  
internal/web/data/theme/light.theme  
internal/web/web_dl.go  
internal/web/web_docs.go  
internal/web/web_embedded.go  
internal/web/web_embedded_help.go  
internal/web/web_error.go  
internal/web/web_get.go  
internal/web/web.go  
internal/web/web_new.go  
internal/web/web_other.go  
internal/web/web_settings.go  
internal/web/web_sitemap.go  
Makefile  
README.md  


### 🔧 End of changes for 202511230956-git 🔧  

----  
## 🐳 Changelog: 2025-11-08 at 18:55:20 🐳  

🐳 Update codebase 🐳  
  
  
Dockerfile  


### 🐳 End of changes for 202511081855-git 🐳  

----  
# Changelog
Semantic versioning is used (https://semver.org/).


## v1.3.1
- Fixed a problem with building Lenpaste from source code.
- Revised documentation.
- Minor improvements were made.

## v1.3
- UI: Added custom themes support. Added light theme.
- UI: Added translations into Bengali and German (thanks Pardesi_Cat and Hiajen).
- UI: Check boxes and spoilers now have a custom design.
- Admin: Added support for `X-Real-IP` header for reverse proxy.
- Admin: Added Server response header (for example: `Lenpaste/1.3`).
- Fix: many bugs and errors.
- Dev: Improved quality of `Dockerfile` and `entrypoint.sh`

## v1.2
- UI: Add history tab.
- UI: Add copy to clipboard button.
- Admin: Rate-limits on paste creation (`LENPASTE_NEW_PASTES_PER_5MIN` or `-new-pastes-per-5min`).
- Admin: Add terms of use support (`/data/terms` or `-server-terms`).
- Admin: Add default paste life time for WEB interface (`LENPASTE_UI_DEFAULT_LIFETIME` or `-ui-default-lifetime`).
- Admin: Private servers - password request to create paste (`/data/lenpasswd` or `-lenpasswd-file`).
- Fix: **Critical security fix!**
- Fix: not saving cookies.
- Fix: display language name in WEB.
- Fix: compatibility with WebKit (Gnome WEB).
- Dev: Drop Go 1.15 support. Update dependencies.


## v1.1.1
- Fixed: Incorrect operation of the maximum paste life parameter.
- Updated README.


## v1.1
- You can now specify author, author email and author URL for paste.
- Full localization into Russian.
- Added settings menu.
- Paste creation and expiration times are now displayed in the user's time zone.
- Add PostgreSQL DB support.


## v1.0
This is the first stable release of Lenpaste🎉

Compared to the previous unstable versions, everything has been drastically improved:
design, loading speed of the pages, API, work with the database.
Plus added syntax highlighting in the web interface.


## v0.2
Features:
- Paste title
- About server information
- Improved documentation
- Logging and log rotation
- Storage configuration
- Code optimization

Bug fixes:
- Added `./version.json` to Docker image
- Added paste expiration check before opening
- Fixed incorrect error of expired pastes
- API errors now return in JSON


## v0.1
Features:
- Alternative to pastebin.com
- Creating expiration pastes
- Web interface
- API
