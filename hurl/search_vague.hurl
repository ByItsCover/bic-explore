POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query LordOfTheRingsBooks {
    search(
        query: "sword on the cover, but it looked kind of old and had oldish lettering. It had characters with powers too",
        query_type: "Book",
        per_page: 2,
        page: 1
    ) {
        results
    }
}
```
HTTP 200

