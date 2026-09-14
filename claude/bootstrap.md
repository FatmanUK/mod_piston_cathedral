# Piston Cathedral — Bootstrap Markdown Manifest

**Project:** Piston Cathedral
**Status:** Sample set locked, structural arc/motif map approved — composing patterns next
**Tracker:** MilkyTracker
**Platform:** Linux / PikaOS
**Target format:** 4-channel ProTracker MOD

---

## 1. Current Goal

Compose Pattern 00 ("Invocation") — the first pattern in the structural arc — using Motif III (Bellows/HeavySynth drone, with occasional distant Motif IV/Klaxon). This is the first of seven planned pattern roles leading to a full arrangement.

---

## 2. State of Play

### Identity
- Title: **Piston Cathedral** (selected from 10 candidates; character: industrial, dark electro, gritty/mechanical, influences Brian Johnston / Paul van der Valk)
- Speed: `06` hex | Tempo: `96` hex (150 BPM)
- 4 channels, 64 rows/pattern, ProTracker 2 (PT2) compatible only — no XM-only features
- Not looped as a whole; ends in a definite coda (no fadeout)

### Source-of-Truth Hierarchy (unchanged from original bootstrap)
1. Auditioned project files are authoritative for: exact sample loop points, exact sample volumes, exact per-row volume edits, exact finetune values, any last by-ear edits.
2. This bootstrap file is authoritative for: project architecture, pattern roles, order list, note/rhythm/effect structure, final sample identities, tested status.
3. Sample archives (ST-01, ST-02) are only the source of the sample files.

### Instrument Set (audited and approved)

| ID | Sample | Source | Volume | Finetune | Loop | Note range |
|---|---|---|---|---|---|---|
| 1 | linnkick | ST-02 | `40` | `00` | none | fixed `C-4` (unpitched) — **very quiet even at max volume; see Open Issues** |
| 2 | Snare7 | ST-02 | `34` | `00` | none | fixed `C-4` (unpitched) |
| 3 | HiHat2 | ST-01 | `26` | `00` | none | fixed `C-4` (unpitched) |
| 4 | MetalKeys | ST-01 | `18` | `00` | start `2332`, len `13d` — verified seamless (0 discontinuity) | octaves 3–4 (`C-3`–`B-4`), high-pitched |
| 5 | Mechanic2 | ST-01 | `40` | `00` | none | fixed `C-4` (unpitched texture) |
| 6 | MonsterBass | ST-01 | `34` | `00` | none | octaves 4–5 (`C-4`–`B-5`), low-pitched |
| 7 | HeavySynth | ST-01 | `18` | `00` | start `1f02`, len `3fd` — **19-unit discontinuity at wrap, flagged for later review** | octaves 4–5 (`C-4`–`B-5`), low-pitched |
| 8 | Siren | ST-02 | `2a` | `00` | none | octaves 3–4 (`C-3`–`B-4`), high-pitched |

Finetune `00` across the board is an accepted risk: no historical per-sample finetune data exists for ST-01/ST-02, because these disks were bundled with the original Ultimate SoundTracker 15-sample format, which predates the finetune field entirely (introduced later in the 31-sample NoiseTracker/ProTracker format).

### Structural Arc (seeded from the title)

A cathedral built of engine parts — gears for stained glass, pistons for pipe organs, steam for incense. Macro-arc:

1. **Invocation** — sparse, atmospheric, no rhythm yet
2. **The Nave** — groove enters, machinery starts turning
3. **Liturgy** — main recurring theme; heaviest pattern reuse; at least two variants (A/B)
4. **The Forge (climax)** — densest, most aggressive point
5. **Requiem** — pulled back, darker, funeral-bell pacing
6. **Recessional / Coda** — NOT a fadeout; a definite final flourish or hard stop

### Motif Map

| Motif | Name | Character | Instruments |
|---|---|---|---|
| I | Ignition | Rhythmic backbone, driving mechanical pulse | linnkick + MonsterBass ostinato |
| II | Choir of Gears | Melodic "chant" figure, call-and-response | MetalKeys (lead), sparse Mechanic2 punctuation |
| III | Bellows | Sustained harmonic bed, swells at transitions | HeavySynth (looped drone) |
| IV | Klaxon | Chromatic tension figure, rising/falling wail | Siren |
| V | Hammerfall | Syncopated escalation device, climax only | Snare7 + Mechanic2 layered |

### Draft Pattern-Role Plan

| Pattern | Role | Motifs present |
|---|---|---|
| 00 | Invocation | III (+ distant IV) |
| 01 | Nave | I + III |
| 02 | Liturgy A | I + II + III |
| 03 | Liturgy B (variation) | I + II(var) + III + occasional IV |
| 04 | Forge / Climax | I + II + IV + V |
| 05 | Requiem | III + II (slow) |
| 06 | Recessional / Coda | flourish — converges then hard stop |

**Draft order list** (illustrative, not final): `00 01 02 03 02 03 04 04 05 02 03 04 06`

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

---

## 3. Dependency Map

- **MilkyTracker** — testing tracker (on PikaOS/Linux)
- **PikaOS** — testing operating system
- **ST-01 / ST-02** — Amiga sample archives (raw 8-bit signed PCM, no header), source of all 8 instruments
- **Custom compiler** (user-authored, external to this conversation) — converts the markdown pattern-row format below into the final `.mod` binary; patterns are never entered into MilkyTracker directly

---

## 4. Open Issues

1. **HeavySynth loop discontinuity** — 19-unit amplitude jump (out of -128..127) at the loop wrap point (value `-23` before wrap vs. `-4` at loop start). Low risk of an audible click but not zero. User has logged a comment to revisit once a few patterns exist.
2. **linnkick perceived quietness** — already at max PT volume (`40`) with no digital headroom left; short sample length (538 bytes) likely the real cause. Accepted risk; mitigation planned via arrangement (rhythmic space, ducking competing low-end instruments) rather than volume.
3. **Order list not finalized** — reuse ratio and whether Liturgy B needs a third variant are still open.

---

## 5. "Golden" Instrument Reference (current/approved)

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
    start: 0x1f02
    length: 0x03fd
  - id: 8
    source: 'st02'
    name: 'ST-02/Siren'
    volume: 0x2a
```

### Pattern Row Format (for the compiler)

```text
| RR | NNN II EEE | NNN II EEE | NNN II EEE | NNN II EEE |
```
- `RR` = row number, **decimal** (compiler bug requires this — not hex)
- `NNN` = note, `--- ` = no note
- `II` = instrument slot, `--` = no instrument
- `EEE` = effect, `---` = no effect
- Table format: MarkDown table, headers `Row | Ch1 | Ch2 | Ch3 | Ch4`
- Omit entirely empty lines

---

## 6. Testing State

No patterns have been composed or tested in MilkyTracker yet. Sample selection, volumes, loop points, and note ranges have been audited and approved by the user. Nothing in this manifest has been validated against actual playback yet.

---

## 7. Next Steps

- Compose Pattern 00 ("Invocation") using Motif III (HeavySynth drone) with occasional distant Motif IV (Siren), per the compiler's markdown row format
- Finalize the order list's reuse ratio and decide whether Liturgy B needs a third variant
- Revisit the HeavySynth loop discontinuity once a few patterns exist and can be heard in context
