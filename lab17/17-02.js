const redis = require("redis");

const client = redis.createClient('//redis-17640.c44.us-east-1-2.ec2.cloud.redislabs.com:17640',
    { password: 'IssbnWfAt5SY40c0sjXb1y8nQ6zWNBKN' });

client.on("ready", () => { console.log("ready"); });
client.on("error", (err) => { console.log("error " + err); });
client.on("connect", () => { console.log("connect"); });
client.on("end", () => { console.log("end"); });

var count = 10000;
startSet(client, count);
startGet(client, count);
startDel(client, count);

function startSet(client, count) {
    let timer = Date.now();
    for (let i = 0; i < count; i++) {
        client.set(i, `set ${i}`, () => {
            if (++i == count) {
                console.log(`set: ${Date.now() - timer} ms`);
            }
        });
    }
}

function startGet(client, count) {
    let timer = Date.now();
    for (let i = 0; i < count; i++) {
        client.get(i, () => {
            if (++i == count) {
                console.log(`get: ${Date.now() - timer} ms`);
            }
        });
    }
}

function startDel(client, count) {
    let timer = Date.now();
    for (let i = 0; i < count; i++) {
        client.del(i, () => {
            if (++i == count) {
                console.log(`del: ${Date.now() - timer} ms`);
            }
        });
    }
}

client.quit();