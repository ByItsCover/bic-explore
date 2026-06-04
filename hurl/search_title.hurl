POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query LordOfTheRingsBooks {
    search(
        query: "Defensive Baking",
        query_type: "Book",
        per_page: 2,
        page: 1
    ) {
        results
    }
}
```
HTTP 200

