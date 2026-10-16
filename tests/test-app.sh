
#!/usr/bin/env bash
set -euo pipefail

echo "Running ShopEase application tests..."

test -f app/index.html
echo "PASS: index.html exists"

test -f app/style.css
echo "PASS: style.css exists"

test -f app/script.js
echo "PASS: script.js exists"

grep -qi "ShopEase" app/index.html
echo "PASS: Homepage contains ShopEase"

grep -qi "Add to Cart" app/index.html
echo "PASS: Product page contains Add to Cart"

grep -qi "cart" app/script.js
echo "PASS: JavaScript contains cart logic"

echo "All ShopEase tests passed!"
