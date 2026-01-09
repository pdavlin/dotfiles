# Agent Summary

Log a summary of this Claude Code session to today's Obsidian Daily Note.

## Instructions

1. **Identify Context**
   - Determine the project name from the current working directory (use the folder name)
   - Get the current time in HH:MM format
   - Get today's date in YYYY-MM-DD format

2. **Generate Summary**
   - Review the conversation history for this session
   - Identify: files modified, features implemented, bugs fixed, decisions made
   - Note any blockers or open questions
   - Keep it concise: 1-3 bullet points

3. **Write to Daily Note**
   - Use the Obsidian MCP tools to append to today's Daily Note
   - Target: `Daily/YYYY-MM-DD.md` (using today's date)
   - Section: "Agent Summaries" heading
   - If the Daily Note doesn't exist, create it first using the template structure

4. **Format**
   Use this format for entries:
   ```
   ### project-name (HH:MM)
   - Completed: [what was done]
   - Modified: [key files touched]
   - Open: [blockers or next steps, if any]
   ```

## Example Output

```markdown
### fnbo-bts (14:32)
- Completed: Fixed authentication redirect loop in login flow
- Modified: src/auth/callback.ts, src/middleware/session.ts
- Open: Need to add unit tests for edge cases
```

## MCP Tool Usage

Use `mcp__obsidian-mcp-tools__patch_vault_file` with:
- `filename`: "Daily/YYYY-MM-DD.md"
- `operation`: "append"
- `targetType`: "heading"
- `target`: "Agent Summaries"
- `content`: The formatted summary

If the heading doesn't exist (older daily notes), append to the end of the file using `mcp__obsidian-mcp-tools__append_to_vault_file`.

## Important

- Always check that Obsidian is running before attempting to write
- If MCP connection fails, inform the user and provide the summary as text they can copy
- Don't include sensitive information (API keys, credentials, internal URLs)
