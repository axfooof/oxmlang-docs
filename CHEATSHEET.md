# 🎯 OXM - ULTRA SIMPLE ENGINE

**The World's Easiest Programming Language**

---

## ⚡ COMMAND LIST - ONE WORD = ONE ACTION

### 📢 Output
- `say` - Print anything
- `show` - Same as say
- `print` - Same as say

### ⏱️ Time
- `wait` - Sleep (seconds)
- `sleep` - Same as wait

### 💾 Variables
- `set` - Create variable: `set x 10`
- `x = 10` - Quick assign

### 🔢 Math (result first, then numbers)
- `add result 10 20` → result = 30
- `sub result 50 15` → result = 35
- `mul result 5 6` → result = 30
- `div result 100 4` → result = 25

### 📁 Files
- `read var "file.txt"` - Read file
- `write "file.txt" "content"` - Write file
- `copy "a.txt" "b.txt"` - Copy file
- `move "old.txt" "new.txt"` - Move/rename
- `delete "file.txt"` - Delete file
- `folder "dirname"` - Create folder

### 🌐 HTTP
- `get var "url"` - HTTP GET
- `post var "url" "json"` - HTTP POST
- `parse var $json` - Parse JSON string
- `json var $object` - Convert to JSON

### 💾 Database
- `connect mysql "connection_string"`
- `connect postgres "connection_string"`
- `connect sqlite "file.db"`
- `query var "SELECT * FROM users"`
- `execute "INSERT INTO..."`

### 🌐 Browser
- `open` - Open browser (visible)
- `open hidden` - Open headless
- `go url` - Navigate (auto adds https://)
- `type selector "text"` - Type text
- `click selector` - Click element
- `enter` - Press Enter key
- `snap "file.png"` - Screenshot
- `grab var selector` - Get text from element
- `html var` - Get page HTML
- `back` - Go back
- `forward` - Go forward
- `reload` - Refresh page
- `close` - Close browser

**Smart Selectors:**
- `type search "text"` → finds `#search` automatically
- `click button` → finds `#button` automatically
- Or use: `.class`, `#id`, `tagname`

### 🖥️ Web Server
- `route "/" "HTML content"` - Add route
- `serve 8080` - Start server on port

### ⚙️ System
- `run "command"` - Execute shell command

### 🔄 Control Flow

**IF:**
```
if $x > 10
    say "yes"
end
```

**LOOP:**
```
loop 1 10
    say $i
end
```

**Operators:** `>`, `<`, `>=`, `<=`, `==`, `!=`, `is`, `not`

---

## 📚 LEARNING PATH (1 HOUR)

### Minute 1-10: Print & Variables
```
say "Hello"
x = 10
say $x
```

### Minute 11-20: Math
```
add sum 5 10
say $sum
```

### Minute 21-30: Files
```
write "test.txt" "hello"
read data "test.txt"
say $data
```

### Minute 31-40: Conditions
```
x = 15
if $x > 10
    say "big"
end
```

### Minute 41-50: Loops
```
loop 1 5
    say $i
end
```

### Minute 51-60: Browser
```
open
go google.com
close
```

---

## 🎯 USE CASES

### 1. Web Scraping (7 lines)
```
open
go github.com/trending
wait 2
grab title "h1"
say $title
snap "page.png"
close
```

### 2. API Testing (5 lines)
```
get response "https://api.github.com/users/github"
parse data $response
say $data
write "output.json" $response
```

### 3. File Automation (4 lines)
```
read content "input.txt"
say $content
write "output.txt" $content
copy "output.txt" "backup.txt"
```

### 4. Web Server (3 lines)
```
route "/" "Welcome!"
route "/api" "{'status':'ok'}"
serve 8080
```

### 5. Database CRUD (5 lines)
```
connect sqlite "app.db"
execute "CREATE TABLE users (id INT, name TEXT)"
execute "INSERT INTO users VALUES (1, 'John')"
query users "SELECT * FROM users"
say $users
```

---

## 🔥 COMPARISON WITH OTHER LANGUAGES

### Task: "Get JSON from API and save to file"

**Python:**
```python
import requests
import json

response = requests.get('https://api.github.com/users/github')
data = response.json()
with open('output.json', 'w') as f:
    json.dump(data, f)
```
**6 lines + imports**

**JavaScript:**
```javascript
const fetch = require('node-fetch');
const fs = require('fs');

fetch('https://api.github.com/users/github')
    .then(res => res.json())
    .then(data => {
        fs.writeFileSync('output.json', JSON.stringify(data));
    });
```
**7 lines + requires**

**OXM:**
```
get data "https://api.github.com/users/github"
write "output.json" $data
```
**2 lines, ZERO imports!**

---

## 💪 STRENGTHS

✅ **Shortest Code** - 50-80% less code than others  
✅ **Zero Setup** - No pip, npm, or package managers  
✅ **Built-in Everything** - Browser, HTTP, DB included  
✅ **Natural Syntax** - English-like commands  
✅ **Fast** - Go-based execution  
✅ **Single Binary** - One file, runs anywhere  

---

## 🎓 PHILOSOPHY

1. **One Word = One Action** (no `browser.launch`, just `open`)
2. **No Dots** (except CSS selectors)
3. **Smart Defaults** (auto-add `https://`, auto-find `#id`)
4. **Result First** (math commands: `add result 10 20`)
5. **No Semicolons** (clean lines)
6. **Variables with $** (clear distinction: `$x`)

---

## 📦 BUILD & RUN

```bash
# Build
go build -o oxm oxm_simple.go

# Run
oxm script.ox
```

---

## 🚀 START NOW!

**Create `hello.ox`:**
```
say "Hello World"
wait 2
say "Welcome to OXM!"
```

**Run:**
```bash
oxm hello.ox
```

**That's it!** 🎉

---

**NO BULLSHIT. PURE SIMPLICITY. MAXIMUM POWER.** ⚡
