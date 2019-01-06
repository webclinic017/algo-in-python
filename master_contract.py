Get master contracts
Getting master contracts allow you to search for instruments by symbol name and place orders. Master contracts are stored as an OrderedDict by token number and by symbol name. Whenever you get a trade update, order update, or quote update, the library will check if master contracts are loaded. If they are, it will attach the instrument object directly to the update.

u.get_master_contract('NSE_EQ') # get contracts for NSE EQ
u.get_master_contract('NSE_FO') # get contracts for NSE FO
u.get_master_contract('NSE_INDEX') # get contracts for NSE INDEX
u.get_master_contract('BSE_EQ') # get contracts for BSE EQ
u.get_master_contract('BCD_FO') # get contracts for BCD FO
u.get_master_contract('BSE_INDEX') # get contracts for BSE INDEX
u.get_master_contract('MCX_INDEX') # get contracts for MCX INDEX
u.get_master_contract('MCX_FO') # get contracts for MCX FO