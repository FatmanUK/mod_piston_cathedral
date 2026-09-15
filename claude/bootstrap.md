# Piston Cathedral — Bootstrap Markdown Manifest (v4)

**Project:** Piston Cathedral
**Status:** All 11 patterns finalized and reconciled against the project's GitHub repo. Order list expanded to 22 entries. Not yet compiled/tested in MilkyTracker.
**Tracker:** MilkyTracker
**Platform:** Linux / PikaOS
**Target format:** 4-channel ProTracker MOD
**Repo:** https://github.com/FatmanUK/mod_piston_cathedral (branch `mother`) — folders `claude/`, `metadata/` (`song.yml`), `patterns/` (`pattern00.md`–`pattern09.md`, `pattern0a.md`)

---

## 1. Current Goal

All composition and reconciliation work is done. Immediate objective: compile via the custom compiler and do a full playthrough in MilkyTracker.

---

## 2. State of Play

### Identity
- Title: **Piston Cathedral**
- Speed: `06` hex | Tempo: `96` hex (150 BPM) → 1 row = 0.1s, 1 pattern (64 rows) = 6.4s
- 4 channels, 64 rows/pattern, ProTracker 2 (PT2) compatible only
- Ends in a definite coda (no fadeout) — achieved in Pattern 08

### Source-of-Truth Hierarchy (unchanged)
1. Auditioned project files (now the GitHub repo's `metadata/` and `patterns/` folders) are authoritative for: exact sample loop points, exact sample volumes, exact per-row volume edits, exact finetune values, any last by-ear edits.
2. This bootstrap file is authoritative for: project architecture, pattern roles, order list, note/rhythm/effect structure, final sample identities, tested status.
3. Sample archives (ST-01, ST-02) are only the source of the sample files.

### Instrument Set (final, 9 instruments — HeavySynth removed)

**HeavySynth (formerly instrument 7) has been removed entirely** — it was judged to be bulking up the mod without earning its place. All later instrument IDs shifted down by one as a result: Siren `08`→`07`, Strings7 `09`→`08`, Tallic `0A`→`09`. All patterns below use the corrected/current numbering.

| ID | Sample | Source | Volume | Finetune | Loop | Note range |
|---|---|---|---|---|---|---|
| 1 | linnkick | ST-02 | `40` | `00` | none | fixed `C-4` (unpitched) — very quiet even at max; mitigated via arrangement |
| 2 | Snare7 | ST-02 | `34` | `00` | none | fixed `C-4` (unpitched) |
| 3 | HiHat2 | ST-01 | `26` | `00` | none | fixed `C-4` (unpitched) — debut Pattern 06 |
| 4 | MetalKeys | ST-01 | `18` | `00` | start `2332`, len `13D` — seamless (0 discontinuity) | octaves 3–4 (`C-3`–`B-4`), high-pitched |
| 5 | Mechanic2 | ST-01 | `40` | `00` | none | fixed `C-4` (unpitched) — unsuitable for isolated stabs at full envelope (peaks ~55–65% into sample); works layered with Snare7 (Forge), or as an isolated toll when its natural swell is overridden by a forced `A02` volume-slide decay (see Pattern 07) |
| 6 | MonsterBass | ST-01 | `34` | `00` | none | octaves 4–5 (`C-4`–`B-5`), low-pitched |
| 7 | Siren | ST-02 | `2A` | `00` | none | octaves 3–4 (`C-3`–`B-4`), high-pitched |
| 8 | Strings7 | ST-01 | `2A` | `00` | start `0090`, len `2571` — verified 0 discontinuity, strong phase alignment | octaves 4–5 (`C-4`–`B-5`), low-pitched — the Bellows/drone voice |
| 9 | Tallic | ST-02 | `34` | `00` | none | fixed `C-4` (unpitched) — sharp immediate attack, clean continuous decay; used for isolated stabs/echoes (Embers patterns) |

Finetune `00` across the board: accepted risk, no historical per-sample finetune data exists for ST-01/ST-02 (predates the finetune field).

### Structural Arc (final)

A cathedral built of engine parts — gears for stained glass, pistons for pipe organs, steam for incense.

1. Invocation
2. The Nave
3. Liturgy
4. The Forge (climax)
5. Embers (comedown)
6. Requiem
7. Recessional / Coda

### Motif Map (final)

| Motif | Name | Character | Instruments |
|---|---|---|---|
| I | Ignition | Rhythmic backbone, driving mechanical pulse | linnkick + MonsterBass ostinato |
| II | Choir of Gears | Melodic "chant" figure, call-and-response | MetalKeys (lead), Mechanic2 punctuation |
| III | Bellows | Sustained harmonic bed, swells at transitions | Strings7 (looped drone) |
| IV | Klaxon | Chromatic tension figure, rising/falling wail | Siren |
| V | Hammerfall | Syncopated escalation device, climax only | Snare7 + Mechanic2 layered, HiHat2 fills |
| VI | Threshold | Treatment, not a new sample: Ignition densifies, Klaxon grows insistent, building into a climax | Reuses 1/2/6/7 |
| VII | Embers | Treatment, mirror of Threshold: dying reverberation (Tallic echo cascade) and an early return of the Bellows drone (rather than a new sample), receding from the climax into Requiem | Tallic (9), Strings7 (8, early re-entry), reuses 1/2/4/6/7 |

### Final Pattern-Role Plan (all 11 finalized)

| Pattern | Role | Motifs present |
|---|---|---|
| 00 | Invocation | III (rise→peak→fall) + IV (4-note wail arc) |
| 01 | Nave | I (enters) + III (continues) |
| 02 | Liturgy A | I + II (ascending call-response) + III |
| 03 | Liturgy B | I + II (descending, inverted, thinned) + III + IV (single interjection) |
| 04 | Bridge (Threshold) | VI — I densifies (quarter→8th→16th), IV insistent (17 hits, C-3→E-4) |
| 05 | Forge A (Climax) | I (8th notes) + II (aggressive run) + IV (F-4→B-4, capped `C30`) + V (debut); Ch1 drone drops at row 32, doesn't resume automatically |
| 06 | Forge B (Climax variant) | I + II (melodic inversion around D#4) + IV (descending mirror, B-4→F-4, capped `C30`) + V (syncopated variant, HiHat2 debut) |
| 07 | Requiem | III (returns, fresh trigger) + II (chant every 8 rows, Mechanic2 response given a real hit-then-forced-decay via `C30`+`A02`, resolving the "cliff vs. inaudible" conflict); I silent |
| 08 | Recessional / Coda | III + I (Nave-density) + II (final statement) + IV (descending, capped `C30`) + silence (row 44) + unison flourish (row 45, Ch4 at `C30`) + closing bass thump (row 55, `C40`) |
| 09 | Embers A | VII — 12-step proportional Tallic decay cascade (`C38`→`C12`) + full Nave-density I + IV (6-step wail, later steps deliberately louder than an earlier draft — a wider, less steep fade) + II preview (single quiet MetalKeys note, row 58) |
| 0A | Embers B | VII continues — final Tallic wisp (row 0, `C10`) + full Nave-density I + II (chant restatement, rows 8/24/40/56) + **Strings7 (Bellows) returns early** at row 16 (`C40` then 4-row `A02` decay), foreshadowing Requiem by literally being the same instrument returning rather than a substitute |

### Order List (final — matches `metadata/song.yml`)

`00 01 02 03 02 03 04 05 06 05 06 09 0A 07 02 03 02 03 04 06 05 08`

22 entries × 64 rows × 0.1s/row = **140.8 seconds**, within the 120–180s target.

Structural notes on this order list vs. the earlier draft: Forge A/B now gets a back-to-back double pass early (`05 06 05 06`) rather than one pass; the final section reverses the Forge order (`06 05`) for a mirrored recap; and the Liturgy pass after Requiem repeats twice (`02 03 02 03`). This resolves the two closed GitHub issues on the repo: **#1 "Pattern 10 too sparse"** (addressed via the Embers B rework — Tallic wisp + early Strings7 return) and **#2 "Consider removing the extra repeat of 2-3 and add it in the later section; also repeat 5-6"** (addressed via this exact restructuring).

### Compatibility Rules

```text
4 channels only
ProTracker-compatible effects only
No XM-only composition features
No notes below C-3
No notes above B-5
Forward sample loops only
No ping-pong loops
Pattern reuse preferred
Exact final runtime is unimportant (target 120-180s, not strict)
```

Bonus target: final `.mod` under 40KB (difficult, not required).

### Arbitrary Guidelines
- All unpitched percussion hits written as note `C-4`.
- Lone numbers output in hex format, **uppercase**.
- Explain effects the first time they're used.

### Effects Used
- `Axy` — volume slide, x=up rate/tick, y=down rate/tick. Applies once per **tick** (5×/row at Speed `06`).
- `Cxx` — set channel volume directly to `xx` (hex, `00`–`40`).
- `E0x` — hardware LED filter toggle (`E00`=on, `E01`=off). New in Pattern 00, row 0, Ch2 (`--- -- E00`) — a bare effect with no note/instrument, toggling the filter state without triggering a sound on that channel.

---

## 3. Dependency Map

- **MilkyTracker** — testing tracker (PikaOS/Linux)
- **PikaOS** — testing operating system
- **ST-01 / ST-02** — Amiga sample archives (raw 8-bit signed PCM, no header), source of all 9 instruments
- **Custom compiler** (user-authored) — converts the markdown pattern-row format into the final `.mod` binary; requires uppercase hex in instrument/effect fields and decimal row numbers
- **GitHub repo** `FatmanUK/mod_piston_cathedral` (branch `mother`) — now the working store for `metadata/song.yml` and `patterns/*.md`; treated as the auditioned-project-files source per the source-of-truth hierarchy

---

## 4. Open Issues

1. **Pattern 07 (Requiem) Mechanic2 — worth one ear-check:** the forced `A02` decay after the `C30` trigger should mask Mechanic2's natural mid-sample swell, but since the sample isn't cut or retriggered after row 15/31/47/63, it keeps playing quietly through its later envelope rise. Worth listening for a faint secondary "bump" a few rows after each toll fades — if audible, tightening the `A02` rate or adding a decay row would flatten it further. Not blocking; flagged as a listen-for item.
2. **Not yet compiled/tested in MilkyTracker** — all reconciliation has been against markdown data, not actual playback.
3. **Loop-point-search methodology** (carried over, still open): investigate whether the two-part technique used for Strings7's loop point (phase-match window comparison + wrap-discontinuity check, together) generalizes to other samples.
4. **GitHub issues #1 and #2 on the repo are now closed** — both addressed by the current order list and Embers B rework (see order list notes above). No outstanding repo issues at time of writing.

---

## 5. "Golden" Data — Current/Approved

### Instrument definitions

```yaml
title: 'Piston Cathedral'
speed: 0x06
bpm: 0x96
instruments:
  - id: 1
    source: 'st02'
    name: 'ST-02/linnkick'  # very quiet
    volume: 0x40
  - id: 2
    source: 'st02'
    name: 'ST-02/Snare7'
    volume: 0x34
  - id: 3
    source: 'st01'
    name: 'ST-01/HiHat2'
    volume: 0x26
  - id: 4
    source: 'st01'
    name: 'ST-01/MetalKeys'
    volume: 0x18
    start: 0x2332
    length: 0x013D
  - id: 5
    source: 'st01'
    name: 'ST-01/Mechanic2'
    volume: 0x40
  - id: 6
    source: 'st01'
    name: 'ST-01/MonsterBass'
    volume: 0x34
  - id: 7
    source: 'st02'
    name: 'ST-02/Siren'
    volume: 0x2A
  - id: 8
    source: 'st01'
    name: 'ST-01/Strings7'
    volume: 0x2A
    start: 0x0090
    length: 0x2571
  - id: 9
    source: 'st02'
    name: 'ST-02/Tallic'
    volume: 0x34
orderList:
  - 0x0
  - 0x1
  - 0x2
  - 0x3
  - 0x2
  - 0x3
  - 0x4
  - 0x5
  - 0x6
  - 0x5
  - 0x6
  - 0x9
  - 0xA
  - 0x7
  - 0x2
  - 0x3
  - 0x2
  - 0x3
  - 0x4
  - 0x6
  - 0x5
  - 0x8
```

### Pattern Row Format (for the compiler)

```text
| RR | NNN II EEE | NNN II EEE | NNN II EEE | NNN II EEE |
```
- `RR` = row number, **decimal**
- `NNN` = note, `---` = no note
- `II` = instrument slot, **uppercase hex**, `--` = no instrument
- `EEE` = effect, **uppercase hex**, `---` = no effect
- Table format: MarkDown table, headers `Row | Ch1 | Ch2 | Ch3 | Ch4`
- Omit entirely empty lines

### Pattern 00 — Invocation

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 00 | D-4 08 A20 | --- -- E00 | --- -- --- | --- -- --- |
| 01 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 02 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 03 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 10 | --- -- --- | --- -- --- | --- -- --- | C-3 07 C0A |
| 24 | --- -- --- | --- -- --- | --- -- --- | F-3 07 C10 |
| 42 | --- -- --- | --- -- --- | --- -- --- | G#3 07 C14 |
| 50 | --- -- --- | --- -- --- | --- -- --- | D#3 07 C0C |
| 56 | --- -- A02 | --- -- --- | --- -- --- | --- -- --- |
| 57 | --- -- A02 | --- -- --- | --- -- --- | --- -- --- |
| 58 | --- -- A02 | --- -- --- | --- -- --- | --- -- --- |

### Pattern 01 — The Nave

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 0 | --- -- A20 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 1 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 2 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 3 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 4 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 6 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 8 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 20 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 22 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 38 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 40 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 44 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 54 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |

### Pattern 02 — Liturgy A

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 0 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 2 | --- -- --- | --- -- --- | --- -- --- | G#3 04 --- |
| 4 | --- -- --- | C-4 01 --- | --- -- --- | B-3 04 --- |
| 6 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 8 | --- -- --- | C-4 01 --- | D-4 06 --- | C-4 05 --- |
| 10 | --- -- --- | --- -- --- | --- -- --- | D-4 04 --- |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 18 | --- -- --- | --- -- --- | --- -- --- | G#3 04 --- |
| 20 | --- -- --- | C-4 01 --- | --- -- --- | B-3 04 --- |
| 22 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | C-4 05 --- |
| 26 | --- -- --- | --- -- --- | --- -- --- | D-4 04 --- |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 34 | --- -- --- | --- -- --- | --- -- --- | G#3 04 --- |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | B-3 04 --- |
| 38 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 40 | --- -- --- | C-4 01 --- | D-4 06 --- | C-4 05 --- |
| 42 | --- -- --- | --- -- --- | --- -- --- | D-4 04 --- |
| 44 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 50 | --- -- --- | --- -- --- | --- -- --- | G#3 04 --- |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | B-3 04 --- |
| 54 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | C-4 05 --- |
| 58 | --- -- --- | --- -- --- | --- -- --- | D-4 04 --- |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | C-4 05 --- |
| 62 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |

### Pattern 03 — Liturgy B

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 0 | --- -- --- | C-4 01 --- | D-4 06 --- | D-4 04 --- |
| 2 | --- -- --- | --- -- --- | --- -- --- | B-3 04 --- |
| 4 | --- -- --- | C-4 01 --- | --- -- --- | G#3 04 --- |
| 6 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 8 | --- -- --- | C-4 01 --- | D-4 06 --- | C-4 05 --- |
| 10 | --- -- --- | --- -- --- | --- -- --- | F#3 04 --- |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | D-4 04 --- |
| 18 | --- -- --- | --- -- --- | --- -- --- | B-3 04 --- |
| 20 | --- -- --- | C-4 01 --- | --- -- --- | G#3 04 --- |
| 22 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | C-4 05 --- |
| 26 | --- -- --- | --- -- --- | --- -- --- | F#3 04 --- |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | D-4 04 --- |
| 34 | --- -- --- | --- -- --- | --- -- --- | B-3 04 --- |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | G#3 04 --- |
| 38 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 40 | --- -- --- | C-4 01 --- | D-4 06 --- | C-4 05 --- |
| 42 | --- -- --- | --- -- --- | --- -- --- | F#3 04 --- |
| 44 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | D-4 04 --- |
| 50 | --- -- --- | --- -- --- | --- -- --- | B-3 04 --- |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | G#3 04 --- |
| 54 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | F#3 04 --- |
| 58 | --- -- --- | --- -- --- | --- -- --- | F-3 07 C12 |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |

### Pattern 04 — Bridge (Threshold)

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 0 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 2 | --- -- --- | --- -- --- | --- -- --- | C-3 07 C0A |
| 4 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 6 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 8 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 10 | --- -- --- | --- -- --- | --- -- --- | C#3 07 C0C |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 18 | --- -- --- | --- -- --- | --- -- --- | D-3 07 C0E |
| 20 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 22 | --- -- --- | C-4 01 --- | F-4 06 --- | --- -- --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | D#3 07 C10 |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | E-3 07 C13 |
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 34 | --- -- --- | C-4 01 --- | --- -- --- | F-3 07 C16 |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 38 | --- -- --- | C-4 01 --- | F-4 06 --- | F#3 07 C19 |
| 40 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 42 | --- -- --- | C-4 01 --- | --- -- --- | G-3 07 C1C |
| 44 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 45 | --- -- --- | --- -- --- | --- -- --- | G#3 07 C1F |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | A-3 07 C22 |
| 50 | --- -- --- | C-4 01 --- | --- -- --- | A#3 07 C25 |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | B-3 07 C28 |
| 54 | --- -- --- | C-4 01 --- | F-4 06 --- | C-4 07 C2B |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | C#4 07 C2E |
| 57 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 58 | --- -- --- | C-4 01 --- | --- -- --- | D-4 07 C30 |
| 59 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | D#4 07 C34 |
| 61 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | C-4 01 --- | C-4 06 --- | E-4 07 C38 |
| 63 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |

### Pattern 05 — Forge A (Climax)

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 00 | --- -- C10 | C-4 01 --- | D-4 06 --- | G#3 04 --- |
| 02 | --- -- --- | C-4 01 --- | --- -- --- | B-3 04 --- |
| 04 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 06 | --- -- --- | C-4 01 --- | F-4 06 --- | D-4 04 --- |
| 08 | --- -- --- | C-4 01 --- | D-4 06 --- | D#4 04 --- |
| 10 | --- -- --- | C-4 01 --- | --- -- --- | D-4 04 --- |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | B-3 04 --- |
| 14 | --- -- --- | C-4 01 --- | C-4 06 --- | G#3 04 --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | G#3 04 --- |
| 18 | --- -- --- | C-4 01 --- | --- -- --- | B-3 04 --- |
| 20 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 22 | --- -- --- | C-4 01 --- | F-4 06 --- | D-4 04 --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | D#4 04 --- |
| 26 | --- -- --- | C-4 01 --- | --- -- --- | D-4 04 --- |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | B-3 04 --- |
| 30 | --- -- --- | C-4 01 --- | C-4 06 --- | G#3 04 --- |
| 32 | C-4 05 --- | C-4 01 --- | D-4 06 --- | C-4 02 --- |
| 34 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 38 | C-4 05 --- | C-4 01 --- | F-4 06 --- | C-4 02 --- |
| 40 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 42 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 44 | C-4 05 --- | C-4 01 --- | --- -- --- | C-4 02 --- |
| 45 | C-4 05 --- | --- -- --- | --- -- --- | C-4 02 --- |
| 46 | --- -- --- | C-4 01 --- | C-4 06 --- | --- -- --- |
| 48 | C-4 05 --- | C-4 01 --- | D-4 06 --- | F-4 07 C20 |
| 50 | --- -- --- | C-4 01 --- | --- -- --- | G-4 07 C24 |
| 52 | C-4 05 --- | C-4 01 --- | --- -- --- | G#4 07 C28 |
| 54 | --- -- --- | C-4 01 --- | F-4 06 --- | A-4 07 C2C |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | A#4 07 C30 |
| 58 | --- -- --- | C-4 01 --- | --- -- --- | B-4 07 C30 |
| 60 | C-4 05 --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | C-4 01 --- | C-4 06 --- | --- -- --- |
| 63 | C-4 02 --- | --- -- --- | --- -- --- | --- -- --- |

### Pattern 06 — Forge B (Climax variant)

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 00 | --- -- --- | C-4 01 --- | D-4 06 --- | A#4 04 --- |
| 02 | --- -- --- | C-4 01 --- | --- -- --- | G-4 04 --- |
| 04 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 06 | --- -- --- | C-4 01 --- | F-4 06 --- | E-4 04 --- |
| 08 | --- -- --- | C-4 01 --- | D-4 06 --- | D#4 04 --- |
| 10 | --- -- --- | C-4 01 --- | --- -- --- | E-4 04 --- |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | G-4 04 --- |
| 14 | --- -- --- | C-4 01 --- | C-4 06 --- | A#4 04 --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | A#4 04 --- |
| 18 | --- -- --- | C-4 01 --- | --- -- --- | G-4 04 --- |
| 20 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 22 | --- -- --- | C-4 01 --- | F-4 06 --- | E-4 04 --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | D#4 04 --- |
| 26 | --- -- --- | C-4 01 --- | --- -- --- | E-4 04 --- |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | G-4 04 --- |
| 30 | --- -- --- | C-4 01 --- | C-4 06 --- | A#4 04 --- |
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 33 | C-4 05 --- | --- -- --- | --- -- --- | C-4 02 --- |
| 34 | --- -- --- | C-4 01 --- | --- -- --- | C-4 03 --- |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | C-4 03 --- |
| 38 | --- -- --- | C-4 01 --- | F-4 06 --- | C-4 03 --- |
| 39 | C-4 05 --- | --- -- --- | --- -- --- | C-4 02 --- |
| 40 | --- -- --- | C-4 01 --- | D-4 06 --- | C-4 03 --- |
| 42 | --- -- --- | C-4 01 --- | --- -- --- | C-4 03 --- |
| 43 | C-4 05 --- | --- -- --- | --- -- --- | C-4 02 --- |
| 44 | --- -- --- | C-4 01 --- | --- -- --- | C-4 03 --- |
| 46 | C-4 05 --- | C-4 01 --- | C-4 06 --- | C-4 02 --- |
| 47 | --- -- --- | --- -- --- | --- -- --- | C-4 03 --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | B-4 07 C20 |
| 50 | --- -- --- | C-4 01 --- | --- -- --- | A#4 07 C24 |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | A-4 07 C28 |
| 54 | --- -- --- | C-4 01 --- | F-4 06 --- | G#4 07 C2C |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | G-4 07 C30 |
| 58 | --- -- --- | C-4 01 --- | --- -- --- | F-4 07 C30 |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | C-4 01 --- | C-4 06 --- | --- -- --- |
| 63 | C-4 02 --- | --- -- --- | --- -- --- | --- -- --- |

### Pattern 07 — Requiem (final compromise version)

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 00 | D-4 08 A20 | --- -- --- | --- -- --- | --- -- --- |
| 01 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 02 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 03 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 08 | --- -- --- | --- -- --- | --- -- --- | G#3 04 --- |
| 12 | --- -- --- | --- -- --- | C-4 05 C30 | --- -- --- |
| 13 | --- -- --- | --- -- --- | --- -- A02 | --- -- --- |
| 14 | --- -- --- | --- -- --- | --- -- A02 | --- -- --- |
| 15 | --- -- --- | --- -- --- | --- -- A02 | --- -- --- |
| 24 | --- -- --- | --- -- --- | --- -- --- | B-3 04 --- |
| 28 | --- -- --- | --- -- --- | C-4 05 C30 | --- -- --- |
| 29 | --- -- --- | --- -- --- | --- -- A02 | --- -- --- |
| 30 | --- -- --- | --- -- --- | --- -- A02 | --- -- --- |
| 31 | --- -- --- | --- -- --- | --- -- A02 | --- -- --- |
| 40 | --- -- --- | --- -- --- | --- -- --- | D-4 04 --- |
| 44 | --- -- --- | --- -- --- | C-4 05 C30 | --- -- --- |
| 45 | --- -- --- | --- -- --- | --- -- A02 | --- -- --- |
| 46 | --- -- --- | --- -- --- | --- -- A02 | --- -- --- |
| 47 | --- -- --- | --- -- --- | --- -- A02 | --- -- --- |
| 56 | --- -- --- | --- -- --- | --- -- --- | D#4 04 --- |
| 60 | --- -- --- | --- -- --- | C-4 05 C30 | --- -- --- |
| 61 | --- -- A02 | --- -- --- | --- -- A02 | --- -- --- |
| 62 | --- -- A02 | --- -- --- | --- -- A02 | --- -- --- |
| 63 | --- -- A02 | --- -- --- | --- -- A02 | --- -- --- |

Mechanic2 (Ch3) is triggered at full-ish volume (`C30`) then forced down via `A02` over 3 rows before its own envelope would naturally swell — an artificial decay imposed on top of the sample's real shape, resolving the "cliff vs. inaudible" conflict without adding more hits. See Open Issue #1 for a minor follow-up worth an ear-check.

### Pattern 08 — Recessional / Coda

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 0 | D-4 08 A20 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 1 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 2 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 3 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 4 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 6 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 8 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | G#3 04 --- |
| 18 | --- -- --- | --- -- --- | --- -- --- | C-4 05 --- |
| 20 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 22 | --- -- --- | --- -- --- | F-4 06 --- | B-3 04 --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | C-4 05 --- |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | D-4 04 --- |
| 31 | --- -- --- | --- -- --- | --- -- --- | C-4 05 --- |
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | B-4 07 C10 |
| 34 | --- -- --- | C-4 01 --- | --- -- --- | A#4 07 C14 |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | A-4 07 C18 |
| 38 | --- -- --- | C-4 01 --- | F-4 06 --- | G#4 07 C20 |
| 40 | --- -- --- | C-4 01 --- | --- -- --- | G-4 07 C28 |
| 42 | --- -- --- | C-4 01 --- | --- -- --- | F#4 07 C30 |
| 45 | C-4 05 --- | C-4 01 --- | D-4 06 C40 | C-4 02 C30 |
| 55 | --- -- --- | --- -- --- | D-4 06 C40 | --- -- --- |

### Pattern 09 — Embers A

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 00 | C-4 09 C38 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 04 | C-4 09 C32 | C-4 01 --- | --- -- --- | --- -- --- |
| 06 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 08 | C-4 09 C2D | C-4 01 --- | D-4 06 --- | A-3 07 C30 |
| 12 | C-4 09 C29 | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | C-4 09 C25 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 20 | C-4 09 C21 | C-4 01 --- | --- -- --- | F#3 07 C28 |
| 22 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 24 | C-4 09 C1E | C-4 01 --- | D-4 06 --- | --- -- --- |
| 28 | C-4 09 C1B | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 32 | C-4 09 C18 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 36 | C-4 09 C16 | C-4 01 --- | --- -- --- | D#3 07 C20 |
| 38 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 40 | C-4 09 C14 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 44 | C-4 09 C12 | C-4 01 --- | --- -- --- | --- -- --- |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | C-3 07 C18 |
| 54 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 58 | --- -- --- | --- -- --- | --- -- --- | G#3 04 --- |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |

Note: the Siren wail's later steps (`C28`, `C20`, `C18`) are louder than an earlier draft — a deliberate rake adjustment so the wail stays more present throughout rather than fading steeply. Ch1's Tallic cascade is unchanged: 12 hits, `C38`→`C12`, monotonically decreasing.

### Pattern 0A — Embers B

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 00 | C-4 09 C10 | C-4 01 --- | D-4 06 --- | --- 04 C00 |
| 04 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 06 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 08 | --- -- --- | C-4 01 --- | D-4 06 --- | G#3 04 --- |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | D-4 08 C40 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 17 | --- -- A02 | --- -- --- | --- -- --- | --- -- --- |
| 18 | --- -- A02 | --- -- --- | --- -- --- | --- -- --- |
| 19 | --- -- A02 | --- -- --- | --- -- --- | --- -- --- |
| 20 | --- -- A02 | C-4 01 --- | --- -- --- | --- -- --- |
| 22 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | B-3 04 --- |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 38 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 40 | --- -- --- | C-4 01 --- | D-4 06 --- | D-4 04 --- |
| 44 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 54 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | D#4 04 --- |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |

Row 0 Ch1 (`C10`) is the cascade's final wisp, continuing from Pattern 09. Row 0 Ch4 is a note-off (kills MetalKeys ringing over from Pattern 09 row 58). Row 16's Strings7 return (`C40` then `A02` decay over rows 17–20) replaces the earlier HeavySynth-based fix — the actual Bellows drone re-entering early rather than a substitute instrument standing in for it.

---

## 6. Testing State

**No pattern has been tested in MilkyTracker or compiled to a `.mod` yet.** All data above has been reconciled between this conversation's records and the user's own GitHub repo (`metadata/song.yml` and `patterns/*.md` on branch `mother`), which is now the authoritative working copy. Reconciliation is complete; actual playback has not happened yet.

---

## 7. Next Steps

- Compile via the custom compiler and do a full playthrough in MilkyTracker
- Ear-check Pattern 07's Mechanic2 tolls for the faint secondary envelope "bump" noted in Open Issue #1
- Investigate whether the loop-point-search technique (phase-match + wrap-discontinuity check) generalizes to other samples
