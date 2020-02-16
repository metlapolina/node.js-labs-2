const redis = require("redis");

const client = redis.createClient('//redis-17640.c44.us-east-1-2.ec2.cloud.redislabs.com:17640',
    { password: 'IssbnWfAt5SY40c0sjXb1y8nQ6zWNBKN' });

client.on("ready", () => { console.log("ready"); });
client.on("error", (err) => { console.log("error " + err); });
client.on("connect", () => { console.log("connect"); });
client.on("end", () => { console.log("end"); });

var count = 10000;
startIncr(client, count);
startDecr(client, count);

function startIncr(client, count) {
    let timer = Date.now();
    for (let i = 0; i < count; i++) {
        client.incr('incr_decr', () => {
            if (++i == count) {
                console.log(`incr: ${Date.now() - timer} ms`);
            }
        });
    }
}

function startDecr(client, count) {
    let timer = Date.now();
    for (let i = 0; i < count; i++) {
        client.decr('incr_decr', () => {
            if (++i == count) {
                console.log(`decr: ${Date.now() - timer} ms`);
            }
        });
    }
}

client.quit();