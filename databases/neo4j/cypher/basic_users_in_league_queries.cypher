
// Look up a basic user based on first name, figure out which league's they're in.
MATCH (:User {first_name: 'Elliott'})-->(league)
RETURN league.name;
/**
  +-----------------------------+
| league.name                 |
+-----------------------------+
| "NFL Fantasy Football 2023" |
| "My Awesome League"         |
+-----------------------------+
*/


// Give me all of the users of a given league
MATCH(:League {name: 'My Awesome League'})<-[r:is_member_of]-(user)
RETURN user.first_name, user.last_name;
/**
+----------------------------------+
| user.first_name | user.last_name |
+----------------------------------+
| "John"          | "Baz"          |
| "Elliott"       | "Allmann"      |
+----------------------------------+
*/

// Give me all the users in my leagues
MATCH(:User {first_name: 'Elliott'})-->(league)<-[r:is_member_of]-(user)
RETURN league.name, user.first_name, user.last_name;
/**
+----------------------------------------------------------------+
| league.name                 | user.first_name | user.last_name |
+----------------------------------------------------------------+
| "NFL Fantasy Football 2023" | "John"          | "Foo"          |
| "My Awesome League"         | "John"          | "Baz"          |
+----------------------------------------------------------------+

*/

// Give me the people I may know because they are in a league with someone I am also in a league with.
MATCH(:User {first_name: 'Elliott'})-->(league)<-[r:is_member_of]-(user)-->(otherLeagues)<-[r2: is_member_of]-(secondOrderConnections)
RETURN league.name, user.first_name, user.last_name, otherLeagues.name, secondOrderConnections.first_name, secondOrderConnections.last_name;
/**
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| league.name                 | user.first_name | user.last_name | otherLeagues.name            | secondOrderConnections.first_name | secondOrderConnections.last_name |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| "NFL Fantasy Football 2023" | "John"          | "Foo"          | "NCAA Fantasy Baseball 2023" | "John"                            | "Bar"                            |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
*/