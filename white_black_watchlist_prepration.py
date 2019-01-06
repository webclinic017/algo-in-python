
# prepare whitelist blacklist and watchlist
# import from whitelist blacklist
# insert into watchlist


# prepare whitelist and insert data into whitelist








# prepare blacklist and insert data into blacklist








# prepare watchlist and insert data into watchlist
def get_whitelist_from_database():



whitelist = get_whitelist_from_database().exchange_symbol
blacklist = get_blacklist_from_database().exchange_symbol

def remove_list_from_list(whitelist,blacklist):
	for black in blacklist:
		try:
			whitelist.remove(black)
		except:
			continue
	return whitelist

watchlist = remove_list_from_list(whitelist, blacklist)

insert_into_watchlist(watchlist)

update_watchlist_in_database(source_table, watchlist_table)












