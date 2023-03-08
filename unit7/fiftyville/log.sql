-- Keep a log of any SQL queries you execute as you solve the mystery.

SELECT * FROM interviews WHERE day = 28 AND month = 7;
-- It happened at 10:15 and they left the courthouse within 10 mins of crime, Eugene Recognized them, thief withdrew at Fifer Street before 10:15
-- Call was less than a minute, they planned to take the earliest flight out of fiftyville tomorrow, the accomplice bought the tickets.
-- Witnesses are Ruth 161, Eugene 162, and Raymond 163
SELECT * FROM phone_calls WHERE duration < 60 AND day = 28 AND month = 7;

SELECT * FROM courthouse_security_logs  WHERE day = 28 AND month = 7 AND hour = 10 AND minute > 15 AND minute < 26;

-- Roger to Jack
-- Evelyn to Melissa
-- Russell to Philip
-- Ernest to Berthold
SELECT * FROM people WHERE license_plate IN (SELECT license_plate FROM courthouse_security_logs WHERE day = 28 and month = 7 and hour = 10 and minute > 15 and minute < 26);