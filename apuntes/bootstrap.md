# Add Bootstrap to Rails 6

## Install Yarn Packages

```bash
yarn add bootstrap@5.2.0-beta1
yarn add @popperjs/core
```

## Add Bootstrap JS
app/javascript/packs/application.js:

```js
...
import "bootstrap"
...
```

## Add Boostrap CSS

If file extension is **.css** rename it to **.scss**

app/assets/stylesheets/application.scss:
```scss
...
@import "bootstrap/scss/bootstrap.scss";
...
```
