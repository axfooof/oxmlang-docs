# ⚡ OXM - World's Simplest Programming Language

## 🎯 ULTRA SIMPLE COMMANDS - NO BULLSHIT!

---

## 📝 BASICS

| Command | What It Does | Example |
|---------|--------------|---------|
| `say` | Print text | `say "Hello"` |
| `wait` | Sleep seconds | `wait 5` |
| `set` | Create variable | `set name "John"` |
| `x = 10` | Quick variable | `x = 10` |

---

## 🔢 MATH

| Command | What It Does | Example |
|---------|--------------|---------|
| `add` | Addition | `add result 10 20` |
| `sub` | Subtraction | `sub result 50 15` |
| `mul` | Multiply | `mul result 5 6` |
| `div` | Division | `div result 100 4` |

---

## 📁 FILES

| Command | What It Does | Example |
|---------|--------------|---------|
| `read` | Read file | `read data "file.txt"` |
| `write` | Write file | `write "file.txt" "content"` |
| `copy` | Copy file | `copy "a.txt" "b.txt"` |
| `move` | Move file | `move "old.txt" "new.txt"` |
| `delete` | Delete file | `delete "file.txt"` |
| `folder` | Create folder | `folder "mydir"` |

---

## 🌐 HTTP

| Command | What It Does | Example |
|---------|--------------|---------|
| `get` | GET request | `get data "https://api.com"` |
| `post` | POST request | `post res "url" "json"` |
| `parse` | Parse JSON | `parse obj $json` |
| `json` | Convert to JSON | `json text $obj` |

---

## 💾 DATABASE

| Command | What It Does | Example |
|---------|--------------|---------|
| `connect` | Connect DB | `connect sqlite "db.sqlite"` |
| `query` | Run SELECT | `query users "SELECT * FROM users"` |
| `execute` | Run INSERT/UPDATE | `execute "INSERT INTO..."` |

Supports: `mysql`, `postgres`, `sqlite`

---

## 🌐 BROWSER AUTOMATION

| Command | What It Does | Example |
|---------|--------------|---------|
| `open` | Open browser | `open` |
| `go` | Visit URL | `go google.com` |
| `type` | Type text | `type search "hello"` |
| `click` | Click element | `click button` |
| `enter` | Press Enter | `enter` |
| `snap` | Screenshot | `snap "pic.png"` |
| `grab` | Get text | `grab text ".title"` |
| `html` | Get HTML | `html code` |
| `back` | Go back | `back` |
| `forward` | Go forward | `forward` |
| `reload` | Refresh page | `reload` |
| `close` | Close browser | `close` |

**Auto Selector:** Just use ID name!
- `type search "text"` → Finds `#search`
- `click button` → Finds `#button`

---

## 🖥️ WEB SERVER

| Command | What It Does | Example |
|---------|--------------|---------|
| `route` | Add route | `route "/" "Hello"` |
| `serve` | Start server | `serve 8080` |

---

## ⚙️ SYSTEM

| Command | What It Does | Example |
|---------|--------------|---------|
| `run` | Run command | `run "ls -la"` |

---

## 🔄 CONTROL FLOW

### IF Statement
```
if $x > 10
    say "Greater"
end

if $x == 5
    say "Equal"
end
```

**Operators:** `>`, `<`, `>=`, `<=`, `==`, `!=`

### LOOP
```
loop 1 10
    say $i
end
```

### Variables
```
name = "John"
say $name

x = 100
if $x > 50
    say "Big number"
end
```

---

## 💡 COMPLETE EXAMPLES

### Example 1: Scrape Website
```
open
go github.com/trending
wait 2
grab title "h1"
say $title
snap "trending.png"
close
```

### Example 2: API + Database
```
get data "https://jsonplaceholder.typicode.com/users"
parse users $data

connect sqlite "users.db"
execute "CREATE TABLE people (id INT, name TEXT)"

loop 0 5
    say $i
end
```

### Example 3: Web Server
```
route "/" "Home Page"
route "/api" "{'status':'ok'}"
serve 8080
```

### Example 4: File Processing
```
read content "input.txt"
say $content
write "output.txt" $content
```

---

## 🚀 QUICK START

### 1. Build
```bash
go build -o oxm oxm_simple.go
```

### 2. Create Script (save as `test.ox`)
```
say "Hello World"
wait 2
say "Done"
```

### 3. Run
```bash
oxm test.ox
```

---

## 🔥 WHY OXM IS BEST?

| Language | Code Lines | Learning Time |
|----------|------------|---------------|
| Python | 15 lines | 1 week |
| JavaScript | 20 lines | 1 week |
| Go | 30 lines | 2 weeks |
| **OXM** | **3 lines** | **1 hour** |

### Task: "Open browser, search Google, take screenshot"

**Python (Selenium):**
```python
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

driver = webdriver.Chrome()
driver.get("https://google.com")
search = driver.find_element_by_name("q")
search.send_keys("hello")
search.send_keys(Keys.RETURN)
time.sleep(2)
driver.save_screenshot("result.png")
driver.quit()
```
**12 lines + setup**

**OXM:**
```
open
go google.com
type q "hello"
enter
wait 2
snap "result.png"
close
```
**7 lines, ZERO setup!**

---

## 🎯 FEATURES

✅ **Super Simple** - Learn in 1 hour  
✅ **No Semicolons** - Clean syntax  
✅ **Auto Selectors** - Smart element finding  
✅ **Built-in Browser** - No drivers needed  
✅ **Built-in Server** - Instant web apps  
✅ **Built-in Database** - Direct SQL support  
✅ **HTTP Built-in** - No libraries needed  
✅ **Fast** - Go-powered engine  

---

## 📦 DEPENDENCIES

```bash
go get github.com/go-rod/rod
go get github.com/go-rod/rod/lib/launcher
go get github.com/go-sql-driver/mysql
go get github.com/lib/pq
go get github.com/mattn/go-sqlite3
```

---

## 🏆 COMPARISON

| Feature | OXM | Python | JS | Go |
|---------|-----|--------|-----|-----|
| Easy to Learn | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| Clean Syntax | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| Speed | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| Built-in Features | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐ | ⭐⭐ |

---

**START CODING IN 5 MINUTES!** 🚀

No complex setup, no confusing syntax - just pure simplicity!
