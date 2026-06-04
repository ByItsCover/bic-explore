POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query LordOfTheRingsBooks {
    search(
        query: "Brandom Mull",
        query_type: "Book",
        per_page: 5,
        page: 1,
        fields: "title,series_names,author_names,alternative_titles",
        weights: "1,1,5,1",
        typos: "5,5,5,5"
    ) {
        ids
    }
}
```
HTTP 200

