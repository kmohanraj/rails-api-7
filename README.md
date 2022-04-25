#### Rails Api Application

Step-1: Create Rails Api Application

`rails new rails-api --api --database=mysql `

Step-2: Create A Versioned Directory For Our Controllers

```
// First we create the api directory
mkdir rails-api/app/controllers/api
// Followed by the v1 directory
mkdir rails-api/app/controllers/api/v1

```

Step-3: Generate Controllers

```
rails g controller api/v1/products index show --no-helper --no-assets --no-template-engine --no-test-framework
```

Step-4: Generate Model

```
rails g model category name:string desc:string
rails g model product name:string brand:string price:decimal{10.2} desc:string is_active:boolean category:references
```
