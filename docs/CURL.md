# CURL

Some CURL examples to make things easier for people building clients in various languages.

# Connect

```bash
curl -X GET "https://127.0.0.1:6363/api/" -u "admin:root" -k -H "Content-Type: application/json"
```

# Create DB

```bash
curl -X POST "https://127.0.0.1:6363/api/db/admin/TEST_DB" -u "admin:root" -d '{ "comment" : "yo", "label" : "TEST_DB" }' -k -H "Content-Type: application/json"
```

# Delete DB

```bash
curl -X DELETE "https://127.0.0.1:6363/api/db/admin/TEST_DB" -u "admin:root" -k
```

# Add CSV

```bash
curl -X PUT "https://127.0.0.1:6363/api/csv/admin/TEST_DB" -u "admin:root" -k -F "csv=@test/0CE.csv" -F 'payload={"commit_info" : {"author" : "Author", "message" : "Message"}}'
```

# Update CSV

```bash
curl -X POST "https://127.0.0.1:6363/api/csv/admin/TEST_DB" -u "admin:root" -k -F "csv=@test/0CE.csv" -F 'payload={"commit_info" : {"author" : "Author", "message" : "Message"}}'
```

# Delete CSV
```bash
curl -X DELETE "https://127.0.0.1:6363/api/csv/admin/TEST_DB" -u "admin:root" -d '{"name" : "csv", "commit_info" : {"author" : "Author", "message" : "Message"}}' -k -H "Content-Type: application/json"
```

# Get CSV

```bash
curl -X GET "https://127.0.0.1:6363/api/csv/admin/TEST_DB?name=csv" -u "admin:root" -k -H "Content-Type: application/json"
```
# Get Prefixes

```bash
curl -X GET "https://127.0.0.1:6363/api/prefixes/admin/movie_graph" -u "admin:root" -k -H "Content-Type: application/json"
```

# Get Version

```bash
curl -X GET "https://127.0.0.1:6363/api/info" -u "admin:root" -k -H "Content-Type: application/json"
```

# Create Branch

```bash
curl -X POST "https://127.0.0.1:6363/api/branch/admin/foo/local/branch/bar" -u "admin:root" -d '{"origin" : "admin/foo/local/branch/main"}' -k -H "Content-Type: application/json"
```

# Delete Branch

```bash
curl -X DELETE "https://127.0.0.1:6363/api/branch/admin/foo/local/branch/bar" -d '{}' -u "admin:root" -k -H "Content-Type: application/json"
```

# Test WOQL multi-error response

```bash
curl -X POST "https://127.0.0.1:6363/api/woql/admin/test_schema" -u "admin:root" -d '{ 
  "all_witnesses" : true,
  "query" : {
  "@type":"And",
  "query_list": [
    {
      "@type":"QueryListElement",
      "index": {"@type":"xsd:integer", "@value":0},
      "query": {
	"@type":"AddTriple",
	"object":"scm:BS",
	"predicate":"rdf:type",
	"subject":"doc:test_subject"
      }
    },
    {
      "@type":"QueryListElement",
      "index": {"@type":"xsd:integer", "@value":1},
      "query": {
	"@type":"AddTriple",
	"object": {"@type":"xsd:integer", "@value":"asdf"},
	"predicate":"rdf:label",
	"subject":"doc:test_subject"
      }
    }
  ]
}}' -k -H "Content-Type: application/json"
```
