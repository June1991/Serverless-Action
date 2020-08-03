# Serverless Action [![LICENSE](https://img.shields.io/badge/License-Apache--2.0-green.svg?style=flat-square)](LICENSE) [![LICENSE](https://img.shields.io/badge/License-Anti%20996-blue.svg?style=flat-square)](https://github.com/996icu/996.ICU/blob/master/LICENSE) [![996.icu](https://img.shields.io/badge/Link-996.icu-red.svg?style=flat-square)](https://996.icu)

Github action for serverless framework

## Inputs

| Input |                         Description |              Example | Required |
| :---- | ----------------------------------: | -------------------: | -------: |
| args  | arguments/options for `sls` command | `--inputs.stage=prod` |      yes |

## Usage

```yaml

name: deploy serverless


on:
  push:
    branches:
      - master
  
jobs:
  test:
    name: test
    runs-on: ubuntu-latest
    steps:
      - name: unit test
        run: '' 
  deploy:
    name: deploy serverless
    runs-on: ubuntu-latest
    needs: [test]
    steps:
      - name: clone local repository
        uses: actions/checkout@v2
      - name: install dependency
        run: npm install
      - name: build
        run: npm build
      - name: deploy serverless
        uses: June1991/serverless-action@master
        env:
          SERVERLESS_PLATFORM_VENDOR: tencent
          TENCENT_SECRET_ID: ${{ secrets.TENCENT_SECRET_ID }}
          TENCENT_SECRET_KEY: ${{ secrets.TENCENT_SECRET_KEY }}
      
```
