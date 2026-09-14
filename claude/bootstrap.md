# Piston Cathedral — Bootstrap Markdown Manifest (v2)

**Project:** Piston Cathedral
**Status:** All 9 patterns composed. Not yet tested in MilkyTracker/compiled. Order list not finalized.
**Tracker:** MilkyTracker
**Platform:** Linux / PikaOS
**Target format:** 4-channel ProTracker MOD

---

## 1. Current Goal

All composition work (patterns 00–08) is done. The immediate objective is to get this into MilkyTracker via the user's custom compiler, do a full playthrough, and finalize the pattern order list (currently a draft — see Section 2).

---

## 2. State of Play

### Identity
- Title: **Piston Cathedral**
- Speed: `06` hex | Tempo: `96` hex (150 BPM)
- 4 channels, 64 rows/pattern, ProTracker 2 (PT2) compatible only
- Not looped as a whole; ends in a definite coda (no fadeout) — confirmed achieved in Pattern 08

### Source-of-Truth Hierarchy (unchanged from original bootstrap)
1. Auditioned project files are authoritative for: exact sample loop points, exact sample volumes, exact per-row volume edits, exact finetune values, any last by-ear edits.
2. This bootstrap file is authoritative for: project architecture, pattern roles, order list, note/rhythm/effect structure, final sample identities, tested status.
3. Sample archives (ST-01, ST-02) are only the source of the sample files.

### Instrument Set (final, audited and approved)

| ID | Sample | Source | Volume | Finetune | Loop | Note range |
|---|---|---|---|---|---|---|
| 1 | linnkick | ST-02 | `40` | `00` | none | fixed `C-4` (unpitched) — very quiet even at max volume; mitigated via arrangement, not volume |
| 2 | Snare7 | ST-02 | `34` | `00` | none | fixed `C-4` (unpitched) |
| 3 | HiHat2 | ST-01 | `26` | `00` | none | fixed `C-4` (unpitched) — first used in Pattern 06 |
| 4 | MetalKeys | ST-01 | `18` | `00` | start `2332`, len `13d` — verified seamless (0 discontinuity) | octaves 3–4 (`C-3`–`B-4`), high-pitched |
| 5 | Mechanic2 | ST-01 | `40` | `00` | none | fixed `C-4` (unpitched texture) |
| 6 | MonsterBass | ST-01 | `34` | `00` | none | octaves 4–5 (`C-4`–`B-5`), low-pitched |
| 7 | HeavySynth | ST-01 | `18` | `00` | **none — reserved for later use, deliberately unlooped, not yet placed in any pattern** | octaves 4–5 (`C-4`–`B-5`), low-pitched |
| 8 | Siren | ST-02 | `2a` | `00` | none | octaves 3–4 (`C-3`–`B-4`), high-pitched |
| 9 | Strings7 | ST-01 | `2a` | `00` | start `0090`, len `2571` — verified: 0 discontinuity, strong phase alignment (see Section 4 methodology note) | octaves 4–5 (`C-4`–`B-5`), low-pitched — this is the Bellows/drone voice, replacing HeavySynth in that role |

Finetune `00` across the board is an accepted risk: no historical per-sample finetune data exists for ST-01/ST-02, since these disks predate the finetune field (from the original 15-sample Ultimate SoundTracker format, before NoiseTracker/ProTracker's 31-sample format introduced it).

### Structural Arc (seeded from the title)

A cathedral built of engine parts — gears for stained glass, pistons for pipe organs, steam for incense.

### Motif Map (final)

| Motif | Name | Character | Instruments |
|---|---|---|---|
| I | Ignition | Rhythmic backbone, driving mechanical pulse | linnkick + MonsterBass ostinato |
| II | Choir of Gears | Melodic "chant" figure, call-and-response | MetalKeys (lead), Mechanic2 punctuation |
| III | Bellows | Sustained harmonic bed, swells at transitions | Strings7 (looped drone) |
| IV | Klaxon | Chromatic tension figure, rising/falling wail | Siren |
| V | Hammerfall | Syncopated escalation device, climax only | Snare7 + Mechanic2 layered, HiHat2 fills (debut: Pattern 06) |
| VI | Threshold | Not a new sample — a *treatment*: Ignition densifies (fills in subdivisions) while Klaxon becomes more frequent/insistent, building toward a climax | Reuses instruments 1/2/6/8 |

### Final Pattern-Role Plan (all composed)

| Pattern | Role | Motifs present | Status |
|---|---|---|---|
| 00 | Invocation | III (arc: rise → peak → fall) + IV (4-note wail arc) | Composed, approved |
| 01 | Nave | I (enters) + III (continues) | Composed, approved |
| 02 | Liturgy A | I + II (ascending call-response) + III | Composed, approved |
| 03 | Liturgy B | I + II (descending, inverted, thinned) + III + IV (single interjection) | Composed, approved |
| 04 | Bridge (Threshold) | VI — I densifies (quarter→8th→16th notes), IV insistent (17 hits, chromatic C-3→E-4) | Composed, approved |
| 05 | Forge A (Climax) | I (8th notes) + II (aggressive run) + IV (F-4→B-4 climb) + V (debut, rows 32+); Ch1 drone deliberately dropped at row 32, doesn't resume automatically | Composed, approved |
| 06 | Forge B (Climax variant) | I + II (melodic inversion of Forge A around D#4 axis) + IV (descending mirror, B-4→F-4) + V (syncopated variant, HiHat2 debut) | Composed, approved |
| 07 | Requiem | III (returns, fresh trigger) + II (slow, 4 notes across 64 rows, hushed Mechanic2 tolls); I silent | Composed, approved |
| 08 | Recessional / Coda | III (returns, full circle) + I (Nave-density) + II (final ascending statement) + IV (descending climb-in-volume) + silence (row 44) + unison one-shot flourish (row 45) + added closing bass thump (row 55) | Composed, approved |

### Draft Order List (NOT yet finalized by user)

`00 01 02 03 02 03 04 05 06 05 07 02 03 04 06 08`

Reasoning: Bridge leads into first Forge pairing (A→B), Forge A returns once more for a smaller second peak, then Requiem, a final Liturgy pass, one last Bridge→Forge B run, then Coda.

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
- Lone numbers output in hex format (e.g. "3f") unless otherwise specified.
- Explain effects the first time they're used.

### Effects Used So Far (all explained on first use in-conversation)
- `Axy` — volume slide (x=up rate, y=down rate, applied per tick — at Speed 06 that's 5 applications per row, a source of a past miscalculation, see Section 4)
- `Cxx` — set volume directly to xx (hex, 00–40)

---

## 3. Dependency Map

- **MilkyTracker** — testing tracker (on PikaOS/Linux)
- **PikaOS** — testing operating system
- **ST-01 / ST-02** — Amiga sample archives (raw 8-bit signed PCM, no header), source of all 9 instruments
- **Custom compiler** (user-authored, external to this conversation) — converts the markdown pattern-row format into the final `.mod` binary; patterns are never entered into MilkyTracker directly

---

## 4. Open Issues

1. **Order list not finalized** — current draft (Section 2) is illustrative; user has not confirmed final reuse pattern or total runtime.
2. **Not yet tested in MilkyTracker** — no pattern has been heard in the actual tracker or compiled to a `.mod` yet. Nothing here is validated against real playback.
3. **HeavySynth (instrument 7) unused** — kept in the set per user's request, deliberately unlooped, reserved for a future role not yet decided.
4. **Methodology note for future reuse:** the Strings7 loop point (instrument 9) was found using a two-part technique developed mid-project: (a) a "phase-match" score comparing the waveform context window immediately before a candidate start point against the window immediately before a candidate end point, to confirm both sit at the same point in the sample's natural cycle, and (b) a direct wrap-discontinuity check (value at end-1 vs. value at start). Candidates were only trusted when BOTH scored well — an earlier candidate that passed only the discontinuity check (zero click) but not the phase-match check was confirmed by ear to still sound "off" (out of phase), validating that the discontinuity check alone is insufficient. **User has flagged this as worth investigating later: whether this two-part technique can be generalized into a reusable procedure for finding loop points in any sample**, rather than something done ad hoc per-sample as here.
5. **Effect-rate miscalculation (resolved, logged for awareness):** an early draft of Pattern 00's `Axy` volume-slide values incorrectly assumed the effect applied once per row; it actually applies once per tick (5x per row at Speed 06), which caused an unintended crash-to-silence. Corrected to `A02`. Worth double-checking any future new `Axy` usage against this per-tick behavior before finalizing.

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
    length: 0x013d
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
    # no loop -- reserved, unlooped, not yet used
  - id: 8
    source: 'st02'
    name: 'ST-02/Siren'
    volume: 0x2a
  - id: 9
    source: 'st01'
    name: 'ST-01/Strings7'
    volume: 0x2a
    start: 0x0090
    length: 0x2571
```

### Pattern Row Format (for the compiler)

```text
| RR | NNN II EEE | NNN II EEE | NNN II EEE | NNN II EEE |
```
- `RR` = row number, **decimal** (compiler bug requires this — not hex)
- `NNN` = note, `---` = no note
- `II` = instrument slot, `--` = no instrument
- `EEE` = effect, `---` = no effect
- Table format: MarkDown table, headers `Row | Ch1 | Ch2 | Ch3 | Ch4`
- Omit entirely empty lines

### Pattern 00 — Invocation

| Row | Ch1 | Ch2 | Ch3 | Ch4 |
|---|---|---|---|---|
| 00 | D-4 09 A20 | --- -- --- | --- -- --- | --- -- --- |
| 01 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 02 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 03 | --- -- A20 | --- -- --- | --- -- --- | --- -- --- |
| 10 | --- -- --- | --- -- --- | --- -- --- | C-3 08 C0a |
| 24 | --- -- --- | --- -- --- | --- -- --- | F-3 08 C10 |
| 42 | --- -- --- | --- -- --- | --- -- --- | G#3 08 C14 |
| 50 | --- -- --- | --- -- --- | --- -- --- | D#3 08 C0c |
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
| 2 | --- -- --- | --- -- --- | --- -- --- | C-3 08 C0a |
| 4 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 6 | --- -- --- | --- -- --- | F-4 06 --- | --- -- --- |
| 8 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 10 | --- -- --- | --- -- --- | --- -- --- | C#3 08 C0c |
| 12 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 14 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 16 | --- -- --- | C-4 01 --- | D-4 06 --- | --- -- --- |
| 18 | --- -- --- | --- -- --- | --- -- --- | D-3 08 C0e |
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
| 42 | --- -- --- | C-4 01 --- | --- -- --- | G-3 08 C1c |
| 44 | --- -- --- | C-4 01 --- | --- -- --- | --- -- --- |
| 45 | --- -- --- | --- -- --- | --- -- --- | G#3 08 C1f |
| 46 | --- -- --- | --- -- --- | C-4 06 --- | --- -- --- |
| 48 | --- -- --- | C-4 01 --- | D-4 06 --- | A-3 08 C22 |
| 50 | --- -- --- | C-4 01 --- | --- -- --- | A#3 08 C25 |
| 52 | --- -- --- | C-4 01 --- | --- -- --- | B-3 08 C28 |
| 54 | --- -- --- | C-4 01 --- | F-4 06 --- | C-4 08 C2b |
| 56 | --- -- --- | C-4 01 --- | D-4 06 --- | C#4 08 C2e |
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
| 54 | --- -- --- | C-4 01 --- | F-4 06 --- | A-4 08 C3c |
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
| 54 | --- -- --- | C-4 01 --- | F-4 06 --- | G#4 08 C3c |
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
| 12 | --- -- --- | --- -- --- | C-4 05 C0c | --- -- --- |
| 24 | --- -- --- | --- -- --- | --- -- --- | B-3 04 --- |
| 28 | --- -- --- | --- -- --- | C-4 05 C0c | --- -- --- |
| 40 | --- -- --- | --- -- --- | --- -- --- | D-4 04 --- |
| 44 | --- -- --- | --- -- --- | C-4 05 C0c | --- -- --- |
| 56 | --- -- --- | --- -- --- | --- -- --- | D#4 04 --- |
| 60 | --- -- --- | --- -- --- | C-4 05 C0c | --- -- --- |
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

---

## 6. Testing State

**No pattern has been tested in MilkyTracker or compiled to a `.mod` yet.** Everything above has been designed, calculated, and cross-checked (bounds, compatibility rules, note ranges, effect math) but not heard in the actual tracker. Sample selection, volumes, loop points, and note ranges were audited and approved by the user against the raw sample data; the *patterns* themselves have only been approved by the user reading the row data and reasoning in this conversation, not by ear in MilkyTracker.

---

## 7. Next Steps

- Get all 9 patterns into MilkyTracker via the custom compiler and do a full playthrough
- Finalize the pattern order list (current draft in Section 2 is illustrative, not confirmed)
- Investigate whether the two-part loop-point-search technique (phase-match + wrap-discontinuity check) developed for Strings7 can be generalized into a reusable procedure for other samples
