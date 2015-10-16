# 判然 [![NPM version][npm-image]][npm] [![Build Status][travis-image]][travis] [![Coverage Status][coveralls-image]][coveralls]

[![Sauce Test Status][sauce-image]][sauce]

> UTF-8 halfwidth katakana interconversion functions

## Installation
### Via npm

```bash
$ npm install hanzen --save
```

```js
var hanzen= require('hanzen');
console.log(hanzen); //object
```

### Via bower

```bash
$ bower install hanzen --save
```

```html
<script src="bower_components/hanzen/hanzen.min.js"></script>
<script>
  console.log(hanzen); //object
</script>
```

### Via rawgit.com(the simple way)

```html
<script src="https://cdn.rawgit.com/59naga/hanzen/master/hanzen.min.js"></script>
<script>
  console.log(hanzen); //object
</script>
```

# API

## .toHankaku(str) -> result
## .toZenkaku(str) -> result

引数`str`に含まれているカタカナ（`｡｢｣､･ｦｧｨｩｪｫｬｭｮｯｰｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝｶﾞｷﾞｸﾞｹﾞｺﾞｻﾞｼﾞｽﾞｾﾞｿﾞﾀﾞﾁﾞﾂﾞﾃﾞﾄﾞﾊﾞﾊﾟﾋﾞﾋﾟﾌﾞﾌﾟﾍﾞﾍﾟﾎﾞﾎﾟﾜﾞｳﾞｦﾞ`）の全角・半角の相互変換を行います。
それ以外の文字は置換しません。

```js
var hanzen= require('hanzen');
hanzen.toHankaku('あのイーハトーヴォのすきとおった風');
// 'あのｲｰﾊﾄｰｳﾞｫのすきとおった風'

hanzen.toZenkaku('あのｲｰﾊﾄｰｳﾞｫのすきとおった風');
// 'あのイーハトーヴォのすきとおった風'
```

License
---
[MIT][License]

[License]: http://59naga.mit-license.org/

[sauce-image]: http://soysauce.berabou.me/u/59798/hanzen.svg
[sauce]: https://saucelabs.com/u/59798
[npm-image]:https://img.shields.io/npm/v/hanzen.svg?style=flat-square
[npm]: https://npmjs.org/package/hanzen
[travis-image]: http://img.shields.io/travis/59naga/hanzen.svg?style=flat-square
[travis]: https://travis-ci.org/59naga/hanzen
[coveralls-image]: http://img.shields.io/coveralls/59naga/hanzen.svg?style=flat-square
[coveralls]: https://coveralls.io/r/59naga/hanzen?branch=master
