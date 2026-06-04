POST https://api.hardcover.app/v1/graphql
Authorization: Bearer {{token}}
```graphql
query LordOfTheRingsBooks {
    editions(where: {title: {_eq: "Harry Potter and the Philosopher's Stone"}}) {
        id
        title
        isbn_13
        image {
            url
        }
    }
}
```
HTTP 200

