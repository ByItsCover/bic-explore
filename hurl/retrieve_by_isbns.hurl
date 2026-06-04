POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query LordOfTheRingsBooks {
    editions(where:
        {_and: [{isbn_13: {_in: ["9781442482388","9781416989417","9780316015844","9780439023481"
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

