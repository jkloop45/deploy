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
var containerInfo = exec(containerInfoBash);

containerInfo = JSON.parse(containerInfo);

var container = {
  id: '',
  device: {}
}

container.id = containerInfo[0].Id;

var GraphDriver = containerInfo[0].GraphDriver.Data;
container.device = GraphDriver;

var sectorInfoBash = 'dmsetup tabel ' + container.device.DeviceName;
var sectorInfo = exec(sectorInfoBash);

console.log(sectorInfo, sectorInfoBash);

// var extendBash = 'echo 0 41943040 thin 252:0 9 | dmsetup load ' + container.device.DeviceName;

// if(result.code !== 0) {
//    console.error(result);
// }else {
//    console.log('extend success');
// }
