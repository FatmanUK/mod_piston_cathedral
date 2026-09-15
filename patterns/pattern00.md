## Pattern 00 — "Invocation"

Per the structural arc, this is sparse and atmospheric: just Motif III (Bellows/HeavySynth drone) establishing a tonal center, with one distant intrusion of Motif IV (Klaxon/Siren) near the end. No rhythm section yet — that's reserved for Pattern 01 ("The Nave").

**Channel assignment:** Ch1 = HeavySynth (instrument 07, the drone), Ch4 = Siren (instrument 08, the distant klaxon). Ch2/Ch3 are held in reserve — nothing to add there yet; they'll carry Ignition (kick/bass) starting next pattern.

[ added instrument 9: ST01/Strings7 for the drone ]

**Tonal center:** D-4 for the drone (octave 4, within HeavySynth's allowed 4–5 range) — this becomes the piece's home pitch going forward. The siren sits on G#3 (octave 3, within its allowed 3–4 range) — a tritone against D, chosen deliberately for dissonant unease befitting Motif IV.

Per the guideline to omit entirely empty rows, only rows with actual content appear below.

**Effects used (first appearance, per guideline):**

- **`Axy` — Volume slide** (rows 00–03, param `02`): x=up-rate nibble, y=down-rate nibble; `A02` slides volume up at rate 2/tick. HeavySynth's default volume (`18` hex) is quiet, so this ramps it up to roughly full over 4 rows — the "swell" as the drone announces itself. PT effects only act for the row they're written on, so the command is repeated each row to sustain the slide across multiple rows.
- **`Cxx` — Set volume** (row 42): sets the channel's volume directly to `xx` (hex, 00–40 max), overriding the instrument default for that trigger. `C10` (16 dec) pulls the Siren well below its default `2a`, giving it a "distant" quality on its single appearance.
- Row 56–58 reuses `Axy` with `A0a` (down-rate `0a`) — a small pull-back in the drone's volume right at the pattern boundary, to create a sense of receding before Pattern 01 brings the rhythm in.

Everything else (D-4/G#3 note choices, octave ranges, sample IDs) checks out against the locked instrument table and compatibility rules — no notes outside C-3–B-5, no XM-only effects, forward-loop sample already handles the sustain.

Let me know if this reads right on audition in MilkyTracker, or if you want the swell timing/dissonance choice adjusted before we move to Pattern 01.

## Pattern 00 — revised (added Siren stings)

Spread three more Siren entries through the pattern to build a small internal arc for Motif IV — rising in pitch and volume toward the row 42 hit, then falling away before the drone recedes. Same effect (`Cxx`) as before, just new values, so no new effect explanation needed.

|Row | Ch1        | Ch2        | Ch3        | Ch4        |
|---:|------------|------------|------------|------------|
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

Shape: C-3 (quiet, distant, `0a`) → F-3 (`10`) → G#3 (peak, `14`, the tritone-against-drone tension point) → D#3 (falling away, `0c`) — a single wail arc rather than four unrelated stings, which should give the pattern more motion without abandoning the "sparse invocation" character.

All four notes sit within Siren's allowed octave 3–4 range. Let me know how this sits against Pattern 01.
