use test;

create table instrument_list(timestamp_of_data_accessed timestamp,
		instrument_token bigint,
		exchange_token bigint,
		exchange varchar(10),
		tradingsymbol int,
		name varchar(20),
		last_price DOUBLE(19,4),
		expiry int);

create table instrument_list2(timestamp_of_data_accessed timestamp,
		instrument_token bigint,
		exchange_token bigint,
		exchange varchar(10),
		tradingsymbol int,
		name varchar(20),
		last_price DOUBLE(19,4),
		expiry int);
