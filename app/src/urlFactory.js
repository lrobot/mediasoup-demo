import qs from 'qs';

let protooPort = 4443;

if (window.location.hostname === 'test.mediasoup.org') {
	protooPort = 4444;
}

const host = window.location.host;
const hostname = window.location.hostname;
let protocol = 'wss';

function getWebsocketProtocol() {
	if('http:' == window.location.protocol) {
		return 'ws';
	} else {
		return 'wss';
	}
}
// const hostname = 'v3demo.mediasoup.org'
protocol = getWebsocketProtocol()

export function getProtooUrl(params) {
	const query = qs.stringify(params);

	return `${protocol}://${host}/protoo?${query}`;
}
