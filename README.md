# `dorian-sort-yaml`

Recursively sort YAML mapping keys.

## Install

```bash
gem install dorian-sort-yaml
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
sort-yaml [yaml ...] [file ...]
```

Run `sort-yaml -h` for generated option details and `sort-yaml -v` for the installed version.

## Notes

- Reads YAML from arguments, files, or stdin and prints normalized YAML.

## Examples

### Sort a locale file

```bash
sort-yaml config/locales/en.yml
```
