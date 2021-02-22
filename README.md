# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| password           | string              | null: false             |
| name               | string              | null: false             |
| profile            | text                | null: false             |
| occupation         | text                | null: false             |
| position           | text                | null: false             |

### Association

* has_many :parks
* has_many :comments

## parks table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| catch_copy                          | text       | null: false       |
| concept                             | text       | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| text        | text       | null: false       |
| park        | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :park
- belongs_to :user