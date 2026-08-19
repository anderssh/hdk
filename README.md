# Hønefoss Dykkerklubb

Dette repoet inneholder nettsiden til Hønefoss Dykkerklubb. Siden er bygget med
Jekyll og temaet Just the Docs, og publiseres med GitHub Pages.

Publisert side:

<https://anderssh.github.io/hdk>

## Innhold

- `index.md`: forsiden
- `om-klubben.md`: informasjon om klubben, aktivitetstilbud, utstyr og kontakt
- `bli-medlem.md`: innmelding, medlemsfordeler og Spond-lenke
- `kontakt.md`: kontaktinfo for medlemskap, utstyr, leie og oppdrag
- `_config.yml`: Jekyll- og Just the Docs-oppsett
- `Gemfile.lock`: låste Ruby-gems for forutsigbare bygg
- `_sass/custom/custom.scss`: lokal styling for siden
- `assets/images/`: logo og bilder av klubbens utstyr

## Lokal kjøring

Kjør siden lokalt med:

```sh
./scripts/jekyll-local.sh
```

Åpne deretter:

```text
http://localhost:4000
```

Scriptet kjører `bundle install` og starter `bundle exec jekyll serve`.
Det setter også en macOS-tilpasning for C++-headere som trengs ved installasjon
av enkelte Ruby-gems.

## Bygg

For å bare bygge siden:

```sh
bundle exec jekyll build
```

Den genererte siden legges i `_site/`.

## Publisering

GitHub Actions bygger og publiserer siden ved push til `main`.

Relevant workflow:

- `.github/workflows/pages.yml`

## Vedlikehold

Når du legger til en ny side:

1. Opprett en `.md`-fil i rotmappen.
2. Legg inn front matter med `title` og `nav_order`.
3. Kjør lokal build før commit.

Eksempel:

```md
---
title: Ny side
nav_order: 4
description: Kort beskrivelse av siden.
---

# Ny side
```

## Lisens

Repoet er lisensiert under MIT-lisensen. Se `LICENSE`.
