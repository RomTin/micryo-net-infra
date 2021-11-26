function handler(event) {
  var request = event.request;
  var headers = request.headers;

  var authString = "Basic ${password}";

  if (${auth_enabled}) {
    if (
      typeof headers.authorization === "undefined" ||
      headers.authorization.value !== authString
    ) {
      return {
        statusCode: 401,
        statusDescription: "Unauthorized",
        headers: { "www-authenticate": { value: "Basic" } }
      };
    }
  }

  var olduri = request.uri;

  if (!olduri.includes('.') && olduri.match(/^(?!.*\/$).*$/)) {
    newuri = olduri + '/';
    var res = {
      statusCode: 302,
      statusDescription: 'Found',
      headers: { "location": { "value": newuri } }
    }
    return res
  }

  // URIの末尾が'/'で終わっている場合にURIをindex.htmlで終わるように上書きする
  var newuri = olduri.replace(/\/$/, '\/index.html');
  request.uri = newuri;

  return request;
}