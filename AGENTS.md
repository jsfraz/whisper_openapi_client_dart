# whisper_openapi_client_dart — agent contract

Generated Dart client for the Whisper API. `lib/` and `doc/` **are generated** — hand editing is forbidden.
The source of truth is `openapi.json` in `whisper-server` (generated from routes via `go run ./cmd/spec`).

## Commands

- regen: `./scripts/regen.sh` — regenerates the client from the `openapi.json` in this repo
- deps: `dart pub get`
- analyze: `dart analyze --no-fatal-warnings` (warnings come from the generator, errors block)
- format: `dart format` on the files you touched

## Hard rules

1. Never edit `lib/api*.dart`, `lib/model/*` or `doc/*` — regeneration overwrites them.
2. The only hand-written file in `lib/` is `lib/media_download.dart` (binary download; the generator maps `octet-stream` to `MultipartFile`). When the download changes, edit this file.
3. The `openapi.json` in the repo root must match the spec the client was generated from. It is updated together with the regeneration.
4. Do not change `open-generator-config.yaml` or the generator version without justification; the output must stay reproducible.
5. The generator rewrites `pubspec.yaml` — manual dependency edits are lost. Solve it through the generator config.
6. Never disable CI or delete `openapi.json` to get past the gate.
7. Force-push only to your own feature branch, never to `main`.

## Definition of done

- `./scripts/regen.sh` runs cleanly and `git status` stays clean (CI enforces this).
- `dart analyze --no-fatal-warnings` reports no errors.
- A spec change ships the updated `openapi.json` and the generated diff in one PR.
