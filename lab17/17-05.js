const redis = require("redis");

const sub_client = redis.createClient('//redis-17640.c44.us-east-1-2.ec2.cloud.redislabs.com:17640', { password: 'IssbnWfAt5SY40c0sjXb1y8nQ6zWNBKN' });
const pub_client = redis.createClient('//redis-17640.c44.us-east-1-2.ec2.cloud.redislabs.com:17640', { password: 'IssbnWfAt5SY40c0sjXb1y8nQ6zWNBKN' });

sub_client.on('subscribe', (channel, count)=>{
    console.log(`subscribe: channel = ${channel}, count = ${count}`);
});
sub_client.on('message', (channel, message)=>{
    console.log(`sub channel = ${channel} : ${message}`);
});
sub_client.on('unsubscribe', (channel)=>{
    console.log(`unsubscribe: channel = ${channel}`);
});

var channel = 'channel-01';

sub_client.subscribe(channel);

let mess = setInterval(() => {
    pub_client.publish(channel, 'message from publisher');
}, 1000);

setTimeout(()=>{
    sub_client.unsubscribe(channel);
    clearInterval(mess);
    pub_client.quit();
    sub_client.quit()
}, 10000);