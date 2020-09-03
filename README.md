# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


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

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| side   | string | null: false |
| time   | string |  |
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
