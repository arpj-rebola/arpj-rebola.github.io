#!/usr/bin/env bash

if ! test "$1"; then
    echo "no commit message provided"
fi
temp="$(mktemp)"
header='<?xml version="1.0" encoding="UTF-8"?>
<urlset
    xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
       http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd"
>'
mapfile -t pages < <(find _pages/ -type f -iname '*.md' | jq -McrRs 'split("\n") | ["index.md"] + map(select(. != "")) | .[]')
canonical="$(jq -McrRs 'split("\n") | .[] | capture("^canonical: (?<canonical>.*)$") | .["canonical"]' _config.yml)"
echo "$header" >> "$temp"
for page in "${pages[@]}"; do
    slug="$(jq -McrRs 'split("\n") | (to_entries | map(select(.["value"] == "---") | .["key"]) | .[1]) as $last | .[:($last)] | .[] | capture("^permalink: /(?<link>.*)") | .["link"]' "$page")"
    update="$(date -r "$page" "+%Y-%m-%d")"
    echo "<url>
 <loc>$canonical$slug</loc>
 <priority>1.0</priority>
 <lastmod>$update</lastmod>
 <changefreq>weekly</changefreq>
</url>" >> "$temp"
done
echo "</urlset>" >> "$temp"
mv "$temp" sitemap.xml
git add sitemap.xml
git commit -am "$1"
git push
exit 0