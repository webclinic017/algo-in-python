use test;
/*--$$$$$$$$$$$$$$$   login.py  $$$$$$$$$$$$--*/
create table if not exists  login_details(data_accessed_at timestamp,
        api_key varchar(50) not null,
        api_secret varchar(50),
        public_token varchar(50),
        access_token varchar(50),
        redirect_uri varchar(50) not null,
        post_back_uri varchar(50),
        login_response varchar(50),
		code varchar(50));

 /* --$$$$$$$$$$$$$  profile_and_balance.py $$$$$$$$$$$$$$$ */
create table if not exists profile(data_accessed_at timestamp,
			 client_id varchar(10) not null,
			 name varchar(20) not null,
			 email varchar(50),
			 phone bigint,
			 exchange_enabled varchar(50),
			 product_enabled varchar(50));


create table if not exists balance(data_accessed_at timestamp,
	        segment varchar(50),
			used_margin DOUBLE(19,4),
			payin_amount DOUBLE(19,4),
			span_margin DOUBLE(19,4),
			adhoc_margin DOUBLE(19,4),
			notional_cash DOUBLE(19,4),
			available_margin DOUBLE(19,4),
			exposure_margin DOUBLE(19,4));

/* --$$$$$$$$$$$$$$  postback.py   $$$$$$$$$$$$$$$$$$$ */
create table if not exists live_feed(data_accessed_at timestamp,
		date_and_time datetime,
	    exchange varchar(10),
	    symbol varchar(25),
	    ltp DOUBLE(19,4),
	    open_price DOUBLE(19,4),
	    high_price DOUBLE(19,4),
	    low_price DOUBLE(19,4),
	    close_price DOUBLE(19,4),
	    vtt DOUBLE(19,4),
	    atp DOUBLE(19,4),
	    oi DOUBLE(19,4),
	    spot_price DOUBLE(19,4),
	    total_buy_qty int,
	    total_sell_qty int,
	    lower_circuit DOUBLE(19,4),
	    upper_circuit DOUBLE(19,4),
	    
	    bids_1_quantity int,
        bids_1_price DOUBLE(19,4),
        bids_1_orders int,

        bids_2_quantity int,
        bids_2_price DOUBLE(19,4),
        bids_2_orders int,

        bids_3_quantity int,
        bids_3_price DOUBLE(19,4),
        bids_3_orders int,

        bids_4_quantity int,
        bids_4_price DOUBLE(19,4),
        bids_4_orders int,        

        
        bids_5_quantity int,
        bids_5_price DOUBLE(19,4),
        bids_5_orders int,


        ask_1_quantity int,
        ask_1_price DOUBLE(19,4),
        ask_1_orders int,


        ask_2_quantity int,
        ask_2_price DOUBLE(19,4),
        ask_2_orders int,

        ask_3_quantity int,
        ask_3_price DOUBLE(19,4),
        ask_3_orders int,

        ask_4_quantity int,
        ask_4_price DOUBLE(19,4),
        ask_4_orders int,

        ask_5_quantity int,
        ask_5_price DOUBLE(19,4),
        ask_5_orders int,

	    ltt double(19,4),
		primary key(date_and_time, exchange, symbol));

create table if not exists webhook(data_accessed_at timestamp,
	         exchange varchar(10),
			 token bigint,
			 symbol varchar(25),
			 product varchar(20),
			 order_type varchar(50),
			 duration varchar(50),
			 price DOUBLE(19,4),
			 trigger_price DOUBLE(19,4),
			 quantity int,
			 disclose_priced_quantity int,
			 transaction_type varchar(20),
			 average_price double(19,4),
			 traded_quantity int,
			 message varchar(100),
			 exchange_order_id bigint,
			 parent_order_id bigint,
			 order_id bigint,
			 exchange_time datetime,
			 time_in_micro bigint,
			 status varchar(100),
			 is_amo varchar(20),
			 valid_date datetime,
			 order_request_id bigint,
			 checksum varchar(50));

/* ----################################################# */

/* ---$$$$$$$$$$$$$$$ master_contracts.py $$$$$$$$$$$$$$$ */
create table if not exists master_contracts(data_accessed_at timestamp,
			exchange varchar(10),
			token bigint,
			parent_token bigint,
			symbol varchar(25),
			name varchar(50),
			closing_price DOUBLE(19,4),
			expiry datetime,
			strike_price DOUBLE(19,4),
			tick_size int,
			lot_size int,
			instrument_type varchar(20),
			isin varchar(20),

    	    lower_circuit double(19,6),
    	    upper_circuit double(19,6),
    	    instrument_name varchar(50),
    	    gn double(19,4),
    	    gd double(19,4),
    	    pn double(19,4),
    	    pd double(19,4),
    	   circuit_limit double(19,4),
    	   status varchar(100),
    	   yearly_low_price DOUBLE(19,4),
    	   yearly_high_price DOUBLE(19,4),
    	   open_price_interest double(19,4));


/* ---###################################################### */
/* --$$$$$$$$$$$$$$$  instruments.py  $$$$$$$$$$$$$$$$ */
create table if not exists instrument_list(data_accessed_at timestamp,
		instrument_token bigint,
		exchange_token bigint,
		exchange varchar(10),
		tradingsymbol varchar(25),
		name varchar(20),
		last_price DOUBLE(19,4),
		expiry datetime,

		strike double(19,4),
		tick_size int,
		lot_size int,
		instrument_type varchar(20),
		segment varchar(20),
		
		upstox_kiteconnect varchar(20));

create table if not exists stock_details(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		sector varchar(20),
		industry varchar(20),
		group_name varchar(20),
		/* --True or False */
		nifty_50_group varchar(20),
		nifty_100_group varchar(20),
		nifty_200_group varchar(20),
		nifty_500_group varchar(20),
		nifty_bank_group varchar(20),
		nifty_fo_stocks varchar(20),
		nifty_next_50_group varchar(20),
		nifty_midcap_50_group varchar(20),
		price DOUBLE(19,4),
		daily_volatility double(19,4),
		anulised_volatilty double(19,4),
		Client_Wise_Position_Limits double(19,4),
		Market_Wide_Position_Limits	double(19,4),
		Settlement_price DOUBLE(19,4));

/* ----########################################################## */
/* --$$$$$$$$$$$$$$$$$$ ohlc_downloader.py  $$$$$$$$$$$$$$$$$ */
create table if not exists ohlc_1min(data_accessed_at timestamp,
	        exchange varchar(10),
	        symbol varchar(25),
	        date_and_time datetime,
	        open_price DOUBLE(19,4),
	        high_price DOUBLE(19,4),
	        low_price DOUBLE(19,4),
	        close_price DOUBLE(19,4),
	        volume double(19,4),
	        cp double(19,4));


create table if not exists ohlc_5min(data_accessed_at timestamp,
	        exchange varchar(10),
	        symbol varchar(25),
	        date_and_time datetime,
	        open_price DOUBLE(19,4),
	        high_price DOUBLE(19,4),
	        low_price DOUBLE(19,4),
	        close_price DOUBLE(19,4),
	        volume double(19,4),
	        cp double(19,4));





create table if not exists ohlc_15min(data_accessed_at timestamp,
	        exchange varchar(10),
	        symbol varchar(25),
	        date_and_time datetime,
	        open_price DOUBLE(19,4),
	        high_price DOUBLE(19,4),
	        low_price DOUBLE(19,4),
	        close_price DOUBLE(19,4),
	        volume double(19,4),
	        cp double(19,4));




create table if not exists ohlc_60min(data_accessed_at timestamp,
	        exchange varchar(10),
	        symbol varchar(25),
	        date_and_time datetime,
	        open_price DOUBLE(19,4),
	        high_price DOUBLE(19,4),
	        low_price DOUBLE(19,4),
	        close_price DOUBLE(19,4),
	        volume double(19,4),
	        cp double(19,4));





create table if not exists ohlc_daily(data_accessed_at timestamp,
	        exchange varchar(10),
	        symbol varchar(25),
	        date_and_time datetime,
	        open_price DOUBLE(19,4),
	        high_price DOUBLE(19,4),
	        low_price DOUBLE(19,4),
	        close_price DOUBLE(19,4),
	        volume double(19,4),
	        cp double(19,4));




create table if not exists ohlc_weekly(data_accessed_at timestamp,
	        exchange varchar(10),
	        symbol varchar(25),
	        date_and_time datetime,
	        open_price DOUBLE(19,4),
	        high_price DOUBLE(19,4),
	        low_price DOUBLE(19,4),
	        close_price DOUBLE(19,4),
	        volume double(19,4),
	        cp double(19,4));



create table if not exists ohlc_monthly(data_accessed_at timestamp,
	        exchange varchar(10),
	        symbol varchar(25),
	        date_and_time datetime,
	        open_price DOUBLE(19,4),
	        high_price DOUBLE(19,4),
	        low_price DOUBLE(19,4),
	        close_price DOUBLE(19,4),
	        volume double(19,4),
	        cp double(19,4));


/* --$$$$$$$$$$$$$$ indicator_data_generator.py $$$$$$$$$$$$$$$$$$$ */
create table if not exists indicator_data_monthly(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		ltp_or_close_price_price DOUBLE(19,4),
		sma_50 double(19,4),
		/* -- sma_50_pct = (ltp_or_close_price_price / sma_50 ) - 1 */
		sma_50_pct double(19,4),
		sma_100 double(19,4),
		sma_100_pct double(19,4),
		sma_200 double(19,4),
		sma_200_pct double(19,4),
		r1 double(19,4),
		r1_pct double(19,4),
		r2 double(19,4),
		r2_pct double(19,4),
		r3 double(19,4),
		r3_pct double(19,4),
		s1 double(19,4),
		s1_pct double(19,4),
		s2 double(19,4),
		s2_pct double(19,4),
		s3 double(19,4),
		s3_pct double(19,4),
		atr double(19,4),
		atr_pct double(19,4),
		range_10_pct double(19,4),
		range_20_pct double(19,4),
		range_50_pct double(19,4),
			/* -------------upper... from high_price price */
		upper_arrow_10_slope double(19,4),
		upper_arrow_10_predicted double(19,4),

		upper_arrow_20_slope double(19,4),
		upper_arrow_20_predicted double(19,4),

		upper_arrow_50_slope double(19,4),		
		upper_arrow_50_predicted double(19,4),
			/* -----------lower... form low price */
		lower_arrow_10_slope double(19,4),
		lower_arrow_10_predicted double(19,4),

		lower_arrow_20_slope double(19,4),
		lower_arrow_20_predicted double(19,4),

		lower_arrow_50_slope double(19,4),
		lower_arrow_50_predicted double(19,4));

create table if not exists indicator_data_weekly(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		ltp_or_close_price_price DOUBLE(19,4),
		sma_50 double(19,4),
		/* -- sma_50_pct = (ltp_or_close_price_price / sma_50 ) - 1 */
		sma_50_pct double(19,4),
		sma_100 double(19,4),
		sma_100_pct double(19,4),
		sma_200 double(19,4),
		sma_200_pct double(19,4),
		r1 double(19,4),
		r1_pct double(19,4),
		r2 double(19,4),
		r2_pct double(19,4),
		r3 double(19,4),
		r3_pct double(19,4),
		s1 double(19,4),
		s1_pct double(19,4),
		s2 double(19,4),
		s2_pct double(19,4),
		s3 double(19,4),
		s3_pct double(19,4),
		atr double(19,4),
		atr_pct double(19,4),
		range_10_pct double(19,4),
		range_20_pct double(19,4),
		range_50_pct double(19,4),
			/* -------------upper... from high_price price */
		upper_arrow_10_slope double(19,4),
		upper_arrow_10_predicted double(19,4),

		upper_arrow_20_slope double(19,4),
		upper_arrow_20_predicted double(19,4),

		upper_arrow_50_slope double(19,4),		
		upper_arrow_50_predicted double(19,4),
			/* -----------lower... form low price */
		lower_arrow_10_slope double(19,4),
		lower_arrow_10_predicted double(19,4),

		lower_arrow_20_slope double(19,4),
		lower_arrow_20_predicted double(19,4),

		lower_arrow_50_slope double(19,4),
		lower_arrow_50_predicted double(19,4));

create table if not exists indicator_data_daily(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		ltp_or_close_price_price DOUBLE(19,4),
		sma_50 double(19,4),
		/* -- sma_50_pct = (ltp_or_close_price_price / sma_50 ) - 1 */
		sma_50_pct double(19,4),
		sma_100 double(19,4),
		sma_100_pct double(19,4),
		sma_200 double(19,4),
		sma_200_pct double(19,4),
		r1 double(19,4),
		r1_pct double(19,4),
		r2 double(19,4),
		r2_pct double(19,4),
		r3 double(19,4),
		r3_pct double(19,4),
		s1 double(19,4),
		s1_pct double(19,4),
		s2 double(19,4),
		s2_pct double(19,4),
		s3 double(19,4),
		s3_pct double(19,4),
		atr double(19,4),
		atr_pct double(19,4),
		range_10_pct double(19,4),
		range_20_pct double(19,4),
		range_50_pct double(19,4),
			/* -------------upper... from high_price price */
		upper_arrow_10_slope double(19,4),
		upper_arrow_10_predicted double(19,4),

		upper_arrow_20_slope double(19,4),
		upper_arrow_20_predicted double(19,4),

		upper_arrow_50_slope double(19,4),		
		upper_arrow_50_predicted double(19,4),
			/* -----------lower... form low price */
		lower_arrow_10_slope double(19,4),
		lower_arrow_10_predicted double(19,4),

		lower_arrow_20_slope double(19,4),
		lower_arrow_20_predicted double(19,4),

		lower_arrow_50_slope double(19,4),
		lower_arrow_50_predicted double(19,4));


create table if not exists indicator_data_60min(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		ltp_or_close_price_price DOUBLE(19,4),
		sma_50 double(19,4),
		/* -- sma_50_pct = (ltp_or_close_price_price / sma_50 ) - 1 */
		sma_50_pct double(19,4),
		sma_100 double(19,4),
		sma_100_pct double(19,4),
		sma_200 double(19,4),
		sma_200_pct double(19,4),
		r1 double(19,4),
		r1_pct double(19,4),
		r2 double(19,4),
		r2_pct double(19,4),
		r3 double(19,4),
		r3_pct double(19,4),
		s1 double(19,4),
		s1_pct double(19,4),
		s2 double(19,4),
		s2_pct double(19,4),
		s3 double(19,4),
		s3_pct double(19,4),
		atr double(19,4),
		atr_pct double(19,4),
		range_10_pct double(19,4),
		range_20_pct double(19,4),
		range_50_pct double(19,4),
			/* -------------upper... from high_price price */
		upper_arrow_10_slope double(19,4),
		upper_arrow_10_predicted double(19,4),

		upper_arrow_20_slope double(19,4),
		upper_arrow_20_predicted double(19,4),

		upper_arrow_50_slope double(19,4),		
		upper_arrow_50_predicted double(19,4),
			/* -----------lower... form low price */
		lower_arrow_10_slope double(19,4),
		lower_arrow_10_predicted double(19,4),

		lower_arrow_20_slope double(19,4),
		lower_arrow_20_predicted double(19,4),

		lower_arrow_50_slope double(19,4),
		lower_arrow_50_predicted double(19,4));


create table if not exists indicator_data_15min(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		ltp_or_close_price_price DOUBLE(19,4),
		sma_50 double(19,4),
		/* -- sma_50_pct = (ltp_or_close_price_price / sma_50 ) - 1 */
		sma_50_pct double(19,4),
		sma_100 double(19,4),
		sma_100_pct double(19,4),
		sma_200 double(19,4),
		sma_200_pct double(19,4),
		r1 double(19,4),
		r1_pct double(19,4),
		r2 double(19,4),
		r2_pct double(19,4),
		r3 double(19,4),
		r3_pct double(19,4),
		s1 double(19,4),
		s1_pct double(19,4),
		s2 double(19,4),
		s2_pct double(19,4),
		s3 double(19,4),
		s3_pct double(19,4),
		atr double(19,4),
		atr_pct double(19,4),
		range_10_pct double(19,4),
		range_20_pct double(19,4),
		range_50_pct double(19,4),
			/* -------------upper... from high_price price */
		upper_arrow_10_slope double(19,4),
		upper_arrow_10_predicted double(19,4),

		upper_arrow_20_slope double(19,4),
		upper_arrow_20_predicted double(19,4),

		upper_arrow_50_slope double(19,4),		
		upper_arrow_50_predicted double(19,4),
			/* -----------lower... form low price */
		lower_arrow_10_slope double(19,4),
		lower_arrow_10_predicted double(19,4),

		lower_arrow_20_slope double(19,4),
		lower_arrow_20_predicted double(19,4),

		lower_arrow_50_slope double(19,4),
		lower_arrow_50_predicted double(19,4));



create table if not exists indicator_data_5min(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		ltp_or_close_price_price DOUBLE(19,4),
		sma_50 double(19,4),
		/* -- sma_50_pct = (ltp_or_close_price_price / sma_50 ) - 1 */
		sma_50_pct double(19,4),
		sma_100 double(19,4),
		sma_100_pct double(19,4),
		sma_200 double(19,4),
		sma_200_pct double(19,4),
		r1 double(19,4),
		r1_pct double(19,4),
		r2 double(19,4),
		r2_pct double(19,4),
		r3 double(19,4),
		r3_pct double(19,4),
		s1 double(19,4),
		s1_pct double(19,4),
		s2 double(19,4),
		s2_pct double(19,4),
		s3 double(19,4),
		s3_pct double(19,4),
		atr double(19,4),
		atr_pct double(19,4),
		range_10_pct double(19,4),
		range_20_pct double(19,4),
		range_50_pct double(19,4),
			/* -------------upper... from high_price price */
		upper_arrow_10_slope double(19,4),
		upper_arrow_10_predicted double(19,4),

		upper_arrow_20_slope double(19,4),
		upper_arrow_20_predicted double(19,4),

		upper_arrow_50_slope double(19,4),		
		upper_arrow_50_predicted double(19,4),
			/* -----------lower... form low price */
		lower_arrow_10_slope double(19,4),
		lower_arrow_10_predicted double(19,4),

		lower_arrow_20_slope double(19,4),
		lower_arrow_20_predicted double(19,4),

		lower_arrow_50_slope double(19,4),
		lower_arrow_50_predicted double(19,4));

create table if not exists indicator_data_1min(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		ltp_or_close_price_price DOUBLE(19,4),
		sma_50 double(19,4),
		/* -- sma_50_pct = (ltp_or_close_price_price / sma_50 ) - 1 */
		sma_50_pct double(19,4),
		sma_100 double(19,4),
		sma_100_pct double(19,4),
		sma_200 double(19,4),
		sma_200_pct double(19,4),
		r1 double(19,4),
		r1_pct double(19,4),
		r2 double(19,4),
		r2_pct double(19,4),
		r3 double(19,4),
		r3_pct double(19,4),
		s1 double(19,4),
		s1_pct double(19,4),
		s2 double(19,4),
		s2_pct double(19,4),
		s3 double(19,4),
		s3_pct double(19,4),
		atr double(19,4),
		atr_pct double(19,4),
		range_10_pct double(19,4),
		range_20_pct double(19,4),
		range_50_pct double(19,4),
			/* -------------upper... from high_price price */
		upper_arrow_10_slope double(19,4),
		upper_arrow_10_predicted double(19,4),

		upper_arrow_20_slope double(19,4),
		upper_arrow_20_predicted double(19,4),

		upper_arrow_50_slope double(19,4),		
		upper_arrow_50_predicted double(19,4),
			/* -----------lower... form low price */
		lower_arrow_10_slope double(19,4),
		lower_arrow_10_predicted double(19,4),

		lower_arrow_20_slope double(19,4),
		lower_arrow_20_predicted double(19,4),

		lower_arrow_50_slope double(19,4),
		lower_arrow_50_predicted double(19,4));


/* -- $$$$$$$$$$$$ trend_finder.py $$$$$$$$$$$$$$$$$$$$ */
create table if not exists trend_monthly(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		sma_50_signal varchar(20),
		sma_100_signal varchar(20),
		sma_200_signal varchar(20),
		sma_final_signal varchar(20),

		r1_signal varchar(20),
		r2_signal varchar(20),
		r3_signal varchar(20),
		r_final_signal varchar(20),

		s1_signal varchar(20),
		s2_signal varchar(20),
		s3_signal varchar(20),
		s_final_signal varchar(20),

		atr_signal varchar(20),


		range_10_pct_signal varchar(20),
		range_20_pct_signal varchar(20),
		range_50_pct_signal varchar(20),
		range_final_signal varchar(20),

		upper_arrow_10_signal varchar(20),
		upper_arrow_20_signal varchar(20),
		upper_arrow_50_signal varchar(20),
		upper_arrow_final_signal varchar(20),

		lower_arrow_10_signal varchar(20),
		lower_arrow_20_signal varchar(20),
		lower_arrow_50_signal varchar(20),
		lower_arrow_final_signal varchar(20),
		final_signal varchar(20)
		);

create table if not exists trend_weekly(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		sma_50_signal varchar(20),
		sma_100_signal varchar(20),
		sma_200_signal varchar(20),
		sma_final_signal varchar(20),

		r1_signal varchar(20),
		r2_signal varchar(20),
		r3_signal varchar(20),
		r_final_signal varchar(20),

		s1_signal varchar(20),
		s2_signal varchar(20),
		s3_signal varchar(20),
		s_final_signal varchar(20),

		atr_signal varchar(20),


		range_10_pct_signal varchar(20),
		range_20_pct_signal varchar(20),
		range_50_pct_signal varchar(20),
		range_final_signal varchar(20),

		upper_arrow_10_signal varchar(20),
		upper_arrow_20_signal varchar(20),
		upper_arrow_50_signal varchar(20),
		upper_arrow_final_signal varchar(20),

		lower_arrow_10_signal varchar(20),
		lower_arrow_20_signal varchar(20),
		lower_arrow_50_signal varchar(20),
		lower_arrow_final_signal varchar(20),
		final_signal varchar(20)
		);


create table if not exists trend_daily(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		sma_50_signal varchar(20),
		sma_100_signal varchar(20),
		sma_200_signal varchar(20),
		sma_final_signal varchar(20),

		r1_signal varchar(20),
		r2_signal varchar(20),
		r3_signal varchar(20),
		r_final_signal varchar(20),

		s1_signal varchar(20),
		s2_signal varchar(20),
		s3_signal varchar(20),
		s_final_signal varchar(20),

		atr_signal varchar(20),


		range_10_pct_signal varchar(20),
		range_20_pct_signal varchar(20),
		range_50_pct_signal varchar(20),
		range_final_signal varchar(20),

		upper_arrow_10_signal varchar(20),
		upper_arrow_20_signal varchar(20),
		upper_arrow_50_signal varchar(20),
		upper_arrow_final_signal varchar(20),

		lower_arrow_10_signal varchar(20),
		lower_arrow_20_signal varchar(20),
		lower_arrow_50_signal varchar(20),
		lower_arrow_final_signal varchar(20),
		final_signal varchar(20));


create table if not exists trend_60min(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		sma_50_signal varchar(20),
		sma_100_signal varchar(20),
		sma_200_signal varchar(20),
		sma_final_signal varchar(20),

		r1_signal varchar(20),
		r2_signal varchar(20),
		r3_signal varchar(20),
		r_final_signal varchar(20),

		s1_signal varchar(20),
		s2_signal varchar(20),
		s3_signal varchar(20),
		s_final_signal varchar(20),

		atr_signal varchar(20),


		range_10_pct_signal varchar(20),
		range_20_pct_signal varchar(20),
		range_50_pct_signal varchar(20),
		range_final_signal varchar(20),

		upper_arrow_10_signal varchar(20),
		upper_arrow_20_signal varchar(20),
		upper_arrow_50_signal varchar(20),
		upper_arrow_final_signal varchar(20),

		lower_arrow_10_signal varchar(20),
		lower_arrow_20_signal varchar(20),
		lower_arrow_50_signal varchar(20),
		lower_arrow_final_signal varchar(20),
		final_signal varchar(20));


create table if not exists trend_15min(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		sma_50_signal varchar(20),
		sma_100_signal varchar(20),
		sma_200_signal varchar(20),
		sma_final_signal varchar(20),

		r1_signal varchar(20),
		r2_signal varchar(20),
		r3_signal varchar(20),
		r_final_signal varchar(20),

		s1_signal varchar(20),
		s2_signal varchar(20),
		s3_signal varchar(20),
		s_final_signal varchar(20),

		atr_signal varchar(20),


		range_10_pct_signal varchar(20),
		range_20_pct_signal varchar(20),
		range_50_pct_signal varchar(20),
		range_final_signal varchar(20),

		upper_arrow_10_signal varchar(20),
		upper_arrow_20_signal varchar(20),
		upper_arrow_50_signal varchar(20),
		upper_arrow_final_signal varchar(20),

		lower_arrow_10_signal varchar(20),
		lower_arrow_20_signal varchar(20),
		lower_arrow_50_signal varchar(20),
		lower_arrow_final_signal varchar(20),
		final_signal varchar(20)
		);


create table if not exists trend_5min(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		sma_50_signal varchar(20),
		sma_100_signal varchar(20),
		sma_200_signal varchar(20),
		sma_final_signal varchar(20),

		r1_signal varchar(20),
		r2_signal varchar(20),
		r3_signal varchar(20),
		r_final_signal varchar(20),

		s1_signal varchar(20),
		s2_signal varchar(20),
		s3_signal varchar(20),
		s_final_signal varchar(20),

		atr_signal varchar(20),


		range_10_pct_signal varchar(20),
		range_20_pct_signal varchar(20),
		range_50_pct_signal varchar(20),
		range_final_signal varchar(20),

		upper_arrow_10_signal varchar(20),
		upper_arrow_20_signal varchar(20),
		upper_arrow_50_signal varchar(20),
		upper_arrow_final_signal varchar(20),

		lower_arrow_10_signal varchar(20),
		lower_arrow_20_signal varchar(20),
		lower_arrow_50_signal varchar(20),
		lower_arrow_final_signal varchar(20),
		final_signal varchar(20)
		);

create table if not exists trend_1min(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		sma_50_signal varchar(20),
		sma_100_signal varchar(20),
		sma_200_signal varchar(20),
		sma_final_signal varchar(20),

		r1_signal varchar(20),
		r2_signal varchar(20),
		r3_signal varchar(20),
		r_final_signal varchar(20),

		s1_signal varchar(20),
		s2_signal varchar(20),
		s3_signal varchar(20),
		s_final_signal varchar(20),

		atr_signal varchar(20),


		range_10_pct_signal varchar(20),
		range_20_pct_signal varchar(20),
		range_50_pct_signal varchar(20),
		range_final_signal varchar(20),

		upper_arrow_10_signal varchar(20),
		upper_arrow_20_signal varchar(20),
		upper_arrow_50_signal varchar(20),
		upper_arrow_final_signal varchar(20),

		lower_arrow_10_signal varchar(20),
		lower_arrow_20_signal varchar(20),
		lower_arrow_50_signal varchar(20),
		lower_arrow_final_signal varchar(20),
		final_signal varchar(20)
		);

/* -- $$$$$$$$$$$$$$$ trade_finder.py $$$$$$$$$$$$$$$$$$$ */
create table if not exists signals(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		price double(19,4),
		atr double(19,4),
		/* --sma50 sma100 sma100 r1 r2 r3 s1 s2 s3 */
		stratgy varchar(20),
		/* --1min 5min 15min 60min daily weekly monthly  */
		time_frame varchar(20));

/* ---############################################################# */

/* -- $$$$$$$$$$$$ trade_analysis.py $$$$$$$$$ */
create table if not exists holdings (data_accessed_at timestamp,
	        instrument_exchange_1 varchar(20),
			instrument_exchange_1_symbol varchar(25),
			instrument_exchange_1_token bigint,

			instrument_exchange_2 varchar(20),
			instrument_exchange_2_symbol varchar(25),
			instrument_exchange_2_token bigint,
			
			product varchar(20),
            collateral_type varchar(20),
            cnc_used_quantity int,
            quantity int,
            collateral_qty int,
            haircut double(19,4),
            avg_price DOUBLE(19,4));


create table if not exists positions (data_accessed_at timestamp,
	        exchange varchar(10),
			product varchar(20),
			symbol varchar(25),
			token bigint,
			buy_amount double(19,4),
            sell_amount double(19,4),
            buy_quantity int,
            sell_quantity int,
            cf_buy_amount double(19,4),
            cf_sell_amount double(19,4),
            cf_buy_quantity int,
            cf_sell_quantity int,
            avg_buy_price DOUBLE(19,4),
            avg_sell_price DOUBLE(19,4),
            net_quantity int,
            close_price_price DOUBLE(19,4),
            last_traded_price DOUBLE(19,4),
            realized_profit double(19,4),
            unrealized_profit double(19,4),
            cf_avg_price DOUBLE(19,4));


create table if not exists trade_book(data_accessed_at timestamp,
            exchange varchar(10),
            token bigint,
            symbol varchar(25),
            product varchar(20),
            order_type varchar(20),
            transaction_type varchar(20),
            traded_quantity int,
            exchange_order_id bigint,
            order_id bigint,
            exchange_time datetime,
            time_in_micro bigint,
            traded_price DOUBLE(19,4),
            trade_id bigint);

create table if not exists open_price_trades(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		product varchar(20),
		order_type varchar(20),
		transaction_type varchar(20),
		net_quantity int,
		avg_price DOUBLE(19,4),
		traded_price DOUBLE(19,4));

create table if not exists close_priced_trades(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		product varchar(20),
		order_type varchar(20),
		traded_quantity int,
		pnl double(19,4));




/* ---######################################################### */

/* -- $$$$$$$$$$$$$$$$ order_analysis.py $$$$$$$$$$ */
create table if not exists order_book(data_accessed_at timestamp,
	        exchange varchar(10),
            token bigint,
            symbol varchar(25),
            product varchar(20),
            order_type varchar(20),
            duration varchar(10),
            price DOUBLE(19,4),
            trigger_price DOUBLE(19,4),
            quantity int,
            disclose_priced_quantity int,
            transaction_type varchar(20),
            average_price DOUBLE(19,4),
            traded_quantity int,
            message varchar(100),
            exchange_order_id bigint,
            parent_order_id bigint,
            order_id bigint,
            exchange_time datetime,
            time_in_micro bigint,
            status varchar(100),
            is_amo varchar(20),
            valid_date datetime,
            fill_leg double(19,4),
            order_request_id bigint,
            report varchar(20),
            text_msg varchar(100));


create table if not exists open_price_orders(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		transaction_type varchar(20),
		qty int,
		price DOUBLE(19,4),
		price_value double(19,4),
		trigger_price DOUBLE(19,4),
		order_type varchar(20),
		product varchar(20),
		duration varchar(10),
		disclose_priced_quantity int,
		order_id bigint,
		time_stamp timestamp,
		order_request_id bigint
);

create table if not exists pending_orders(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		transaction_type varchar(20),
		qty int,
		price DOUBLE(19,4),
		price_value double(19,4),
		trigger_price DOUBLE(19,4),
		order_type varchar(20),
		product varchar(20),
		duration varchar(10),
		disclose_priced_quantity int,
		order_id bigint,
		time_stamp timestamp,
		order_request_id bigint
);


create table if not exists sl_orders(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		transaction_type varchar(20),
		qty int,
		price DOUBLE(19,4),
		price_value double(19,4),
		trigger_price DOUBLE(19,4),
		order_type varchar(20),
		product varchar(20),
		duration varchar(10),
		disclose_priced_quantity int,
		order_id bigint,
		time_stamp timestamp,
		remarks varchar(50)
);


create table if not exists target_orders(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		transaction_type varchar(20),
		qty int,
		price DOUBLE(19,4),
		price_value double(19,4),
		trigger_price DOUBLE(19,4),
		order_type varchar(20),
		product varchar(20),
		duration varchar(10),
		disclose_priced_quantity int,
		order_id bigint,
		time_stamp timestamp,
		remarks varchar(50)
);

/* ---############################################ */



/* -- $$$$$$$$$$$$$$$ Intrady_trade_management.py $$$$$$$$$$$$$ */
/* -- $$$$$$$$$$$$$$$ Swing_trade_management.py $$$$$$$$$$$$$ */
/* -- $$$$$$$$$$$$$$$ Delivery_trade_management.py $$$$$$$$$$$$$ */
create table if not exists account_status (data_accessed_at timestamp,
		/* --------------------------from api ---------------------------------- */
        /* --input  */
        total_capital double(19,4),
        total_margin double(19,4),
        total_unrealised_pnl double(19,4),
        total_realised_pnl double(19,4),
        	/* --total_pnl = total_unrealised_pnl + total_realised_pnl */
        total_pnl double(19,4),
        /* --total_profit = total_pnl if total_pnl > 0 */
        total_profit double(19,4),
        /* --total_loss = -total_pnl if total_pnl < 0 */
        total_loss double(19,4),
        /* ------------------------- pnl analysis from trade analysis ----------------------- */
         /* --input */
        stocks_in_loss varchar(120),
        stocks_in_profit varchar(120),
        /* --no_of_stock_in_loss = len(stocks_list_in_loss) */
        no_of_stock_in_loss double(19,4),       
        /* --no_of_stock_in_profit = len(stocks_list_in_profit) */
        no_of_stock_in_profit double(19,4),
        /* --profit_loss_positions_ratio = no_of_stock_in_profit / no_of_stock_in_loss */
        profit_loss_positions_ratio double(19,4),
        /* -----------------------positions analysis from trade analysis --------------------- */
        /* --input */
        long_positions varchar(120),
        short_positions varchar(120),
        /* --no_of_long_position = len(long_positions) */
        no_of_long_position double(19,4),        
        /* --no_of_short_position = len(short_positions) */
        no_of_short_position double(19,4), 
        /* --long_short_ratio = no_of_long_position / no_of_short_position */
        long_short_ratio double(19,4),
        /* --no_of_positions = no_of_long_position + no_of_short_position */
        no_of_positions double(19,4)


);



create table if not exists trade_methodology (data_accessed_at timestamp,
        /* -----------------------trading method from manual entry---------------- */
        /* ---trade_type intraday or swing or delivery */
        trade_type  varchar(20),

        /* -----trading style from manual entry-------------- */
        /* -- trading style long or short or both */
        trading_style varchar(120),
		/* -------------------------risk_matrix  from manual entry--------------------------- */
		        /* --input */
		margin_allotted double(19,4),
        max_risk_pct double(19,4),
        min_no_of_positions double(19,4),
        max_no_of_positions double(19,4),
        max_no_of_long_positions double(19,4),
        max_no_of_short_positions double(19,4),
        /* --max_loss = (margin_allotted *  max_risk_PCT ) / 100 */
        max_loss double(19,4),
         /* --max_loss_per_stock = max_loss / min_no_of_open_price_stock */
        max_loss_per_stock double(19,4),
        /* --------------------positions_status from trade analysis ------------------------------- */
                   /* --input */
        no_of_long_position double(19,4),
        no_of_short_position double(19,4),
        /* --no_of_positions= no_of_long_position + no_of_short_position         */
        no_of_positions double(19,4),
        /* --------------------------total_loss from current_account_status ---------------------- */
        /* --input */
        total_loss double(19,4),
        /* ------------------------market_trend from market analysis  ------------------------------ */
                /* --input (UP  or  DOWN) */
        nifty_trend varchar(120),
        /* -- input True or False */
        is_only_trade_in_nifty_trend varchar(50)
 );




create table if not exists watchlist(data_accessed_at timestamp,
		exchange varchar(10),
		symbol varchar(25),
		/* --whitelist or blacklist */
		category varchar(120),
		/* --exchange_symbol = exchange + '_' + symbol */
		exchange_symbol varchar(25),
		trend_monthly varchar(120),
		trend_weekly varchar(120),
		trend_daily varchar(120),
		trend_60min varchar(120),
		group_name varchar(120),
		price DOUBLE(19,4),
		sector varchar(20),
		industry varchar(20),
		mcap double(19,4),
		volume double(19,4));


create table if not exists order_management (data_accessed_at timestamp,
		
		exchange varchar(10),
		symbol varchar(25),
		transaction_type varchar(20),
		
		order_type varchar(20),
		product varchar(20),
		duration varchar(10),
		disclose_priced_quantity int,
		
		max_qty int,
		total_qty int,
		total_risk double(19,4),
		total_profit double(19,4),


		min_no_of_orders int,

		max_open_price_qty int,
		max_risk double(19,4),
		max_profit double(19,4),
		max_qty_per_order double(19,4),		


		net_realised_loss double(19,4),
		net_realised_profit double(19,4),

		
		price_gap_between_orders int,
		price_gap_from_sl double(19,4),
		price_gap_from_trigger_price DOUBLE(19,4),


		current_order_price DOUBLE(19,4),
		current_order_type varchar(20),
		current_order_time datetime,
		current_order_qty int,
		current_sl double(19,4),


		previous_order_price DOUBLE(19,4),
		previous_order_type varchar(20),
		previous_order_time datetime,
		previous_order_qty int,
		previous_sl double(19,4),


		next_order_price DOUBLE(19,4),
		next_order_type varchar(20),
		next_order_time datetime,
		next_order_qty int,
		next_sl double(19,4),

		text_msg varchar(100));

