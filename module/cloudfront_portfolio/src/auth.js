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
  var newuri;

  if (!olduri.includes('.') && olduri.match(/^(?!.*\/$).*$/)) {
    newuri = olduri + '/';
  }

  // URIの末尾が'/'で終わっている場合にURIをindex.htmlで終わるように上書きする
  newuri = olduri.replace(/\/$/, '\/index.html');
  request.uri = newuri;

  return request;
}