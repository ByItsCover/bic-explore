POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query PopularCovers {
    books(
            order_by: [{users_count: desc}]
            limit: 10
        ) {
        id
        title

        default_cover_edition {
            id
            isbn_13
            image {
                url
            }
            language {
              language
            }
            users_count
            users_read_count
            score
        }
    }
}
```
HTTP 200
