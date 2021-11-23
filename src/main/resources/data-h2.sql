/**
 * DO NOT EDIT THIS FILE
 */

DELETE FROM transfers;
DELETE FROM balance_transactions;
DELETE FROM accounts;
DELETE FROM users;

INSERT INTO users
  (id, name, email, phone, birthday, status, created_at, updated_at)
VALUES
  (1, 'disabled', '', '', '2000-01-01', 'DISABLED', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (2, 'name2', 'email2', 'phone2', '2000-01-01', 'ENABLED', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (3, 'name3', 'email3', 'phone3', '2000-01-01', 'ENABLED', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (4, 'name4', 'email4', 'phone4', '2000-01-01', 'ENABLED', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (5, 'name5', 'email5', 'phone5', '2000-01-01', 'ENABLED', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (6, 'name6', 'email6', 'phone6', '2000-01-01', 'ENABLED', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO accounts
  (id, user_id, number, amount, status, transfer_limit, daily_transfer_limit)
VALUES
  (1, 2, '123-12-12341', 1000, 'ENABLED', 10000, 10000),
  (5, 2, '123-12-12345', 0, 'DISABLED', 0, 0),
  (6, 2, '123-12-12346', 0, 'ENABLED', 0, 0),
  (7, 2, '123-12-12347', 0, 'ENABLED', 0, 0),
  (8, 2, '123-12-12348', 10000, 'ENABLED', 10000, 10000),
  (9, 3, '123-12-12349', 100000, 'ENABLED', 10000, 30000),
  (10, 3, '123-12-12350', 40000, 'ENABLED', 10000, 30000),
  (11, 3, '123-12-12351', 100000, 'ENABLED', 10000, 30000),
  (12, 2, '123-12-12352', 40000, 'ENABLED', 10000, 30000);


INSERT INTO accounts
  (id, user_id, number, amount, status, transfer_limit, daily_transfer_limit, created_at)
VALUES
  (2, 3, '123-12-12342', 0, 'ENABLED', 0, 0, '2021-01-01 00:00:00'),
  (3, 3, '123-12-12343', 0, 'ENABLED', 0, 0, '2021-01-01 00:00:00'),
  (4, 3, '123-12-12344', 0, 'ENABLED', 0, 0, '2021-01-01 00:00:00');

INSERT INTO balance_transactions
  (id, user_id, account_id, type, amount, before_balance_amount, note, created_at)
VALUES
  (1, 2, 8, 'WITHDRAW', 5000, 25000, 'withdraw', CURRENT_TIMESTAMP),
  (2, 2, 8, 'WITHDRAW', 5000, 30000, 'withdraw', CURRENT_TIMESTAMP - interval '1' day),
  (3, 3, 10, 'DEPOSIT', 30000, 0, 'deposit', CURRENT_TIMESTAMP - interval '1' day),
  (4, 3, 10, 'WITHDRAW', 10000, 30000, 'withdraw', CURRENT_TIMESTAMP - interval '1' day),
  (5, 3, 10, 'DEPOSIT', 30000, 20000, 'deposit', CURRENT_TIMESTAMP ),
  (6, 3, 10, 'WITHDRAW', 10000, 50000, 'withdraw', CURRENT_TIMESTAMP );