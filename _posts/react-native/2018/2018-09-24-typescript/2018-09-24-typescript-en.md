---
layout: 'post'
permalink: '/react-native/typescript/'
paginate_path: '/react-native/:num/typescript/'
lang: 'en'
categories: 'react-native'
comments: true

title: 'typescript'
description: 'create react-native project and  develop it by applying typescript.'
image: '/assets/images/category/react-native/typescript.jpg'
---


## create react-native project
create RN project with below command.

{% include react-native/create_new_project.md %}

## install required libraries for typescript
install required libraries for applying typescript to the project.

{% include_relative common/install_modules.md %}

### typescript libraries
- typescript: intsall typescript.
- @types/react: intsll react types for typescript.
- @types/react-native: intall RN type for typescript.

## typescript configuration
configure typescript to make react-native work.

### create tsconfig.json
create ```tsconfig.json``` in the project root folder and copy-paste below contents.

{% include_relative common/tsconfig_json.md %}

if you want more detail, see official website.
- [typescript - tsconfig.json](https://www.typescriptlang.org/docs/handbook/tsconfig-json.html){:rel="nofollow noreferrer" target="_blank"}
- [typescript - compile options](https://www.typescriptlang.org/docs/handbook/compiler-options.html){:rel="nofollow noreferrer" target="_blank"}

### create tslint.json
configure tslint to help typescript development. create ```tslint.json``` in the project root folder and copy-paste below contents.

{% include_relative common/tslint_json.md %}

if you want more detail, see official website.
- [typescript - tslint](https://github.com/Microsoft/TypeScript-React-Starter#overriding-defaults){:rel="nofollow noreferrer" target="_blank"}
- [tslint - configuration](https://palantir.github.io/tslint/usage/configuration/){:rel="nofollow noreferrer" target="_blank"}

### create rn-cli.config.js
we got the comment(```No need for rn-cli.config.js anymore since v0.57```) on facebook from [Bruno Lemos](https://www.facebook.com/brunolemos?fref=gc&dti=586400221495560){:rel="nofollow noreferrer" target="_blank"} and we checked it. it doesn't need anymore to create ```rn-cli.config.js``` since RN(react-native) version 0.57.

~~this setting help RN to recognize typescript at runtime. create ```rn-cli.config.js``` file in the project root folder and copy-paste below contents.~~

{% include_relative common/rn_cli_config.md %}

## code with typescript
change App.js filename to App.tsx and code with typescript style.

{% include_relative common/typescript_code.md %}