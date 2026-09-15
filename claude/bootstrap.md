# Piston Cathedral — Bootstrap Markdown Manifest (v3)

**Project:** Piston Cathedral
**Status:** 11 patterns composed (00–10). Full hex-case sweep applied. Order list drafted but not finalized. User is doing looped listens for final by-ear review. One data gap — see Open Issues #1.
**Tracker:** MilkyTracker
**Platform:** Linux / PikaOS
**Target format:** 4-channel ProTracker MOD

---

## 1. Current Goal

User is doing looped listens of the current arrangement. Immediate objective once that's done: get all 11 patterns into MilkyTracker via the compiler, confirm the order list, and do a full playthrough.

---

## 2. State of Play

### Identity
- Title: **Piston Cathedral**
- Speed: `06` hex | Tempo: `96` hex (150 BPM) → 1 row = 0.1s, 1 pattern (64 rows) = 6.4s
- 4 channels, 64 rows/pattern, ProTracker 2 (PT2) compatible only
- Ends in a definite coda (no fadeout) — achieved in Pattern 08

### Source-of-Truth Hierarchy (unchanged)
1. Auditioned project files are authoritative for: exact sample loop points, exact sample volumes, exact per-row volume edits, exact finetune values, any last by-ear edits.
2. This bootstrap file is authoritative for: project architecture, pattern roles, order list, note/rhythm/effect structure, final sample identities, tested status.
3. Sample archives (ST-01, ST-02) are only the source of the sample files.

### Instrument Set (final, 10 instruments)

| ID | Sample | Source | Volume | Finetune | Loop | Note range |
|---|---|---|---|---|---|---|
| 1 | linnkick | ST-02 | `40` | `00` | none | fixed `C-4` (unpitched) — very quiet even at max; mitigated via arrangement |
| 2 | Snare7 | ST-02 | `34` | `00` | none | fixed `C-4` (unpitched) |
| 3 | HiHat2 | ST-01 | `26` | `00` | none | fixed `C-4` (unpitched) — debut Pattern 06 |
| 4 | MetalKeys | ST-01 | `18` | `00` | start `2332`, len `13D` — seamless (0 discontinuity) | octaves 3–4 (`C-3`–`B-4`), high-pitched |
| 5 | Mechanic2 | ST-01 | `40` | `00` | none | fixed `C-4` (unpitched) — NOTE: unsuitable for isolated stabs (envelope peaks ~55–65% into sample, cuts sound like an interruption when heard alone); fine when layered with Snare7 (Forge patterns), which masks the slow build |
| 6 | MonsterBass | ST-01 | `34` | `00` | none | octaves 4–5 (`C-4`–`B-5`), low-pitched |
| 7 | HeavySynth | ST-01 | `18` | `00` | none — one-shot, deliberately unlooped | octaves 4–5 (`C-4`–`B-5`), low-pitched — envelope swells across its length (RMS rises through its quarters), used as a rising one-shot in Pattern 10 |
| 8 | Siren | ST-02 | `2A` | `00` | none | octaves 3–4 (`C-3`–`B-4`), high-pitched |
| 9 | Strings7 | ST-01 | `2A` | `00` | start `0090`, len `2571` — verified 0 discontinuity, strong phase alignment | octaves 4–5 (`C-4`–`B-5`), low-pitched — the Bellows/drone voice |
| A | Tallic | ST-02 | `34` | `00` | none | fixed `C-4` (unpitched) — sharp immediate attack, clean continuous decay; replaces Mechanic2 for all isolated-stab/echo use (Embers patterns) |

Finetune `00` across the board: accepted risk, no historical per-sample finetune data exists for ST-01/ST-02 (these predate the finetune field, which postdates the 15-sample Ultimate SoundTracker format these disks were built for).

**Instrument ID note:** instrument 10 (Tallic) is written as hex `0A` in the instrument-slot field, not decimal `10` — caught and corrected mid-project; this manifest and all pattern data below use the corrected hex form throughout.

### Structural Arc (seeded from the title, final)

A cathedral built of engine parts — gears for stained glass, pistons for pipe organs, steam for incense.

1. Invocation
2. The Nave
3. Liturgy
4. The Forge (climax)
5. **Embers (comedown)**
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
| VI | Threshold | Treatment, not a new sample: Ignition densifies, Klaxon grows insistent, building into a climax | Reuses 1/2/6/8 |
| VII | Embers | Treatment, mirror of Threshold: dying reverberation (Tallic echo cascade) and a final HeavySynth swell, receding from the climax | Tallic (A), HeavySynth (7), reuses 1/2/4/6/8 |

### Final Pattern-Role Plan (all 11 composed)

| Pattern | Role | Motifs present |
|---|---|---|
| 00 | Invocation | III (rise→peak→fall) + IV (4-note wail arc) |
| 01 | Nave | I (enters) + III (continues) |
| 02 | Liturgy A | I + II (ascending call-response) + III |
| 03 | Liturgy B | I + II (descending, inverted, thinned) + III + IV (single interjection) |
| 04 | Bridge (Threshold) | VI — I densifies (quarter→8th→16th), IV insistent (17 hits, C-3→E-4) |
| 05 | Forge A (Climax) | I (8th notes) + II (aggressive run) + IV (F-4→B-4) + V (debut); Ch1 drone drops at row 32, doesn't resume automatically |
| 06 | Forge B (Climax variant) | I + II (melodic inversion around D#4) + IV (descending mirror, B-4→F-4) + V (syncopated variant, HiHat2 debut) |
| 07 | Requiem | III (returns, fresh trigger) + II (slow, 4 notes/64 rows, hushed tolls); I silent |
| 08 | Recessional / Coda | III + I (Nave-density) + II (final statement) + IV (descending) + silence (row 44) + unison flourish (row 45) + closing bass thump (row 55) |
| 09 | Embers A | VII — 12-step proportional Tallic decay cascade (Ch1) + full Nave-density I + III-less (drone absent, dropped since Forge) + IV (6-step descending wail) + II preview (single quiet MetalKeys note, row 58) |
| 10 | Embers B | VII continues — 13th/final Tallic wisp (row 0) + full Nave-density I + II (final full chant restatement, G#3→B-3→D-4→D#4) + HeavySynth one-shot swell (row 40, timed with chant's penultimate note) into Requiem |

### Draft Order List (NOT yet finalized by user)

`00 01 02 03 02 03 02 03 04 05 06 05 09 10 07 02 03 04 06 08`

20 entries × 64 rows × 0.1s/row = **128.0 seconds**, within the 120–180s target.

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
- Lone numbers output in hex format, **uppercase** (e.g. "3F", not "3f") — compiler requires uppercase hex; this was missed in earlier drafts and has now been corrected throughout.
- Explain effects the first time they're used.

### Effects Used
- `Axy` — volume slide, x=up rate/tick, y=down rate/tick. Applies once per **tick**, not per row — at Speed `06` that's 5 applications/row. (Source of an earlier bug: `A0A` was miscalculated assuming once-per-row application, causing an unintended crash-to-silence in Pattern 00; corrected to `A02`.)
- `Cxx` — set channel volume directly to `xx` (hex, `00`–`40`).

---

## 3. Dependency Map

- **MilkyTracker** — testing tracker (PikaOS/Linux)
- **PikaOS** — testing operating system
- **ST-01 / ST-02** — Amiga sample archives (raw 8-bit signed PCM, no header), source of all 10 instruments
- **Custom compiler** (user-authored) — converts the markdown pattern-row format into the final `.mod` binary; **requires uppercase hex** in instrument/effect fields and **decimal row numbers** (both compiler quirks, not PT2 requirements)

---

## 4. Open Issues

1. **Missing data — Pattern 10, row 40, Ch1 (HeavySynth):** the user added a volume-fade effect to this trigger by ear, but the exact effect value was not communicated in this conversation. Currently recorded below as `D-4 07 ---` (no effect) — **this is known to be incomplete**. Per project policy, not guessing this value; user to supply the actual effect code for the golden record.
2. **Order list not finalized** — current draft is illustrative only.
3. **Not yet tested in MilkyTracker** — no pattern has been heard in the actual tracker or compiled to a `.mod`. User is currently doing looped listens of the reasoned-through data as a first-pass review.
4. **Loop-point-search methodology** (carried over from v2, still open): the two-part technique used for Strings7's loop point (phase-match window comparison + wrap-discontinuity check, together — discontinuity alone was proven insufficient by ear) — investigate whether this generalizes into a reusable procedure for other samples.
5. **Uppercase hex sweep** — completed for this manifest (all patterns below use corrected uppercase hex in instrument/effect fields). This was a real compiler-compatibility bug present in every pattern before this revision, not merely cosmetic.

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
    source: 'st01'
    name: 'ST-01/HeavySynth'
    volume: 0x18
    # no loop -- one-shot riser, used in Pattern 10
  - id: 8
    source: 'st02'
    name: 'ST-02/Siren'
    volume: 0x2A
  - id: 9
    source: 'st01'
    name: 'ST-01/Strings7'
    volume: 0x2A
    start: 0x0090
    length: 0x2571
  - id: 0xA
    source: 'st02'
    name: 'ST-02/Tallic'
    volume: 0x34
    # no loop -- one-shot, isolated stabs/echoes
```

### Pattern Row Format (for the compiler)

```text
| RR | NNN II EEE | NNN II EEE | NNN II EEE | NNN II EEE |
```
- `RR` = row number, **decimal** (compiler bug requires this — not hex)
- `NNN` = note, `---` = no note
- `II` = instrument slot, **uppercase hex**, `--` = no instrument
- `EEE` = effect, **uppercase hex**, `---` = no effect
- Table format: MarkDown table, headers `Row | Ch1 | Ch2 | Ch3 | Ch4`
- Omit entirely empty lines

### Pattern 00 — Invocation

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 00 | D-4 09 A20 | --- -- --- | --- -- --- | --- -- --- |
| 01 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 02 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 03 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 10 | --- -- --- | --- -- --- | --- -- --- | C-3 08 C0A |
| 24 | --- -- --- | --- -- --- | --- -- --- | F-3 08 C10 |
| 42 | --- -- --- | --- -- --- | --- -- --- | G#3 08 C14 |
| 50 | --- -- --- | --- -- --- | --- -- --- | D#3 08 C0C |
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
| 58 | --- -- --- | --- -- --- | --- -- --- | F-3 08 C12 |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |

### Pattern 04 — Bridge (Threshold)

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 0 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 2 | --- -- --- | --- -- --- | --- -- --- | C-3 08 C0A |
| 4 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 6 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 8 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 10 | --- -- --- | --- -- --- | --- -- --- | C#3 08 C0C |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 18 | --- -- --- | --- -- --- | --- -- --- | D-3 08 C0E |
| 20 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 22 | --- -- --- | C-4 01 --- | F-4 06 --- | --- -- --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | D#3 08 C10 |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | E-3 08 C13 |
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 34 | --- -- --- | C-4 01 --- | --- -- --- | F-3 08 C16 |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 38 | --- -- --- | C-4 01 --- | F-4 06 --- | F#3 08 C19 |
| 40 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 42 | --- -- --- | C-4 01 --- | --- -- --- | G-3 08 C1C |
| 44 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 45 | --- -- --- | --- -- --- | --- -- --- | G#3 08 C1F |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | A-3 08 C22 |
| 50 | --- -- --- | C-4 01 --- | --- -- --- | A#3 08 C25 |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | B-3 08 C28 |
| 54 | --- -- --- | C-4 01 --- | F-4 06 --- | C-4 08 C2B |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | C#4 08 C2E |
| 57 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 58 | --- -- --- | C-4 01 --- | --- -- --- | D-4 08 C30 |
| 59 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | D#4 08 C34 |
| 61 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | C-4 01 --- | C-4 06 --- | E-4 08 C38 |
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
| 48 | C-4 05 --- | C-4 01 --- | D-4 06 --- | F-4 08 C30 |
| 50 | --- -- --- | C-4 01 --- | --- -- --- | G-4 08 C34 |
| 52 | C-4 05 --- | C-4 01 --- | --- -- --- | G#4 08 C38 |
| 54 | --- -- --- | C-4 01 --- | F-4 06 --- | A-4 08 C3C |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | A#4 08 C40 |
| 58 | --- -- --- | C-4 01 --- | --- -- --- | B-4 08 C40 |
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
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | B-4 08 C30 |
| 50 | --- -- --- | C-4 01 --- | --- -- --- | A#4 08 C34 |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | A-4 08 C38 |
| 54 | --- -- --- | C-4 01 --- | F-4 06 --- | G#4 08 C3C |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | G-4 08 C40 |
| 58 | --- -- --- | C-4 01 --- | --- -- --- | F-4 08 C40 |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | C-4 01 --- | C-4 06 --- | --- -- --- |
| 63 | C-4 02 --- | --- -- --- | --- -- --- | --- -- --- |

### Pattern 07 — Requiem

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 00 | D-4 09 A20 | --- -- --- | --- -- --- | --- -- --- |
| 01 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 02 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 03 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 08 | --- -- --- | --- -- --- | --- -- --- | G#3 04 --- |
| 12 | --- -- --- | --- -- --- | C-4 05 C0C | --- -- --- |
| 24 | --- -- --- | --- -- --- | --- -- --- | B-3 04 --- |
| 28 | --- -- --- | --- -- --- | C-4 05 C0C | --- -- --- |
| 40 | --- -- --- | --- -- --- | --- -- --- | D-4 04 --- |
| 44 | --- -- --- | --- -- --- | C-4 05 C0C | --- -- --- |
| 56 | --- -- --- | --- -- --- | --- -- --- | D#4 04 --- |
| 60 | --- -- --- | --- -- --- | C-4 05 C0C | --- -- --- |
| 61 | --- -- A02 | --- -- --- | --- -- --- | --- -- --- |
| 62 | --- -- A02 | --- -- --- | --- -- --- | --- -- --- |
| 63 | --- -- A02 | --- -- --- | --- -- --- | --- -- --- |

### Pattern 08 — Recessional / Coda

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 0 | D-4 09 A20 | C-4 01 --- | D-4 06 --- | --- -- --- |
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
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | B-4 08 C18 |
| 34 | --- -- --- | C-4 01 --- | --- -- --- | A#4 08 C20 |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | A-4 08 C28 |
| 38 | --- -- --- | C-4 01 --- | F-4 06 --- | G#4 08 C30 |
| 40 | --- -- --- | C-4 01 --- | --- -- --- | G-4 08 C38 |
| 42 | --- -- --- | C-4 01 --- | --- -- --- | F#4 08 C40 |
| 45 | C-4 05 --- | C-4 01 --- | D-4 06 C40 | C-4 02 C40 |
| 55 | --- -- --- | --- -- --- | D-4 06 C40 | --- -- --- |

### Pattern 09 — Embers A

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 0 | C-4 0A C38 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 4 | C-4 0A C32 | C-4 01 --- | --- -- --- | --- -- --- |
| 6 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 8 | C-4 0A C2D | C-4 01 --- | D-4 06 --- | A-3 08 C30 |
| 12 | C-4 0A C29 | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | C-4 0A C25 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 20 | C-4 0A C21 | C-4 01 --- | --- -- --- | F#3 08 C20 |
| 22 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 24 | C-4 0A C1E | C-4 01 --- | D-4 06 --- | --- -- --- |
| 28 | C-4 0A C1B | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 32 | C-4 0A C18 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 36 | C-4 0A C16 | C-4 01 --- | --- -- --- | D#3 08 C14 |
| 38 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 40 | C-4 0A C14 | C-4 01 --- | D-4 06 --- | --- -- --- |
| 44 | C-4 0A C12 | C-4 01 --- | --- -- --- | --- -- --- |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | C-3 08 C0A |
| 54 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 58 | --- -- --- | --- -- --- | --- -- --- | G#3 04 --- |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |

Ch1 note: this is a genuine echo/decay cascade — 12 closely-spaced Tallic hits with proportional (~90%/step) volume decrease, `C38` down to `C12`, continuing into Pattern 10's opening row. Deliberately not evenly spaced in the earlier "isolated pings" sense; the density is what makes it read as reverberation rather than separate accents. Ch1 goes silent after row 44 for the remainder of the pattern (drone dropped since Forge A, not yet returned).

### Pattern 10 — Embers B

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 0 | C-4 0A C10 | C-4 01 --- | D-4 06 --- | --- 04 C00 |
| 4 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 6 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 8 | --- -- --- | C-4 01 --- | D-4 06 --- | G#3 04 --- |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 20 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 22 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 24 | --- -- --- | C-4 01 --- | D-4 06 --- | B-3 04 --- |
| 28 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 30 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 32 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 36 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 38 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 40 | D-4 07 **[FADE — SEE OPEN ISSUE #1]** | C-4 01 --- | D-4 06 --- | D-4 04 --- |
| 44 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 54 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | D#4 04 --- |
| 60 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 62 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |

Notes:
- Row 0 Ch1 (`C0A`) is the cascade's final, genuinely-audible wisp (floor deliberately raised from an earlier too-quiet `C02`/`C04` attempt).
- Row 0 Ch4 (`--- 04 C00`) is a note-off: kills MetalKeys' loop ringing over from Pattern 09 row 58, since a channel with no new note continues sustaining a looped instrument rather than going silent.
- Ch4 rows 8/24/56 restate the Choir of Gears chant (G#3→B-3→D-4→D#4) one final time before Requiem.
- Row 40's HeavySynth entrance is timed with the chant's penultimate note (D-4) — intended as a joint arrival, not two unrelated events. **Exact effect value for the user-added fade is unknown — see Open Issue #1.**
- Row 56's MetalKeys (via Ch4's D#4... note: Ch4 here carries the chant, not MetalKeys directly) — the chant note at row 56 will still be ringing into Pattern 07 (Requiem)'s row 8, well before Requiem's own retrigger; this is intended as continuity, not a bug (verified against the note-off lesson learned earlier in the project).

---

## 6. Testing State

**No pattern has been tested in MilkyTracker or compiled to a `.mod` yet.** All composition, hex-case correction, and effect-timing math has been reasoned through and cross-checked in this conversation, not heard in the actual tracker. User is currently doing looped listens as a first-pass by-ear review before compilation.

---

## 7. Next Steps

- User to supply the exact effect value for Pattern 10, row 40, Ch1 (HeavySynth volume fade) — see Open Issue #1
- Finish looped-listen review; get all 11 patterns into MilkyTracker via the compiler for a real playthrough
- Finalize the pattern order list (current draft is illustrative, not confirmed)
- Investigate whether the loop-point-search technique (phase-match + wrap-discontinuity check) generalizes to other samples
