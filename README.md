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

<script src="/node_modules/poly-form-json-resource/lib/js/poly-form-json-resource.min.js"></script>
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

<script src="/bower_components/poly-form-json-resource/lib/js/poly-form-json-resource.min.js"></script>
```

Then add `poly-form-json-resource` as a dependency for your app:

```javascript
angular.module('myApp', ['poly-form-json-resource']);
```

## Documentation

Load a JSON object in a scope variable.

##### Attributes

| Name                                    | Type        | Default   | Description |
| :-------------------------------------  | :---        | :-----    | :-----      |
| variable                                | String      | null      | Variable name. |
| path                                    | String      | null      | Path to remote JSON. |
| map-data                                | Object      | null      | Mapping data from an object to url(path). See example bellow |
| data-type                               | String      | 'json'    | JSON or JSONP |
| update-on-expression-change             | Expression  | null      | Watch an expression and load JSON when expression changes |
| quiet-millis                            | Number      | 500       | How much time after expression change to trigger validation |
| minimum-input-length                    | Number      | 3         | Minimum watch expression value length to trigger reload |
| maximum-input-length                    | Number      | null      | Maximum watch expression value length to trigger reload |
| results-array-path                      | String      | ''        | Path to an array inside JSON |
| data-filter                             | Expression  | null      | Watch an array and filter data with array values only if we had an attribute with array path |


##### Example

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
  data-filter="{{ myForm.peopleDynamic.selected }}"
  update-on-expression-change="{{ $select.search }}">
</json-resource>
```
