POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query LordOfTheRingsBooks {
    books(where:
        {_and: [{id: {_in: [
        446681,
        446680,
        427578,
        1817542,
        446730,
        446722,
        637867,
        1464466,
        818989,
        1941363
        ]}}]
        }
        order_by: [{default_cover_edition: {score: desc}}]) {
        id
        title
        users_count

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
