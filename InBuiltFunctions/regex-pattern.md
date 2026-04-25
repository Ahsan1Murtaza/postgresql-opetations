# Regex Master Reference Guide

## 1. The Literal Match (The Basics)
The simplest regex is just the text itself. It searches for an exact sequence of characters.
* **Pattern:** `cat`
* **Matches:** The string "cat" in "The **cat** sat."
* **Does NOT match:** "dog", "CAT" (unless case-insensitive flag is on).

---

## 2. Character Classes (The "Choice" Rule)
Square brackets `[]` allow you to match **one** character from a specific set or range.
* **Pattern:** `[bc]at`
* **Matches:** "**bat**" or "**cat**".
* **Ranges:** * `[a-z]`: Matches any single lowercase letter.
    * `[0-9]`: Matches any single digit.
    * `[A-Z]`: Matches any single uppercase letter.

---

## 3. Anchors (The "Location" Rule)
Anchors do not match actual characters; they ensure the pattern exists at a specific **position**.
* **`^` (Caret):** Matches the **start** of a line.
    * `^Hello`: Matches "Hello" only if it is the first word.
* **`$` (Dollar):** Matches the **end** of a line.
    * `done$`: Matches "done" only if it is the very last word.

---

## 4. Quantifiers (The "How Many" Rule)
Quantifiers define how many times the preceding character or group should repeat.

| Symbol | Meaning | Example |
| :--- | :--- | :--- |
| `*` | 0 or more times | `lo*` matches "l", "lo", "loo" |
| `+` | 1 or more times | `lo+` matches "lo", "loo", but not "l" |
| `?` | 0 or 1 time | `color?` matches "color" or "colou" |
| `{n}` | Exactly $n$ times | `\d{5}` matches "90210" |
| `{n,}`| $n$ or more times | `\d{3,}` matches 3 or more digits |

---

## 5. Shorthand Escapes (The "Pro" Shortcuts)
Commonly used patterns have built-in shortcuts to keep your code readable.
* **`\d`**: Any **d**igit (`[0-9]`).
* **`\w`**: Any **w**ord character (letters, numbers, and underscores).
* **`\s`**: Any **s**pace (tabs, spaces, or newlines).
* **`.` (Dot)**: The "Wildcard." Matches **any** single character (except a newline).

---

## 6. Best Practices for Developers
* **Be Specific:** Use `\d` instead of `.` if you know you are looking for a number.
* **Avoid Greediness:** If you use `.*`, the engine will match as much as possible. Use `.*?` (non-greedy) if you want the shortest possible match.
* **Test First:** Always use a tool like RegEx101 before putting a complex pattern into a production SQL query.