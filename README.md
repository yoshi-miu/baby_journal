# README

### Version
* Ruby 2.6.5
* Ruby on Rails 6.0
  
### Database 
* MySQL

# テーブル設計

## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many children

## childrenテーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| name      | string | null: false |
| birth_day | date   | null: false |
| user      | references | null: false, foreign_key: true |

### Association

- belongs_to user
- has_many breasts
- has_many bottles
- has_many pees
- has_many poops

## breastsテーブル

| Column      | Type     | Options     |
| ----------- | -------- | ----------- |
| side        | string   | null: false |
| breast_time | integer  | null: false |
| start_time  | datetime | null: false |
| end_time    | datetime | null: false |
| child  | references | null: false, foreign_key: true |

### Association

- belongs_to child

## bottlesテーブル

| Column  | Type    | Options     |
| ------- | ------- | ----------- |
| content | string  | null: false |
| amount  | integer | null: false |
| child   | references | null: false, foreign_key: true |

### Association

- belongs_to child

## peesテーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| memo   | text   |  |
| child  | references | null: false, foreign_key: true |

### Association

- belongs_to child

## poopsテーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| memo   | text   |  |
| child  | references | null: false, foreign_key: true |

### Association

- belongs_to child

# ER図
![育児日記ER図](https://user-images.githubusercontent.com/68325686/92546324-33b48300-f28d-11ea-853b-a52f3d2d8f3c.png)
