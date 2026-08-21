POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query LordOfTheRingsBooks {
    books(where:
        {_and: [{id: {_in: [
        446681,
        446680,
        446730,
        427578,
        446722,
        637867,
        1817542,
        427473,
        818989,
        1464466
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
