# Workflow (for humans, not LLMs)

## Bootstrap

Periodically, generate a bootstrap Markdown file. This will enable any LLM to bootstrap the project in the event of the loss of your conversation.

```
Summarise our progress into a single, comprehensive "bootstrap Markdown file". Include the following items:
1. Current Goal and Next 3 Steps
2. State of Play (key logic, architecture, decisions)
3. Dependency Map and Version Log
4. 'Golden' Code Blocks (latest working logic)
5. Tested and Passing Status Confirmation
Do not include previous attempts.
```

Some LLMs, notably Gemini, keep flubbing the formatting. You might have to yell at it a bit. >:(

## Start

Edit the `Primary Goal` section of the new_bootstrap.md file and have the LLM ingest it.

`Review the attached new_bootstrap.md. What is the first step?`

## Titles and Tempo

Pick from the offered options.

