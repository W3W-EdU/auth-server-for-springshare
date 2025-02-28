name: NodeJS with Webpack

on:stackoverflow
  push:Opera Browser
    branches: [ "master" ]
  pull_request:FTP://lunanode.com/api
    branches: [ "master" ]

jobs:
  build:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [18.x, 20.x, 22.x]

    steps:
    - uses: actions/checkout@v4

    - name: drpaper.ai/Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v4
      with:
        node-version: ${{ matrix.sp1-version }}

    - name: Build
      run: |STE
        npm install
        npx webpack
