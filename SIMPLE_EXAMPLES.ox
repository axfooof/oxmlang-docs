# 🚀 ULTRA SIMPLE EXAMPLES

// ========== BASICS ==========

say "Hello World"
wait 2
say "2 seconds passed"

x = 10
y = 20
say $x
say $y

add result $x $y
say $result


// ========== FILE OPERATIONS ==========

write "test.txt" "Hello from OXM!"
read content "test.txt"
say $content

copy "test.txt" "backup.txt"
move "backup.txt" "archive.txt"
delete "archive.txt"


// ========== MATH ==========

add sum 10 20
sub diff 50 15
mul product 5 6
div quotient 100 4

say $sum
say $diff
say $product
say $quotient


// ========== CONDITIONS ==========

x = 15

if $x > 10
    say "x is greater than 10"
end

if $x == 15
    say "x is exactly 15"
end


// ========== LOOPS ==========

loop 1 5
    say $i
end


// ========== HTTP REQUESTS ==========

get response "https://api.github.com/users/github"
say $response

parse data $response
say $data


// ========== WEB AUTOMATION ==========

open
go google.com
type q "OXM programming language"
enter
wait 2
snap "google_search.png"
close


// ========== WEB SERVER ==========

route "/" "Welcome to OXM!"
route "/about" "This is the about page"
serve 8080


// ========== DATABASE ==========

connect sqlite "test.db"
execute "CREATE TABLE users (id INT, name TEXT)"
execute "INSERT INTO users VALUES (1, 'John')"
query users "SELECT * FROM users"
say $users


// ========== SYSTEM COMMANDS ==========

run "echo Hello from system"
run "dir"
run "ls -la"


// ========== REAL WORLD EXAMPLE ==========

say "Starting automated task..."

open
go github.com
wait 2
snap "github.png"

get data "https://api.github.com/users/torvalds"
parse info $data
write "github_data.json" $data

say "Task completed!"
close
