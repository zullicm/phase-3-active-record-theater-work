# Practice Code Challenge Theater Work 

The Flatiron Theater Company is holding Auditions!

An actor may only `Audition` for one `Role`, while a `Role` may have many `Auditions` for it! 

![one to many](https://curriculum-content.s3.amazonaws.com/phase-3/active-record-theater-work/one_to_many.png)

## Getting started 

run `bundle install`

## Migrations 

Create your migrations. 

- `Auditions` should have an actor(string), location(string) and belong_to a role(integer)

- `Roles` should only have a character_name

#### `auditions` Table

<table border="1" cellpadding="4" cellspacing="0">
  <tr>
    <th>Column</th>
    <th>Type</th>
  </tr>
  
  <tr>
    <td>actor</td>
    <td>string</td>
  </tr>
  <tr>
    <td>location</td>
    <td>string</td>
  </tr>
  <tr>
    <td>phone</td>
    <td>integer</td>
  </tr>
  <tr>
    <td>hired</td>
    <td>boolean</td>
  </tr>
  <tr>
    <td>role_id</td>
    <td>integer</td>
  </tr>
</table>

#### `roles` Table

<table border="1" cellpadding="4" cellspacing="0">
  <tr>
    <th>Column</th>
    <th>Type</th>
  </tr>
  
  <tr>
    <td>character_name</td>
    <td>string</td>
  </tr>
 </table>
  
## Relationship

- What associations will this need?
- (i.e. `has_many`, `has_many through`, and `belongs_to`)

## Audition

- `Audition#role` returns an instance of role associated with this audition

- `Audition#call_back` will change the the hired attribute to `true`

## Roles

- `Role#auditions` returns all of the auditions associated with this role 

- `Role#actors` returns an array of names from the actors associated with this role

- `Role#locations` returns an array of locations from the auditions associated with this role

- `Role#lead` returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'

- `Role#understudy` returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'


