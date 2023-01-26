MATCH
  (a:User),
  (b:League)
WHERE a.first_name = "Elliott" AND b.name = "My Awesome League"
CREATE (a)-[r:is_member_of]->(b)
RETURN type(r);

MATCH
  (a:User),
  (b:League)
WHERE a.first_name = "Elliott" AND b.name = "NFL Fantasy Football 2023"
CREATE (a)-[r:is_member_of]->(b)
RETURN type(r);

MATCH
  (a:User),
  (b:League)
WHERE a.first_name = "John" AND a.last_name = "Foo" AND b.name = "NFL Fantasy Football 2023"
CREATE (a)-[r:is_member_of]->(b)
RETURN type(r);

MATCH
  (a:User),
  (b:League)
WHERE a.first_name = "John" AND a.last_name = "Foo" AND b.name = "NCAA Fantasy Baseball 2023"
CREATE (a)-[r:is_member_of]->(b)
RETURN type(r);

MATCH
  (a:User),
  (b:League)
WHERE a.first_name = "John" AND a.last_name = "Bar" AND b.name = "NCAA Fantasy Baseball 2023"
CREATE (a)-[r:is_member_of]->(b)
RETURN type(r);

MATCH
  (a:User),
  (b:League)
WHERE a.first_name = "John" AND a.last_name = "Baz" AND b.name = "My Awesome League"
CREATE (a)-[r:is_member_of]->(b)
RETURN type(r);

