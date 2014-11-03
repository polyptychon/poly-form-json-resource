# Description

This directive allows you to load json data and bind them to a scope variable.

# Requirements

- [AngularJS](http://angularjs.org/)
- [JQuery](http://jquery.com/)
- [Bootstrap](https://github.com/twbs/bootstrap/)

## Install

You can install this package either with `npm` or with `bower`.

### npm

```shell
npm install --save polyptychon/poly-form-json-resource
```

Add a `<script>` to your `index.html`:

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.0/angular.min.js"></script>

<script src="/node_modules/poly-form-json-resource/_lib/poly-form-json-resource.min.js"></script>
```

Then add `poly-form-json-resource` as a dependency for your app:

```javascript
angular.module('myApp', ['poly-form-json-resource']);
```

Note that this package is in CommonJS format, so you can `require('poly-form-json-resource')`

### bower

```shell
bower install polyptychon/poly-form-json-resource
```

Add a `<script>` to your `index.html`:

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.0/angular.min.js"></script>

<script src="/bower_components/poly-form-json-resource/_lib/poly-form-json-resource.min.js"></script>
```

Then add `poly-form-json-resource` as a dependency for your app:

```javascript
angular.module('myApp', ['poly-form-json-resource']);
```

## Documentation

```html
<json-resource path="people.json" variable="people3Async"></json-resource>
```

```html
<json-resource
  path="http://www.weighttraining.com/api/v2/sm/search?types%5B%5D=:type&amp;term=:term&amp;limit=:limit"
  map-data="{type: 'exercise', limit: -1, term: $select.search}"
  query-data-type="jsonp"
  query-results-array-path="results.exercise"
  variable="people4Async"
  query-data-filter="{{ myForm.peopleDynamic.selected }}"
  update-on-expression-change="{{ $select.search }}">
</json-resource>
```
