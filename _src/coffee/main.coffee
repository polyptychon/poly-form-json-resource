global.$ = global.jQuery = $ = require "jquery" unless jQuery
require 'angular/angular' unless angular?

module.exports =
  angular.module('poly-form-json-resource', [])
  .directive("jsonResource", ['$timeout', '$http', require("./directives/json-resource/JsonResource.coffee")])
