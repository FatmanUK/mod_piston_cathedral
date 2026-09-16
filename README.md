# mod_piston_cathedral
Claude is my favourite LLM for writing `.mod` tracks. I'll continue using ChatGPT as well.

This one is industrial with a dark electro vibe.

## build notes
To get the ST-01 and ST-02 archives on Debian-based Linux, issue these commands:
   
    ❯ sudo apt update
    ❯ sudo apt install lhasa wget
    ❯ install -d mod_cold_boot/stxx
    ❯ cd mod_cold_boot/stxx
    ❯ wget -O st-01.lha https://aminet.net/mods/inst/st-01.lha
    ❯ lha x st-01.lha
    ❯ wget -O st-01.lha https://aminet.net/mods/inst/st-02.lha
    ❯ lha x st-02.lha

These samples are in IFF format and AmigaOS doesn't use file extensions, so to make MilkyTracker see them you have to rename the ones you want with '.iff' extensions. Like this:
   
    ❯ mv Stabs Stabs.iff
