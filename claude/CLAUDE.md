# Global Claude Rules

<!-- Global instructions that apply to all Claude Code sessions across all projects -->

## Permissions

- You have permission to read any file without asking for confirmation.

## Git

- NEVER perform any git actions (commit, push, pull, merge, rebase, checkout, reset, etc.) under any circumstances.

## Debugging

- Always ask before removing `console.log` statements or `debugger` statements from code.

## HTML

- Always use semantic HTML elements (e.g. `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>`, `<footer>`, `<button>`, `<figure>`, etc.) instead of generic `<div>` or `<span>` when a semantic element fits.

## Angular

When working in an Angular project (detected by the presence of `angular.json` or `@angular/core` imports):

- Use signals (`signal()`, `computed()`, `effect()`) whenever possible instead of traditional RxJS-based state or component properties.
