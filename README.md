# ⚡ awesome-cli

A personal collection of CLI commands, shortcuts, and workflows I use and learn along my development journey.

---

## 📚 Table of Contents

* [General Tips](#-general-tips)
* [File Management](#-file-management)
* [Vim Productivity](#-vim-productivity)
* [sed (Stream Editor)](#-sed-stream-editor)
* [curl (API Testing)](#-curl-api-testing)
* [Git Shortcuts](#-git-shortcuts)
* [Useful One-liners](#-useful-one-liners)

---

## 🧠 General Tips

```bash
# clear terminal
clear

# repeat last command
!!

# show command history
history

# search in history
Ctrl + r
```

---

## 📂 File Management

```bash
# create file
touch file.txt

# create multiple files
touch file1.txt file2.txt

# create directory
mkdir folder

# remove file
rm file.txt

# remove directory
rm -rf folder

# copy files
cp file.txt backup.txt

# move/rename file
mv old.txt new.txt
```

---

## ⚡ Vim Productivity

```bash
# open file
vim file.txt
```

### Modes

* `i` → insert mode
* `Esc` → normal mode
* `:` → command mode

### Save & Exit

```vim
:w      " save
:q      " quit
:wq     " save and quit
:q!     " force quit
```

### Navigation

```vim
gg      " go to top
G       " go to bottom
dd      " delete line
yy      " copy line
p       " paste
```

---

## 🔍 sed (Stream Editor)

```bash
# replace text
sed -i 's/foo/bar/' file.txt

# global replace
sed -i 's/foo/bar/g' file.txt

# preview changes
sed 's/foo/bar/' file.txt

# create backup
sed -i.bak 's/foo/bar/' file.txt
```

### Example (package.json)

```bash
sed -i 's/"type": "commonjs"/"type": "module"/' package.json
```

---

## 🌐 curl (API Testing)

```bash
# GET request
curl https://api.example.com

# POST request
curl -X POST https://api.example.com \
  -H "Content-Type: application/json" \
  -d '{"name":"khalifa"}'

# pretty JSON (with jq)
curl https://api.example.com | jq

# show headers
curl -i https://api.example.com
```

---

## 🔧 Git Shortcuts

```bash
# init repo
git init

# add files
git add .

# commit
git commit -m "message"

# status
git status

# log
git log --oneline

# create branch
git checkout -b feature

# switch branch
git checkout main
```

---

## 🚀 Useful One-liners

```bash
# find file
find . -name "file.txt"

# search text
grep "text" file.txt

# count lines
wc -l file.txt

# show top processes
top

# disk usage
du -sh *
```

---

## 💡 Future Additions

* Docker commands
* Node.js scripts
* Automation scripts
* Shell aliases

---

## ⭐ Contributing

This is a personal knowledge base, but feel free to fork and adapt it for your own workflow.

---

## 🧑‍💻 Author

AurTTY
