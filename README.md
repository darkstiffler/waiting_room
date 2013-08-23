waiting_room
============

rails 4 app with postgresql

THE WAITING ROOM
Ethan Stiffelman
GA LA 2013

-an application that allows either a "user" or "doctor" to sign in / log in / sign up.

-the doctor must give license info to register as doctor.
	-for now (just some random key in a field that is saved with their data)

-user does not need to provide anything but a pen-name (nick-name), and a password in the database. "for storing data etc."
	-user does not need to provide any personal information if they do not want to

-user will post a question on the general board, then doctors may answer it.


User name:string salt:string fish:string
Post title:string area:string body:text
Reply body:text
Doctor name_first:string name_last:string salt:string fish:string license:string



ADDITIONAL FEATURES

-doctors receive points based on answers

-users receive points based on questions

-the license key doctors provide upon sign up will be checked against a preexisting DB for legitimacy

-doctors rate other doctors answers causing them to bubble up to the top

-some form of additional validation for the doctor.
	-admin check
	-some kind of vouching system

