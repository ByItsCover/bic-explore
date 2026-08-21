POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query TrendingCovers {
    books_trending(
            duration: week
            limit: 10
        ) {
        ids
    }
}
```
HTTP 200
