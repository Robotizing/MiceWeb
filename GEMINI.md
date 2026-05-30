# Gemini Context: MiceWeb Automation Guidelines

This directory contains `MiceWeb` — a monolithic, highly optimized Bash application for managing decentralized and alternative web protocols (IPFS, IPNS, ZeroNet, Tor, Wayback Machine, Gopher, Gemini, etc.).

## 🎯 Architecture & Constraints
- **Monolith:** The entire core application logic resides in a single file named `miceweb`.
- **Language:** Strict POSIX-compliant / modern Bash scripting.
- **Dependencies:** Relies on system-wide CLI tools (`ipfs`, `tor`, `wget`, `curl`, `jq`, etc.). Always assume they are pre-installed or validate their runtime availability.

## 📦 Dependency Rules & Runtime Error Handling
1. **No Package Installation:** You are strictly FORBIDDEN to execute or generate any code that uses system package managers (`apt`, `brew`, `yum`, etc.) to install dependencies.
2. **Graceful Fail-Fast Checks:** Whenever you add or modify functions that utilize external utilities (`ipfs`, `tor`, `wget`, `curl`, `jq`, etc.), you MUST ensure the script checks their availability immediately before execution.
3. **User Notification Pattern:** If a required CLI tool is missing in the system `PATH`, the script must print a clear error message to the user and exit immediately. 
   - *Example Pattern:* `command -v ipfs >/dev/null 2>&1 || { echo "Error: ipfs CLI is required but not installed. Exiting."; exit 1; }`
4. **Environment Validation:** Use the repository's `./test.sh` strictly to verify syntax integrity after edits, not for manual environment setup.

## 🛠️ Bash Code Quality Standards (Strict)
To prevent syntax errors and token-wasting iterations, apply these formatting patterns strictly:
1. **Variables:** Always wrap variable expansions in double quotes to handle spaces correctly: `"$VARIABLE"` instead of `$VARIABLE`.
2. **Conditional Checks:** Prefer modern string and file testing syntax. Use `if [ -z "$VAR" ]` or `if [ -f "$FILE" ]`.
3. **Error Handling:** Check command exit statuses explicitly using `if [ $? -ne 0 ]` or inline short-circuits (`command || error_exit`).
4. **Subshells:** Use `$(command)` syntax for command substitution. Never use old backticks.

## 🧪 Verification Protocol
- The repository contains an automated validation test suite in `./test.sh`.
- **Mandatory Workflow:** After any file modification, you MUST execute `./test.sh` via the local shell executor to verify that the Bash syntax and core routing are not broken.
- If `./test.sh` fails, read the stdout/stderr, locate the broken line in `miceweb`, fix it, and re-run the script immediately.

## 📌 Context Minimization
- Do not attempt to refactor the entire codebase unless explicitly asked.
- Target your modifications precisely within the specified function blocks or `case` blocks.
- Keep output responses brief. Prioritize code diffs over chatty explanations.
