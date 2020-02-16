const redis = require("redis");

const client = redis.createClient('//redis-17640.c44.us-east-1-2.ec2.cloud.redislabs.com:17640', 
{password:'IssbnWfAt5SY40c0sjXb1y8nQ6zWNBKN'});

client.on("ready", ()=>{console.log("ready");});
client.on("error", (err)=>{console.log("error " + err);});
client.on("connect", ()=>{console.log("connect");});
client.on("end", ()=>{console.log("end");});

client.quit();