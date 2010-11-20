# CCCP — CouchDB Curl Copy

A small demo app that shows how you can do fun maintenance tasks with common
UNIX tools.

Today `curl`:

    curl $COUCHDBDATABSE | curl -X POST $ANOTHERCOUCHDBDATABASE


## How it Works

The key is in `lists/bulk_docs.js`; It transforms a view result into a JSON
object that the CouchDB `_bulk_docs` API understands.

The rest of this app is just supporting the showcase:

 - `views/all/map.js` is a sample view that just lists all documents.
 - `_docs` are a bunch of example documents.
 - `bulk.sh` is a test script that shows how to invoke the mighty `curl`.


## What is this good for?

Say you want to modify all your documents in one swoop:

 1. Write a view that emits a value with whatever your docs should look like.
 2. Add cccp’s list function to the database.
 3. Do the `curl | curl` dance and you’re done.

Let me know if you have other uses for this.


## Author

Jan Lehnardt <jan@apache.org> after an idea by Jason Smith <jhs@couchone.com>


## License

MIT.
