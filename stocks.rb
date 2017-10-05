stock_dict = { 'GM' => 'General Motors','CAT' => 'Caterpillar', 'EK' => "Eastman Kodak" }
purchases = [ [ 'GM', 100, '10-sep-2001', 48 ],
[ 'CAT', 100, '1-apr-1999', 24 ],
[ 'GM', 200, '1-jul-1998', 56 ] ]
puts "REPORT 1"
for item in purchases
  puts "#{stock_dict[item[0]]} -- $#{item[1]*item[3]}"
end
puts "REPORT 2"
stock_dict_keys = stock_dict.keys
stock_dict_keys.each do |stockkeyvalue|
  total = 0
  date = ''
  purchases.each do |item|
    if item[0] == stockkeyvalue
      total += item[1]*item[3]
      date += item[2]+", "
    end
  end
  date.gsub!(/\, $/, '')
  if (date=='')
    date = "N/A"
  end
  puts "#{stock_dict[stockkeyvalue]} -- #{date} -- $#{total}"
end
