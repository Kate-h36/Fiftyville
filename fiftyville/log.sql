-- Keep a log of any SQL queries you execute as you solve the mystery.

-- Record details from the crime scene reports matching the specific date (July 28) and location (Humphrey Street).
SELECT description
FROM crime_scene_reports
WHERE day = 28 AND month = 7 AND street = 'Humphrey Street';

-- Retrieve transcripts of interviews conducted on the same date (July 28) that make reference to a bakery.
SELECT transcript
FROM interviews
WHERE day = 28 AND month = 7 AND transcript LIKE '%bakery%';

-- Examine the security footage at the bakery to identify vehicles leaving the parking lot between 10:15 and 10:25 on July 28.
SELECT *
FROM bakery_security_logs
WHERE day = 28 AND month = 7 AND hour = 10 AND minute BETWEEN 15 AND 25;

-- Identify individuals associated with specific license plates exiting the bakery's parking lot during the same time frame.
SELECT p.name
FROM people p
JOIN bakery_security_logs ON p.license_plate = bakery_security_logs.license_plate
WHERE bakery_security_logs.day = 28 AND bakery_security_logs.month = 7
AND bakery_security_logs.hour = 10
AND bakery_security_logs.minute BETWEEN 15 AND 25;
                                                  |
-- Retrieve all ATM transactions occurring on July 28, at the Leggett Street location.
SELECT * FROM atm_transactions
WHERE month = 7
AND day = 28 AND atm_location = 'Leggett Street';

-- Determine the names of individuals associated with bank accounts involved in transactions at the Leggett Street ATM on the specified date.
SELECT people.name FROM people
JOIN bank_accounts ON people.id = bank_accounts.person_id
JOIN atm_transactions ON bank_accounts.account_number = atm_transactions.account_number
WHERE month = 7
AND day = 28 AND atm_location = 'Leggett Street';
                                                                                             |
-- Review phone calls made within a specific time window on July 28, lasting 60 seconds or less.
SELECT caller
FROM phone_calls
WHERE month = 7 AND day = 28
AND duration <= 60;

-- Find the names of individuals making calls within the designated time limit on July 28.
SELECT people.name
FROM people
JOIN phone_calls ON people.phone_number = phone_calls.caller
WHERE phone_calls.month = 7 AND phone_calls.day = 28
AND phone_calls.duration <= 60;

-- Fetch information about flights originating from the airport situated in Fiftyville.
SELECT *
FROM airports
WHERE city = 'Fiftyville';

-- Retrieve details about the earliest flight departing from the Fiftyville airport at 8:20 on July 29.
SELECT *
FROM flights
WHERE origin_airport_id = 8  AND flights.month = 7 AND flights.day = 29;

-- Identify passengers on the specific flight departing from Fiftyville at 8:20 on July 29 (robber is Bruce).
SELECT people.name FROM people
JOIN passengers ON people.passport_number = passengers.passport_number
JOIN flights ON passengers.flight_id = flights.id
JOIN airports ON flights.origin_airport_id = airports.id
WHERE airports.city = 'Fiftyville'
AND flights.month = 7 AND flights.day = 29 AND flights.hour = 8 AND flights.minute = 20;

-- Find the arrival city of the flight departing from Fiftyville at 8:20 on July 29(city robber is escaped to: New York  City).
SELECT airports.city FROM airports
JOIN flights ON airports.id = flights.destination_airport_id
WHERE flights.origin_airport_id = 8
AND flights.month = 7 AND flights.day = 29 AND flights.hour = 8 AND flights.minute = 20;

-- Retrieve the phone number associated with the individual named 'Bruce'.
SELECT phone_number FROM people
WHERE name = 'Bruce';

-- Investigate phone calls made to 'Bruce' to identify a possible accomplice named 'Robin'.
SELECT people.name FROM people
JOIN phone_calls ON people.phone_number = phone_calls.receiver
AND phone_calls.month = 7 AND phone_calls.day = 28
AND phone_calls.duration <= 60 AND phone_calls.caller = '(367) 555-5533';