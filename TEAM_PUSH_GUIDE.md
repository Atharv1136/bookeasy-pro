# 🚀 Hackathon Team GitHub Push Guide

## 📋 Overview
This guide helps all 3 teammates push code to GitHub as individual contributors so each person's work is credited in the git history.

**Repository:** https://github.com/Atharv1136/Appointly/

---

## 👥 Team Division - File Allocation

### **TEAMMATE 1 (Frontend - UI Components & Routing)**
📁 Files to commit:
```
- src/components/ui/ (all accordion, alert, badge, button, card, etc.)
- src/components/layout.tsx
- src/router.tsx
- src/routeTree.gen.ts
- src/routes/ (all route files)
- src/assets/
- src/styles.css
- src/hooks/use-mobile.tsx
- components.json
- vite.config.ts
```

### **TEAMMATE 2 (Backend - Server Functions & Auth)**
📁 Files to commit:
```
- src/server/ (all .server.ts files)
  - auth.server.ts
  - auth.functions.ts
  - db.server.ts
  - email.server.ts
  - admin.functions.ts
  - organiser.functions.ts
  - services.functions.ts
- src/lib/auth-context.tsx
- src/lib/types.ts
- .env files (if any)
- wrangler.jsonc
```

### **TEAMMATE 3 (Configuration & Dependencies)**
📁 Files to commit:
```
- package.json
- bun.lockb
- bunfig.toml
- tsconfig.json
- eslint.config.js
- public/
- .gitignore
- README.md (documentation)
- TEAM_PUSH_GUIDE.md (this file)
```

---

## ⚙️ Initial Setup (Coordinator - Run Once)

### Step 1: Verify Remote Repository
```bash
git remote -v
```
Expected output should show the new repo: `https://github.com/Atharv1136/Appointly/`

### Step 2: Add New Remote (if needed)
If the remote doesn't point to the new repo:
```bash
git remote set-url origin https://github.com/Atharv1136/Appointly/
```

### Step 3: Verify Repository is Empty
Make sure the GitHub repo has no commits (start fresh)

---

## 👤 Steps for EACH Teammate (Do This in Order)

### **STEP 1: Clone the Repository**
```bash
cd C:\your\desired\path
git clone https://github.com/Atharv1136/Appointly/
cd Appointly
```

### **STEP 2: Configure Your Git Identity**
Replace with YOUR actual name and email:
```bash
git config user.name "YOUR FULL NAME"
git config user.email "your.email@example.com"
```

**Verify it worked:**
```bash
git config user.name
git config user.email
```

### **STEP 3: Create a Feature Branch**
Replace `TEAMMATE_NAME` with your actual name:
```bash
git checkout -b feature/TEAMMATE_NAME-setup
```

Example:
```bash
git checkout -b feature/john-ui-components
git checkout -b feature/sarah-backend-auth
git checkout -b feature/mike-config-setup
```

### **STEP 4: Copy Files to Your Local Folder**
Based on your team division above, copy ONLY your assigned files from the main codebase into this cloned repository.

### **STEP 5: Stage and Commit Your Files**
```bash
# Check what files are new/modified
git status

# Stage all your files
git add .

# Commit with a meaningful message
git commit -m "feat: Add [YOUR_SECTION] files for Appointly

- Added all [UI/Backend/Config] files
- Configured [relevant details]
- Tested locally"
```

**Better commit messages:**
- Teammate 1: `feat: Add frontend components and routing system`
- Teammate 2: `feat: Add backend authentication and server functions`
- Teammate 3: `feat: Add project configuration and dependencies`

### **STEP 6: Push Your Branch**
```bash
git push -u origin feature/TEAMMATE_NAME-setup
```

You'll be prompted to enter your GitHub credentials (or use GitHub token)

### **STEP 7: Create Pull Request**
1. Go to https://github.com/Atharv1136/Appointly/
2. Click **"Compare & pull request"** button
3. Add description of your changes
4. Click **"Create pull request"**

---

## 🔄 Merging Strategy (Coordinator Only)

After all 3 teammates push their branches:

```bash
# Switch to main
git checkout main

# Pull latest changes
git pull origin main

# Merge Teammate 1's branch
git merge feature/teammate1-name

# Merge Teammate 2's branch
git merge feature/teammate2-name

# Merge Teammate 3's branch
git merge feature/teammate3-name

# Push merged changes
git push origin main
```

Or use GitHub's "Squash and merge" or "Create a merge commit" options in the UI.

---

## ✅ Verification Checklist

After all pushes are complete:

```bash
# View git history with all contributors
git log --oneline --graph --all

# See who committed what
git log --format="%h %an: %s"

# See commits by teammate
git log --author="TEAMMATE_NAME"
```

Expected output should show:
- ✅ 3 different authors/email addresses
- ✅ Each person's commits in history
- ✅ All files in the repository
- ✅ Clean commit history

---

## 🆘 Troubleshooting

### Problem: "Permission denied" when pushing
**Solution:** 
- Use GitHub token instead of password
- Go to Settings → Developer settings → Personal access tokens
- Create token with `repo` scope
- Use token as password when prompted

### Problem: "Please tell me who you are"
**Solution:** Run git config commands again:
```bash
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

### Problem: Files conflict between teammates
**Solution:**
- Each teammate should commit ONLY their assigned files
- Don't modify each other's files
- If conflict occurs, communicate and resolve in a new commit

### Problem: Remote repository already has commits
**Solution:** Contact repo admin or delete and recreate the repo

---

## 📝 Summary of Timeline

1. **Coordinator** prepares empty GitHub repo
2. **Each Teammate** (in any order):
   - Clone repo
   - Configure git
   - Create branch
   - Copy assigned files
   - Commit and push
3. **Coordinator** merges all branches to main
4. **Verify** git history shows all 3 contributors

---

## 🎯 Pro Tips

✨ **Use meaningful commit messages** - They show in git history  
✨ **Push frequently** - Avoid merge conflicts  
✨ **Each file should be owned by ONE person** - No overlapping files  
✨ **Test everything locally** - Before pushing to GitHub  
✨ **Document who did what** - In commit messages and README

---

Good luck in the hackathon! 🚀
