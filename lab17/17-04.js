const redis = require("redis");

const client = redis.createClient('//redis-17640.c44.us-east-1-2.ec2.cloud.redislabs.com:17640',
    { password: 'IssbnWfAt5SY40c0sjXb1y8nQ6zWNBKN' });

client.on("ready", () => { console.log("ready"); });
client.on("error", (err) => { console.log("error " + err); });
client.on("connect", () => { console.log("connect"); });
client.on("end", () => { console.log("end"); });

var count = 10000;
startHset(client, count);
startHget(client, count);

function startHset(client, count) {
    let timer = Date.now();
    for (let i = 0; i < count; i++) {
        client.hset('hset_hget', i, JSON.stringify({id:i, val:`val-${i}`}), () => {
            if (++i == count) {
                console.log(`hset: ${Date.now() - timer} ms`);
            }
        });
    }
}

function startHget(client, count) {
    let timer = Date.now();
    for (let i = 0; i < count; i++) {
        client.hget('hset_hget', i, () => {
            if (++i == count) {
                console.log(`hget: ${Date.now() - timer} ms`);
            }
        });
    }
}

client.quit();