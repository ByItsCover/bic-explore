POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query LordOfTheRingsBooks {
    editions(where:
        {_and: [{book_id: {_in: [
        468802,
        2606830,
        2524094,
        376452,
        384648
        ]}}]
        }
        order_by: [{book_id: desc}, {score: desc}]) {
        id
        book_id
        title
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
```
HTTP 200

