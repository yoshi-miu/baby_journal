# アプリケーション名
baby_journal(育児日記)

# アプリケーション概要
- ユーザーの新規登録、ログイン、ログアウト
- 子供の登録、編集
- 授乳の記録

# URL
https://baby-journal-28292.herokuapp.com/

# Basic認証
ID: baby  
パスワード: 28292

# テスト用アカウント
メールアドレス: test@test.com  
パスワード: 123qwe

# 利用方法
- 詳細ページまでのアクセス方法
  - 新規
    - 新規登録からユーザー登録 → お子様情報の登録
  - 登録済み
    - ログイン → 右上の記録をつけるから名前をクリック
- 授乳記録
  - 詳細ページの画面左下のアイコン<img src="https://user-images.githubusercontent.com/68325686/93076953-19cad400-f6c3-11ea-9b39-a2491fa76c8a.png" width="32px">をクリック → 時間と左右を選択し登録

# 目指した課題解決
乳児のいる親御さんの、
「授乳の間隔、授乳時間を記録して、確認できるようにしたい」
「子育ての記録を残したい」
という課題を解決しようとした。

# 洗い出した要件
- ユーザー管理機能
- 子ども情報の管理機能
- 哺乳記録機能
- 授乳タイマー機能
- 排便記録機能
- SNS認証機能
- 日次記録一覧機能
- 日記機能

# 実装した機能について
- ユーザー管理機能
  - ユーザーの新規登録、ログイン、ログアウトが行える
- 子ども情報管理機能
  - 子どもの名前、生年月日が登録、編集できる
  - 子どもごとに、詳細ページが表示される
- 授乳記録機能
  - 開始時間、終了時間、左右を選ぶことで授乳の記録ができる
  - 開始時間を基準に時間ごとに表示される

# 実装予定の機能
- 授乳タイマー機能
- 排便記録機能
- 日記機能

### Version
- Ruby 2.6.5
- Ruby on Rails 6.0

### Database 
- MySQL

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
