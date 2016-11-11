#!/usr/bin/env node

require('shelljs/global');
var argv = require('yargs')
  .option('c', {
    alias : 'container',
    demand: true,
    describe: 'container name',
    type: 'string'
  })
  .option('s', {
    alias : 'size',
    demand: false,
    describe: 'device size',
  })
  .usage('Usage: extend.js [options]')
  .example('', 'extend device size')
  .help('h')
  .alias('h', 'help')
  .epilog('Gospely Copyright 2016')
  .argv;

var containerName = argv.c,
    size = argv.s;

var containerInfoBash = 'docker inspect ' + containerName;
var containerInfo = exec(runBash);

containerInfo = JSON.parse(containerInfo);

var container = {
  id: '',
  device: ''
}

console.log(containerInfo[0]);

if(result.code !== 0) {
   console.error(result);
}else {
   console.log('extend success');
}
