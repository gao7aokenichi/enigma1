# テーブル設計

##  Scramblerテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| rotor              | string | null: false |

### Association

- has_one :text
- belongs_to :reflector

##  Plug boardテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| Plug board         | string | null: false |

### Association

- has_one : text

##  Reflectorテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| Reflector          | string | null: false |

### Association

- belongs_to : text
- belongs_to : scrambler

##  textテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| text               | text   | null: false |

### Association

- belongs_to : scrambler
- belongs_to : plug board
- has_one : reflector