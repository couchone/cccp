function(head, req) {
  var row;
  send('{"docs":[');
  while(row = getRow()) {
    send(JSON.stringify(row.value) + ",");
  }
  send(']}');
}
