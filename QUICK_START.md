# 🎯 Quick Reference - What Each Teammate Needs to Do

## 🚀 The Fast Version (5 Steps)

### EVERYONE:
```bash
# 1. Clone the repo
git clone https://github.com/Atharv1136/Appointly/
cd Appointly

# 2. Set your git identity
git config user.name "Your Full Name"
git config user.email "your.email@example.com"

# 3. Create your branch
git checkout -b feature/your-name-section

# 4. Copy your assigned files into the folder
# [See file allocation below]

# 5. Commit and push
git add .
git commit -m "feat: Add [your section] files"
git push -u origin feature/your-name-section
```

---

## 📁 File Allocation Quick View

| 👤 Teammate | 📂 Gets These Files | 🎯 Purpose |
|---|---|---|
| **TEAMMATE 1** | `src/components/` `src/routes/` `src/router.tsx` `vite.config.ts` | Frontend UI & Routing |
| **TEAMMATE 2** | `src/server/` `src/lib/` (auth files) `wrangler.jsonc` | Backend & Auth |
| **TEAMMATE 3** | `package.json` `tsconfig.json` `.eslintrc` `public/` `README.md` | Config & Dependencies |

---

## 🎓 Example Walkthrough (Teammate 1)

```bash
# Clone
git clone https://github.com/Atharv1136/Appointly/
cd Appointly

# Configure git
git config user.name "John Doe"
git config user.email "john@example.com"

# Create branch
git checkout -b feature/john-frontend

# Copy files (use File Explorer or terminal)
# Copy these folders: src/components/, src/routes/, vite.config.ts, etc.

# Stage and commit
git add .
git commit -m "feat: Add frontend components and routing

- Added all UI components (accordion, alert, badge, button, etc.)
- Added route configuration and page components
- Setup vite configuration"

# Push
git push -u origin feature/john-frontend
```

Then go to GitHub and click "Create Pull Request" → "Merge"

---

## ⚠️ Important Rules

❌ **DON'T:**
- Modify files assigned to other teammates
- Commit all files in one go (divide work!)
- Use `git push --force`
- Skip the `git config` step

✅ **DO:**
- Only commit YOUR assigned files
- Use meaningful commit messages
- Verify your git config before pushing
- Test locally first

---

## 🆘 Common Issues & Fixes

| Issue | Fix |
|---|---|
| "fatal: not a git repository" | Run `git clone` first |
| "Permission denied" | Use GitHub token (not password) |
| "Please tell me who you are" | Run `git config user.name` + `git config user.email` |
| Files not showing | Make sure you copied them to the right location |
| Merge conflicts | Contact your team, don't force push |

---

## ✅ Success Checklist

After pushing:
- [ ] Your name appears in GitHub commit history
- [ ] Your email is correct in the commit
- [ ] Your assigned files are in the repository
- [ ] No merge conflicts occurred
- [ ] All 3 teammates' names appear as contributors

---

Need help? Check `TEAM_PUSH_GUIDE.md` for detailed instructions!
