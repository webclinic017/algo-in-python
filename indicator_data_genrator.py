def best_fit_slope_and_predicted(price_list,adjusted_pct=0): 
    from statistics import mean
    import numpy as np

    ys = np.array(price_list, dtype=np.float64)
    xs = np.array(range(len(ys)),dtype=np.float64)
    # xs = np.array([1,2,3,4,5], dtype=np.float64)
    # ys = np.array([5,4,6,5,6], dtype=np.float64)

    slope = (((mean(xs)*mean(ys)) - mean(xs*ys)) /
         ((mean(xs)*mean(xs)) - mean(xs*xs)))
    
    intercept = mean(ys) - slope*mean(xs)

    # adjusted_price -ve for lower... and +ve for upper...
    adjusted_price = price_list[-1] * (1 + adjusted_pct / 100)
    adjusted_intercept = intercept + adjusted_price
    
    # y =m*x +c
    predicted_price = slope * adjusted_intercept
    return slope, intercept 



def atr(highs, lows ,closes):
    high = list(highs)
    low = list(lows)
    clos= list(closes)
    priviousclose = clos.insert(0, (high+low)/2)
    priviousclose.pop()

    no_of_data = len(high)
    total_sum = 0
    for i in range(no_of_data):
        max_range = max((high[i]-low[i]),abs(high[i]-priviousclose[i]),abs(low[i]-priviousclose[i]))
        total_sum += max_range
    atr = total_sum / no_of_data
    return atr

def range_pct(highs,lows):
    upper = max(list(highs))
    lower = min(list(lows))
    range_pct = ( upper / lower -1 ) *100
    return range_pct

def price_pct(ltp_or_close_price , indicator_price):
    return (ltp_or_close_price / indicator_price- 1) * 100















