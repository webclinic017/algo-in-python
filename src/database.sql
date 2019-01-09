
--$$$$$$$$$$$$$$$   login.py  $$$$$$$$$$$$4
create table login_details(timestamp_of_data_accessed varchar,
        api_key varchar,
        api_secret varchar,
        public_token varchar,
        access_token varchar,
        redirect_uri varchar,
        post_back_uri varchar,
        login_response varchar,
		code varchar);

 --$$$$$$$$$$$$$  profile_and_balance.py $$$$$$$$$$$$$$$
create table profile(timestamp_of_data_accessed varchar,
			 client_id varchar,
			 name varchar,
			 email varchar,
			 phone number,
			 exchange_enabled varchar,
			 product_enabled varchar);


create table balance(timestamp_of_data_accessed varchar,
	        segment varchar,
			used_margin number,
			payin_amount number,
			span_margin number,
			adhoc_margin number,
			notional_cash number,
			available_margin number,
			exposure_margin number);

--$$$$$$$$$$$$$$  postback.py   $$$$$$$$$$$$$$$$$$$
create table live_feed(timestamp_of_data_accessed varchar,
		timestamp_of_data number,
	    exchange varchar,
	    symbol varchar,
	    ltp number,
	    open number,
	    high number,
	    low number,
	    close number,
	    vtt number,
	    atp number,
	    oi number,
	    spot_price number,
	    total_buy_qty number,
	    total_sell_qty number,
	    lower_circuit number,
	    upper_circuit number,
	    
	    bids_1_quantity number,
        bids_1_price number,
        bids_1_orders number

        bids_2_quantity number,
        bids_2_price number,
        bids_2_orders number,

        bids_3_quantity number,
        bids_3_price number,
        bids_3_orders number,

        bids_4_quantity number,
        bids_4_price number,
        bids_4_orders number,        

        
        bids_5_quantity number,
        bids_5_price number,
        bids_5_orders number,


        ask_1_quantity number,
        ask_1_price number,
        ask_1_orders number,


        ask_2_quantity number,
        ask_2_price number,
        ask_2_orders number,

        ask_3_quantity number,
        ask_3_price number,
        ask_3_orders number,

        ask_4_quantity number,
        ask_4_price number,
        ask_4_orders number,

        ask_5_quantity number,
        ask_5_price number,
        ask_5_orders number,

	    ltt number);

create table webhook(timestamp_of_data_accessed varchar,
	         exchange varchar,
			 token number,
			 symbol varchar,
			 product varchar,
			 order_type varchar,
			 duration varchar,
			 price number,
			 trigger_price number,
			 quantity number,
			 disclosed_quantity number,
			 transaction_type varchar,
			 average_price varchar,
			 traded_quantity number,
			 message varchar,
			 exchange_order_id number,
			 parent_order_id varchar,
			 order_id number,
			 exchange_time varchar,
			 time_in_micro number,
			 status varchar,
			 is_amo varchar,
			 valid_date varchar,
			 order_request_id number,
			 checksum varchar);

----#################################################

---$$$$$$$$$$$$$$$ master_contracts.py $$$$$$$$$$$$$$$
create table master_contracts(timestamp_of_data_accessed varchar,
			exchange varchar,
			token number,
			parent_token number,
			symbol varchar,
			name varchar,
			closing_price number,
			expiry varchar,
			strike_price number,
			tick_size number,
			lot_size number,
			instrument_type varchar,
			isin varchar,

    	    lower_circuit number,
    	    upper_circuit number,
    	    instrument_name varchar,
    	    gn number,
    	    gd number,
    	    pn number,
    	    pd number,
    	   circuit_limit varchar,
    	   status varchar,
    	   yearly_low number,
    	   yearly_high number,
    	   open_interest number);


---######################################################
--$$$$$$$$$$$$$$$  instruments.py  $$$$$$$$$$$$$$$$
create table instrument_list(timestamp_of_data_accessed varchar,
		instrument_token number,
		exchange_token number,
		exchange varchar,
		tradingsymbol number,
		name varchar,
		last_price number,
		expiry number,

		strike varchar,
		tick_size number,
		lot_size number,
		instrument_type varchar,
		segment varchar,
		
		upstox_kiteconnect varchar);

create table stock_details(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		sector varchar,
		industry varchar,
		group_name varchar,
		--True or False
		nifty_50_group varchar,
		nifty_100_group varchar,
		nifty_200_group varchar,
		nifty_500_group varchar,
		nifty_bank_group varchar,
		nifty_fo_stocks varchar,
		nifty_next_50_group varchar,
		nifty_midcap_50_group varchar,
		price number,
		daily_volatility number,
		anulised_volatilty number,
		Client_Wise_Position_Limits number,
		Market_Wide_Position_Limits	number,
		Settlement_Price number);

----##########################################################
--$$$$$$$$$$$$$$$$$$ ohlc_downloader.py  $$$$$$$$$$$$$$$$$
create table ohlc_1min(timestamp_of_data_accessed varchar,
	        exchange varchar,
	        symbol varchar,
	        timestamp_of_data varchar,
	        open number,
	        high number,
	        low number,
	        close number,
	        volume number,
	        cp number);


create table ohlc_5min(timestamp_of_data_accessed varchar,
	        exchange varchar,
	        symbol varchar,
	        timestamp_of_data varchar,
	        open number,
	        high number,
	        low number,
	        close number,
	        volume number,
	        cp number);





create table ohlc_15min(timestamp_of_data_accessed varchar,
	        exchange varchar,
	        symbol varchar,
	        timestamp_of_data varchar,
	        open number,
	        high number,
	        low number,
	        close number,
	        volume number,
	        cp number);




create table ohlc_60min(timestamp_of_data_accessed varchar,
	        exchange varchar,
	        symbol varchar,
	        timestamp_of_data varchar,
	        open number,
	        high number,
	        low number,
	        close number,
	        volume number,
	        cp number);





create table ohlc_daily(timestamp_of_data_accessed varchar,
	        exchange varchar,
	        symbol varchar,
	        timestamp_of_data varchar,
	        open number,
	        high number,
	        low number,
	        close number,
	        volume number,
	        cp number);




create table ohlc_weekly(timestamp_of_data_accessed varchar,
	        exchange varchar,
	        symbol varchar,
	        timestamp_of_data varchar,
	        open number,
	        high number,
	        low number,
	        close number,
	        volume number,
	        cp number);



create table ohlc_monthly(timestamp_of_data_accessed varchar,
	        exchange varchar,
	        symbol varchar,
	        timestamp_of_data varchar,
	        open number,
	        high number,
	        low number,
	        close number,
	        volume number,
	        cp number);


--$$$$$$$$$$$$$$ indicator_data_generator.py $$$$$$$$$$$$$$$$$$$
create table indicator_data_monthly(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		ltp_or_close_price number,
		sma_50 number,
		-- sma_50_pct = (ltp_or_close_price / sma_50 ) - 1
		sma_50_pct number,
		sma_100 number,
		sma_100_pct number,
		sma_200 number,
		sma_200_pct number,
		r1 number,
		r1_pct number,
		r2 number,
		r2_pct number,
		r3 number,
		r3_pct number,
		s1 number,
		s1_pct number,
		s2 number,
		s2_pct number,
		s3 number,
		s3_pct number,
		atr number,
		atr_pct number,
		range_10_pct number,
		range_20_pct number,
		range_50_pct number,
			-------------upper... from high price
		upper_arrow_10_slope number,
		upper_arrow_10_predicted number,

		upper_arrow_20_slope number,
		upper_arrow_20_predicted number,

		upper_arrow_50_slope number,		
		upper_arrow_50_predicted number,
			-----------lower... form low price
		lower_arrow_10_slope number,
		lower_arrow_10_predicted number,

		lower_arrow_20_slope number,
		lower_arrow_20_predicted number,

		lower_arrow_50_slope number
		lower_arrow_50_predicted number);

create table indicator_data_weekly(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		ltp_or_close_price number,
		sma_50 number,
		-- sma_50_pct = (ltp_or_close_price / sma_50 ) - 1
		sma_50_pct number,
		sma_100 number,
		sma_100_pct number,
		sma_200 number,
		sma_200_pct number,
		r1 number,
		r1_pct number,
		r2 number,
		r2_pct number,
		r3 number,
		r3_pct number,
		s1 number,
		s1_pct number,
		s2 number,
		s2_pct number,
		s3 number,
		s3_pct number,
		atr number,
		atr_pct number,
		range_10_pct number,
		range_20_pct number,
		range_50_pct number,
			-------------upper... from high price
		upper_arrow_10_slope number,
		upper_arrow_10_predicted number,

		upper_arrow_20_slope number,
		upper_arrow_20_predicted number,

		upper_arrow_50_slope number,		
		upper_arrow_50_predicted number,
			-----------lower... form low price
		lower_arrow_10_slope number,
		lower_arrow_10_predicted number,

		lower_arrow_20_slope number,
		lower_arrow_20_predicted number,

		lower_arrow_50_slope number,
		lower_arrow_50_predicted number);

create table indicator_data_daily(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		ltp_or_close_price number,
		sma_50 number,
		-- sma_50_pct = (ltp_or_close_price / sma_50 ) - 1
		sma_50_pct number,
		sma_100 number,
		sma_100_pct number,
		sma_200 number,
		sma_200_pct number,
		r1 number,
		r1_pct number,
		r2 number,
		r2_pct number,
		r3 number,
		r3_pct number,
		s1 number,
		s1_pct number,
		s2 number,
		s2_pct number,
		s3 number,
		s3_pct number,
		atr number,
		atr_pct number,
		range_10_pct number,
		range_20_pct number,
		range_50_pct number,
			-------------upper... from high price
		upper_arrow_10_slope number,
		upper_arrow_10_predicted number,

		upper_arrow_20_slope number,
		upper_arrow_20_predicted number,

		upper_arrow_50_slope number,		
		upper_arrow_50_predicted number,
			-----------lower... form low price
		lower_arrow_10_slope number,
		lower_arrow_10_predicted number,

		lower_arrow_20_slope number,
		lower_arrow_20_predicted number,

		lower_arrow_50_slope number,
		lower_arrow_50_predicted number);


create table indicator_data_60min(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		ltp_or_close_price number,
		sma_50 number,
		-- sma_50_pct = (ltp_or_close_price / sma_50 ) - 1
		sma_50_pct number,
		sma_100 number,
		sma_100_pct number,
		sma_200 number,
		sma_200_pct number,
		r1 number,
		r1_pct number,
		r2 number,
		r2_pct number,
		r3 number,
		r3_pct number,
		s1 number,
		s1_pct number,
		s2 number,
		s2_pct number,
		s3 number,
		s3_pct number,
		atr number,
		atr_pct number,
		range_10_pct number,
		range_20_pct number,
		range_50_pct number,
			-------------upper... from high price
		upper_arrow_10_slope number,
		upper_arrow_10_predicted number,

		upper_arrow_20_slope number,
		upper_arrow_20_predicted number,

		upper_arrow_50_slope number,		
		upper_arrow_50_predicted number,
			-----------lower... form low price
		lower_arrow_10_slope number,
		lower_arrow_10_predicted number,

		lower_arrow_20_slope number,
		lower_arrow_20_predicted number,

		lower_arrow_50_slope number,
		lower_arrow_50_predicted number);


create table indicator_data_15min(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		ltp_or_close_price number,
		sma_50 number,
		-- sma_50_pct = (ltp_or_close_price / sma_50 ) - 1
		sma_50_pct number,
		sma_100 number,
		sma_100_pct number,
		sma_200 number,
		sma_200_pct number,
		r1 number,
		r1_pct number,
		r2 number,
		r2_pct number,
		r3 number,
		r3_pct number,
		s1 number,
		s1_pct number,
		s2 number,
		s2_pct number,
		s3 number,
		s3_pct number,
		atr number,
		atr_pct number,
		range_10_pct number,
		range_20_pct number,
		range_50_pct number,
			-------------upper... from high price
		upper_arrow_10_slope number,
		upper_arrow_10_predicted number,

		upper_arrow_20_slope number,
		upper_arrow_20_predicted number,

		upper_arrow_50_slope number,		
		upper_arrow_50_predicted number,
			-----------lower... form low price
		lower_arrow_10_slope number,
		lower_arrow_10_predicted number,

		lower_arrow_20_slope number,
		lower_arrow_20_predicted number,

		lower_arrow_50_slope number,
		lower_arrow_50_predicted number);



create table indicator_data_5min(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		ltp_or_close_price number,
		sma_50 number,
		-- sma_50_pct = (ltp_or_close_price / sma_50 ) - 1
		sma_50_pct number,
		sma_100 number,
		sma_100_pct number,
		sma_200 number,
		sma_200_pct number,
		r1 number,
		r1_pct number,
		r2 number,
		r2_pct number,
		r3 number,
		r3_pct number,
		s1 number,
		s1_pct number,
		s2 number,
		s2_pct number,
		s3 number,
		s3_pct number,
		atr number,
		atr_pct number,
		range_10_pct number,
		range_20_pct number,
		range_50_pct number,
			-------------upper... from high price
		upper_arrow_10_slope number,
		upper_arrow_10_predicted number,

		upper_arrow_20_slope number,
		upper_arrow_20_predicted number,

		upper_arrow_50_slope number,		
		upper_arrow_50_predicted number,
			-----------lower... form low price
		lower_arrow_10_slope number,
		lower_arrow_10_predicted number,

		lower_arrow_20_slope number,
		lower_arrow_20_predicted number,

		lower_arrow_50_slope number,
		lower_arrow_50_predicted number);

create table indicator_data_1min(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		ltp_or_close_price number,
		sma_50 number,
		-- sma_50_pct = (ltp_or_close_price / sma_50 ) - 1
		sma_50_pct number,
		sma_100 number,
		sma_100_pct number,
		sma_200 number,
		sma_200_pct number,
		r1 number,
		r1_pct number,
		r2 number,
		r2_pct number,
		r3 number,
		r3_pct number,
		s1 number,
		s1_pct number,
		s2 number,
		s2_pct number,
		s3 number,
		s3_pct number,
		atr number,
		atr_pct number,
		range_10_pct number,
		range_20_pct number,
		range_50_pct number,
			-------------upper... from high price
		upper_arrow_10_slope number,
		upper_arrow_10_predicted number,

		upper_arrow_20_slope number,
		upper_arrow_20_predicted number,

		upper_arrow_50_slope number,		
		upper_arrow_50_predicted number,
			-----------lower... form low price
		lower_arrow_10_slope number,
		lower_arrow_10_predicted number,

		lower_arrow_20_slope number,
		lower_arrow_20_predicted number,

		lower_arrow_50_slope number,
		lower_arrow_50_predicted number);


-- $$$$$$$$$$$$ trend_finder.py $$$$$$$$$$$$$$$$$$$$
create table trend_monthly(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		sma_50_signal varchar,
		sma_100_signal varchar,
		sma_200_signal varchar,
		sma_final_signal varchar,

		r1_signal varchar,
		r2_signal varchar,
		r3_signal varchar,
		r_final_signal varchar,

		s1_signal varchar,
		s2_signal varchar,
		s3_signal varchar,
		s_final_signal varchar,

		atr_signal varchar,


		range_10_pct_signal varchar,
		range_20_pct_signal varchar,
		range_50_pct_signal varchar,
		range_final_signal varchar,

		upper_arrow_10_signal varchar,
		upper_arrow_20_signal varchar,
		upper_arrow_50_signal varchar,
		upper_arrow_final_signal varchar,

		lower_arrow_10_signal varchar,
		lower_arrow_20_signal varchar,
		lower_arrow_50_signal varchar,
		lower_arrow_final_signal varchar,
		final_signal varchar
		);

create table trend_weekly(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		sma_50_signal varchar,
		sma_100_signal varchar,
		sma_200_signal varchar,
		sma_final_signal varchar,

		r1_signal varchar,
		r2_signal varchar,
		r3_signal varchar,
		r_final_signal varchar,

		s1_signal varchar,
		s2_signal varchar,
		s3_signal varchar,
		s_final_signal varchar,

		atr_signal varchar,


		range_10_pct_signal varchar,
		range_20_pct_signal varchar,
		range_50_pct_signal varchar,
		range_final_signal varchar,

		upper_arrow_10_signal varchar,
		upper_arrow_20_signal varchar,
		upper_arrow_50_signal varchar,
		upper_arrow_final_signal varchar,

		lower_arrow_10_signal varchar,
		lower_arrow_20_signal varchar,
		lower_arrow_50_signal varchar,
		lower_arrow_final_signal varchar,
		final_signal varchar
		);


create table trend_daily(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		sma_50_signal varchar,
		sma_100_signal varchar,
		sma_200_signal varchar,
		sma_final_signal varchar,

		r1_signal varchar,
		r2_signal varchar,
		r3_signal varchar,
		r_final_signal varchar,

		s1_signal varchar,
		s2_signal varchar,
		s3_signal varchar,
		s_final_signal varchar,

		atr_signal varchar,


		range_10_pct_signal varchar,
		range_20_pct_signal varchar,
		range_50_pct_signal varchar,
		range_final_signal varchar,

		upper_arrow_10_signal varchar,
		upper_arrow_20_signal varchar,
		upper_arrow_50_signal varchar,
		upper_arrow_final_signal varchar,

		lower_arrow_10_signal varchar,
		lower_arrow_20_signal varchar,
		lower_arrow_50_signal varchar,
		lower_arrow_final_signal varchar,
		final_signal varchar);


create table trend_60min(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		sma_50_signal varchar,
		sma_100_signal varchar,
		sma_200_signal varchar,
		sma_final_signal varchar,

		r1_signal varchar,
		r2_signal varchar,
		r3_signal varchar,
		r_final_signal varchar,

		s1_signal varchar,
		s2_signal varchar,
		s3_signal varchar,
		s_final_signal varchar,

		atr_signal varchar,


		range_10_pct_signal varchar,
		range_20_pct_signal varchar,
		range_50_pct_signal varchar,
		range_final_signal varchar,

		upper_arrow_10_signal varchar,
		upper_arrow_20_signal varchar,
		upper_arrow_50_signal varchar,
		upper_arrow_final_signal varchar,

		lower_arrow_10_signal varchar,
		lower_arrow_20_signal varchar,
		lower_arrow_50_signal varchar,
		lower_arrow_final_signal varchar,
		final_signal varchar);


create table trend_15min(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		sma_50_signal varchar,
		sma_100_signal varchar,
		sma_200_signal varchar,
		sma_final_signal varchar,

		r1_signal varchar,
		r2_signal varchar,
		r3_signal varchar,
		r_final_signal varchar,

		s1_signal varchar,
		s2_signal varchar,
		s3_signal varchar,
		s_final_signal varchar,

		atr_signal varchar,


		range_10_pct_signal varchar,
		range_20_pct_signal varchar,
		range_50_pct_signal varchar,
		range_final_signal varchar,

		upper_arrow_10_signal varchar,
		upper_arrow_20_signal varchar,
		upper_arrow_50_signal varchar,
		upper_arrow_final_signal varchar,

		lower_arrow_10_signal varchar,
		lower_arrow_20_signal varchar,
		lower_arrow_50_signal varchar,
		lower_arrow_final_signal varchar,
		final_signal varchar
		);


create table trend_5min(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		sma_50_signal varchar,
		sma_100_signal varchar,
		sma_200_signal varchar,
		sma_final_signal varchar,

		r1_signal varchar,
		r2_signal varchar,
		r3_signal varchar,
		r_final_signal varchar,

		s1_signal varchar,
		s2_signal varchar,
		s3_signal varchar,
		s_final_signal varchar,

		atr_signal varchar,


		range_10_pct_signal varchar,
		range_20_pct_signal varchar,
		range_50_pct_signal varchar,
		range_final_signal varchar,

		upper_arrow_10_signal varchar,
		upper_arrow_20_signal varchar,
		upper_arrow_50_signal varchar,
		upper_arrow_final_signal varchar,

		lower_arrow_10_signal varchar,
		lower_arrow_20_signal varchar,
		lower_arrow_50_signal varchar,
		lower_arrow_final_signal varchar,
		final_signal varchar
		);

create table trend_1min(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		sma_50_signal varchar,
		sma_100_signal varchar,
		sma_200_signal varchar,
		sma_final_signal varchar,

		r1_signal varchar,
		r2_signal varchar,
		r3_signal varchar,
		r_final_signal varchar,

		s1_signal varchar,
		s2_signal varchar,
		s3_signal varchar,
		s_final_signal varchar,

		atr_signal varchar,


		range_10_pct_signal varchar,
		range_20_pct_signal varchar,
		range_50_pct_signal varchar,
		range_final_signal varchar,

		upper_arrow_10_signal varchar,
		upper_arrow_20_signal varchar,
		upper_arrow_50_signal varchar,
		upper_arrow_final_signal varchar,

		lower_arrow_10_signal varchar,
		lower_arrow_20_signal varchar,
		lower_arrow_50_signal varchar,
		lower_arrow_final_signal varchar,
		final_signal varchar
		);

-- $$$$$$$$$$$$$$$ trade_finder.py $$$$$$$$$$$$$$$$$$$
create table signals(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		price varchar,
		atr number,
		--sma50 sma100 sma100 r1 r2 r3 s1 s2 s3
		stratgy varchar,
		--1min 5min 15min 60min daily weekly monthly 
		time_frame varchar);

---#############################################################

-- $$$$$$$$$$$$ trade_analysis.py $$$$$$$$$
create table holdings (timestamp_of_data_accessed varchar,
	        instrument_exchange_1 varchar,
			instrument_exchange_1_symbol varchar,
			instrument_exchange_1_token number,

			instrument_exchange_2 varchar,
			instrument_exchange_2_symbol varchar,
			instrument_exchange_2_token number,
			
			product varchar,
            collateral_type varchar,
            cnc_used_quantity number,
            quantity number,
            collateral_qty number,
            haircut number,
            avg_price number);


create table positions (timestamp_of_data_accessed varchar,
	        exchange varchar,
			product varchar,
			symbol varchar,
			token number,
			buy_amount number,
            sell_amount number,
            buy_quantity number,
            sell_quantity number,
            cf_buy_amount number,
            cf_sell_amount number,
            cf_buy_quantity number,
            cf_sell_quantity number,
            avg_buy_price number,
            avg_sell_price number,
            net_quantity number,
            close_price number,
            last_traded_price number,
            realized_profit number,
            unrealized_profit number,
            cf_avg_price number);


create table trade_book(timestamp_of_data_accessed varchar,
            exchange varchar,
            token number,
            symbol varchar,
            product varchar,
            order_type varchar,
            transaction_type varchar,
            traded_quantity number,
            exchange_order_id number,
            order_id number,
            exchange_time varchar,
            time_in_micro number,
            traded_price number,
            trade_id number);

create table open_trades(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		product varchar,
		order_type varchar,
		transaction_type varchar,
		net_quantity number,
		avg_price number,
		traded_price number);

create table closed_trades(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		product varchar,
		order_type varchar,
		traded_quantity number,
		pnl number);




---#########################################################

-- $$$$$$$$$$$$$$$$ order_analysis.py $$$$$$$$$$
create table order_book(timestamp_of_data_accessed varchar,
	        exchange varchar,
            token number,
            symbol varchar,
            product varchar,
            order_type varchar,
            duration varchar,
            price number,
            trigger_price number,
            quantity number,
            disclosed_quantity number,
            transaction_type varchar,
            average_price number,
            traded_quantity number,
            message varchar,
            exchange_order_id number,
            parent_order_id varchar,
            order_id number,
            exchange_time varchar,
            time_in_micro number,
            status varchar,
            is_amo varchar,
            valid_date varchar,
            fill_leg number,
            order_request_id number,
            report varchar,
            text_msg varchar);


create table open_orders(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		transaction_type varchar,
		qty number,
		price number,
		price_value number,
		trigger_price number,
		order_type varchar,
		product varchar,
		duration varchar,
		disclosed_quantity number,
		order_id number,
		time_stamp number,
		order_request_id varchar
);

create table pending_orders(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		transaction_type varchar,
		qty number,
		price number,
		price_value number,
		trigger_price number,
		order_type varchar,
		product varchar,
		duration varchar,
		disclosed_quantity number,
		order_id number,
		time_stamp number,
		order_request_id varchar
);


create table sl_orders(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		transaction_type varchar,
		qty number,
		price number,
		price_value number,
		trigger_price number,
		order_type varchar,
		product varchar,
		duration varchar,
		disclosed_quantity number,
		order_id number,
		time_stamp number,
		remarks varchar
);


create table target_orders(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		transaction_type varchar,
		qty number,
		price number,
		price_value number,
		trigger_price number,
		order_type varchar,
		product varchar,
		duration varchar,
		disclosed_quantity number,
		order_id number,
		time_stamp number,
		remarks varchar
);

---############################################



-- $$$$$$$$$$$$$$$ Intrady_trade_management.py $$$$$$$$$$$$$
-- $$$$$$$$$$$$$$$ Swing_trade_management.py $$$$$$$$$$$$$
-- $$$$$$$$$$$$$$$ Delivery_trade_management.py $$$$$$$$$$$$$
create table account_status (timestamp_of_data_accessed varchar,
		--------------------------from api ----------------------------------
        --input 
        total_capital number,
        total_margin number,
        total_unrealised_pnl number,
        total_realised_pnl number,
        	--total_pnl = total_unrealised_pnl + total_realised_pnl
        total_pnl number,
        --total_profit = total_pnl if total_pnl > 0
        total_profit number,
        --total_loss = -total_pnl if total_pnl < 0
        total_loss number,
        ------------------------- pnl analysis from trade analysis -----------------------
         --input
        stocks_in_loss varchar,
        stocks_in_profit varchar,
        --no_of_stock_in_loss = len(stocks_list_in_loss)
        no_of_stock_in_loss number,       
        --no_of_stock_in_profit = len(stocks_list_in_profit)
        no_of_stock_in_profit number,
        --profit_loss_positions_ratio = no_of_stock_in_profit / no_of_stock_in_loss
        profit_loss_positions_ratio number,
        -----------------------positions analysis from trade analysis ---------------------
        --input
        long_positions varchar,
        short_positions varchar,
        --no_of_long_position = len(long_positions)
        no_of_long_position number,        
        --no_of_short_position = len(short_positions)
        no_of_short_position number, 
        --long_short_ratio = no_of_long_position / no_of_short_position
        long_short_ratio number,
        --no_of_positions = no_of_long_position + no_of_short_position
        no_of_positions number


);



create table trade_methodology (timestamp_of_data_accessed varchar,
        -----------------------trading method from manual entry----------------
        ---trade_type intraday or swing or delivery
        trade_type  varchar,

        -----trading style from manual entry--------------
        -- trading style long or short or both
        trading_style varchar,
		-------------------------risk_matrix  from manual entry---------------------------
		        --input
		margin_allotted number,
        max_risk_PCT number,
        min_no_of_positions number,
        max_no_of_positions number,
        max_no_of_long_positions number,
        max_no_of_short_positions number,
        --max_loss = (margin_allotted *  max_risk_PCT ) / 100
        max_loss number,
         --max_loss_per_stock = max_loss / min_no_of_open_stock
        max_loss_per_stock number,
        --------------------positions_status from trade analysis -------------------------------
                   --input
        no_of_long_position number,
        no_of_short_position number,
        --no_of_positions= no_of_long_position + no_of_short_position        
        no_of_positions number,
        --------------------------total_loss from current_account_status ----------------------
        --input
        total_loss number,
        ------------------------market_trend from market analysis  ------------------------------
                --input (UP  or  DOWN)
        nifty_trend varchar,
        -- input True or False
        is_only_trade_in_nifty_trend varchar
 );




create table watchlist(timestamp_of_data_accessed varchar,
		exchange varchar,
		symbol varchar,
		--whitelist or blacklist
		category varchar,
		--exchange_symbol = exchange + '_' + symbol
		exchange_symbol varchar,
		trend_monthly varchar,
		trend_weekly varchar,
		trend_daily varchar,
		trend_60min varchar,
		group_name varchar,
		price number,
		sector number,
		industry number,
		mcap number,
		volume number);


create table order_management (timestamp_of_data_accessed varchar,
		
		exchange varchar,
		symbol varchar,
		transaction_type varchar,
		
		order_type varchar,
		product varchar,
		duration varchar,
		disclosed_quantity number,
		
		max_qty number,
		total_qty number,
		total_risk number,
		total_profit number,


		min_no_of_orders number,

		max_open_qty number,
		max_risk number,
		max_profit number,
		max_qty_per_order number,		


		net_realised_loss number,
		net_realised_profit number,

		
		price_gap_between_orders number,
		price_gap_from_sl number,
		price_gap_from_trigger_price number,


		current_order_price number,
		current_order_type varchar,
		current_order_time varchar,
		current_order_qty number,
		current_sl number,


		previous_order_price number,
		previous_order_type varchar,
		previous_order_time varchar,
		previous_order_qty number,
		previous_sl number,


		next_order_price number,
		next_order_type varchar,
		next_order_time varchar,
		next_order_qty number,
		next_sl number,

		text_msg varchar);

