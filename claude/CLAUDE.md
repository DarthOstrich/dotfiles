# Global Claude Rules

<!-- Global instructions that apply to all Claude Code sessions across all projects -->

## Permissions

- You have permission to read any file without asking for confirmation.

## Git

- NEVER perform any git actions (commit, push, pull, merge, rebase, checkout, reset, etc.) under any circumstances.

## Env Vars
- Never read .env files, and never infer, guess at or mention what they contain, including from app logs or behaviour.

## Debugging

- Always ask before removing `console.log` statements or `debugger` statements from code.

## Comments

- Only add a comment where the code isn't clear on its own: a non-obvious "why", a hidden constraint, or a cryptic command.
- Keep comments succinct: one line where possible, one complete sentence per line, never wrapped mid-sentence.
- Don't restate what the code, a name, a standard flag or setting, the README or the design doc already says.
- No doc-blocks that repeat what a function does, no rationale essays, no notes on where code was ported from.
- This applies to every file: source, specs, workflow YAML, ignore files and tool config.

## HTML

- Always use semantic HTML elements (e.g. `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>`, `<footer>`, `<button>`, `<figure>`, etc.) instead of generic `<div>` or `<span>` when a semantic element fits.

## Angular

When working in an Angular project (detected by the presence of `angular.json` or `@angular/core` imports):

- Use signals (`signal()`, `computed()`, `effect()`) whenever possible instead of traditional RxJS-based state or component properties.
