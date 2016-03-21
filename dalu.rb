#!/usr/bin/ruby

require 'mysql'


begin

  con = Mysql.new 'localhost', 'monty', 'some_pass', 'dg'

  rs = con.query("INSERT INTO `dg`.`lv_client` (`reg_plate`, `email`, `passcode`, `created_at`, `policynum`, `cover_type`, `last_renewal`, `next_renewal`, `annual_mileage`, `earned_ncd_yrs`, `voluntary_excess`, `abi_code`) VALUES ( 'LB05NTK', 'ruby1@r3pi2.com', 'LV2911718', '2016-03-21 12:04:17', 'sample_policy', 'COMP', '2015-01-01', '2016-01-01', '12100', '5', 'vol_excess', '11111')")


rescue Mysql::Error => e
  puts e.errno
  puts e.error

ensure
  con.close if con
end

#rs = con.query("INSERT INTO `dg`.`lv_client` (`reg_plate`, `email`, `passcode`, `created_at`, `policynum`, `cover_type`, `last_renewal`, `next_renewal`, `annual_mileage`, `earned_ncd_yrs`, `voluntary_excess`, `abi_code`) VALUES ( 'LB05NTK', 'ruby1@r3pi2.com', 'LV2911718', '2016-03-21 12:04:17', 'sample_policy', 'COMP', '2015-01-01', '2016-01-01', '12100', '5', 'vol_excess', '11111')")
