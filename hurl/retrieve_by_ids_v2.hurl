POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query LordOfTheRingsBooks {
    books(where:
        {_and: [{id: {_in: [
        468802,
        2606830,
        2524094,
        376452,
        384648
        ]}}]
        }
        order_by: [{default_cover_edition: {score: desc}}]) {
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
