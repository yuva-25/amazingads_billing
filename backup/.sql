

CREATE TABLE `amazingads_billing_bank` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `bank_id` mediumtext DEFAULT NULL,
  `account_name` mediumtext DEFAULT NULL,
  `account_number` mediumtext DEFAULT NULL,
  `bank_name` mediumtext DEFAULT NULL,
  `ifsc_code` mediumtext DEFAULT NULL,
  `account_type` mediumtext DEFAULT NULL,
  `bank_name_account_number` mediumtext DEFAULT NULL,
  `branch` mediumtext DEFAULT NULL,
  `payment_mode_id` mediumtext DEFAULT NULL,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_bank (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, bank_id, account_name, account_number, bank_name, ifsc_code, account_type, bank_name_account_number, branch, payment_mode_id, deleted) VALUES ('1','2026-02-11 22:51:14','2026-02-11 22:51:14','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB545256045105010305550054530c6f0503','Z8cBZ3pB240e074c0a5b5415770a5815035649','Z8cBZ3pB5d5452035501060300520350560e040004','Axis','NULL','NULL','Z8cBZ3pB241b0f45431d0b0200500351570e0402045601540453001d','Z8cBZ3pB360a10570854405c','NULL','0');


CREATE TABLE `amazingads_billing_company` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `company_id` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `lower_case_name` mediumtext DEFAULT NULL,
  `email` mediumtext DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `state` mediumtext DEFAULT NULL,
  `district` mediumtext DEFAULT NULL,
  `city` mediumtext DEFAULT NULL,
  `others_city` mediumtext DEFAULT NULL,
  `pincode` mediumtext DEFAULT NULL,
  `gst_number` mediumtext DEFAULT NULL,
  `mobile_number` mediumtext DEFAULT NULL,
  `company_details` mediumtext DEFAULT NULL,
  `logo` mediumtext DEFAULT NULL,
  `watermark` mediumtext DEFAULT NULL,
  `primary_company` int(100) NOT NULL DEFAULT 0,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_company (id, created_date_time, updated_date_time, creator, creator_name, company_id, name, lower_case_name, email, address, state, district, city, others_city, pincode, gst_number, mobile_number, company_details, logo, watermark, primary_company, deleted) VALUES ('1','2026-02-10 23:19:58','2026-02-10 23:19:58','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB3106154243565c5844045b1c','Z8cBZ3pB1106154243565c5844045b1c','NULL','Z8cBZ3pB01100e51055d','Z8cBZ3pB31020b5f0f157d545010','NULL','NULL','NULL','NULL','Z8cBZ3pB575427742071760406560123536205','Z8cBZ3pB5d5651005b02050d0154','Z8cBZ3pB3106154243565c5844045b1c461c1451410b52045842121066590e0c0e1379590116421247157e5a560c59004202080005550d55065e0305161c4745256063182b0c460c4307047476267120530a030174526f57','NULL','NULL','1','0');


CREATE TABLE `amazingads_billing_estimate` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `estimate_id` mediumtext DEFAULT NULL,
  `estimate_number` mediumtext DEFAULT NULL,
  `estimate_date` mediumtext DEFAULT NULL,
  `party_id` mediumtext DEFAULT NULL,
  `party_name` mediumtext DEFAULT NULL,
  `party_mobile_number` mediumtext DEFAULT NULL,
  `party_name_mobile_city` mediumtext DEFAULT NULL,
  `party_details` mediumtext DEFAULT NULL,
  `product_id` mediumtext DEFAULT NULL,
  `product_name` mediumtext DEFAULT NULL,
  `unit_id` mediumtext DEFAULT NULL,
  `unit_name` mediumtext DEFAULT NULL,
  `size_id` mediumtext DEFAULT NULL,
  `size_name` mediumtext DEFAULT NULL,
  `quantity` mediumtext DEFAULT NULL,
  `rate` mediumtext DEFAULT NULL,
  `amount` mediumtext DEFAULT NULL,
  `sub_total` mediumtext DEFAULT NULL,
  `discount` mediumtext DEFAULT NULL,
  `discount_name` mediumtext DEFAULT NULL,
  `discount_value` mediumtext DEFAULT NULL,
  `discounted_total` mediumtext DEFAULT NULL,
  `extra_charges` mediumtext DEFAULT NULL,
  `extra_charges_name` mediumtext DEFAULT NULL,
  `extra_charges_value` mediumtext DEFAULT NULL,
  `extra_charges_total` mediumtext DEFAULT NULL,
  `extra_charges_tax` mediumtext DEFAULT NULL,
  `company_state` mediumtext DEFAULT NULL,
  `party_state` mediumtext DEFAULT NULL,
  `taxable_value` mediumtext DEFAULT NULL,
  `cgst_value` mediumtext DEFAULT NULL,
  `sgst_value` mediumtext DEFAULT NULL,
  `igst_value` mediumtext DEFAULT NULL,
  `total_tax_value` mediumtext DEFAULT NULL,
  `total_amount` mediumtext DEFAULT NULL,
  `total_quantity` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `hsn_code` mediumtext DEFAULT NULL,
  `round_off` mediumtext DEFAULT NULL,
  `bill_total` mediumtext DEFAULT NULL,
  `splitup_tax` mediumtext DEFAULT NULL,
  `splitup_quantity` mediumtext DEFAULT NULL,
  `splitup_amount` mediumtext DEFAULT NULL,
  `splitup_tax_amount` mediumtext DEFAULT NULL,
  `gst_option` mediumtext DEFAULT NULL,
  `tax_option` mediumtext DEFAULT NULL,
  `tax_type` mediumtext DEFAULT NULL,
  `overall_tax` mediumtext DEFAULT NULL,
  `final_price` mediumtext DEFAULT NULL,
  `product_tax` mediumtext DEFAULT NULL,
  `product_tax_value` mediumtext DEFAULT NULL,
  `splitup_hsn_code` mediumtext DEFAULT NULL,
  `order_form_id` mediumtext DEFAULT NULL,
  `converted` int(11) NOT NULL DEFAULT 0,
  `conversion_id` mediumtext DEFAULT NULL,
  `conversion_number` mediumtext DEFAULT NULL,
  `deleted` int(100) DEFAULT 0,
  `cancelled` int(100) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_estimate (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, estimate_id, estimate_number, estimate_date, party_id, party_name, party_mobile_number, party_name_mobile_city, party_details, product_id, product_name, unit_id, unit_name, size_id, size_name, quantity, rate, amount, sub_total, discount, discount_name, discount_value, discounted_total, extra_charges, extra_charges_name, extra_charges_value, extra_charges_total, extra_charges_tax, company_state, party_state, taxable_value, cgst_value, sgst_value, igst_value, total_tax_value, total_amount, total_quantity, description, notes, hsn_code, round_off, bill_total, splitup_tax, splitup_quantity, splitup_amount, splitup_tax_amount, gst_option, tax_option, tax_type, overall_tax, final_price, product_tax, product_tax_value, splitup_hsn_code, order_form_id, converted, conversion_id, conversion_number, deleted, cancelled) VALUES ('1','2026-02-11 21:58:18','2026-02-11 21:58:18','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB5452560451050103045c005d53006f0503','EST001/25-26','2026-02-11','Z8cBZ3pB54535604510501030554065550086f0506','Z8cBZ3pB360b075a0a5b5a','Z8cBZ3pB5c575e035a020603035d','Z8cBZ3pB360b075a0a5b5a151c5c015d5701070004540d4b','Z8cBZ3pB360b075a0a5b5a0956170b010452585f560b530a5a1054425c5a5f07100d6359080a0a162d5457400807475b2f57525c5e061558105f020c0701545054040f','Z8cBZ3pB54535604510501030554075c51006f0505,Z8cBZ3pB54535604510501030554075c570f6f050a','Z8cBZ3pB351109520040471505,Z8cBZ3pB351109521656471506','Z8cBZ3pB54535604510501030554075c52086f0505,Z8cBZ3pB54535604510501030554075c52086f0504','Z8cBZ3pB26021553,Z8cBZ3pB350015','Z8cBZ3pB54535604510501030554075c530e6f0505,Z8cBZ3pB54535604510501030554075c530d6f0504','Z8cBZ3pB54511e0453,Z8cBZ3pB54531e0453','40,20','100,50','4000,1000','5000','NULL','NULL','NULL','5000','1%','Z8cBZ3pB201b12440215705d5517520011','50.00','5050','0','Z8cBZ3pB31020b5f0f157d545010','Z8cBZ3pB31020b5f0f157d545010','0','0','0','0','0','5050.00','60',',','NULL','9834,','0','5050.00','NULL','NULL','NULL','NULL','','','','NULL','100,50','','NULL','NULL','NULL','0','','','0','0');

INSERT INTO amazingads_billing_estimate (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, estimate_id, estimate_number, estimate_date, party_id, party_name, party_mobile_number, party_name_mobile_city, party_details, product_id, product_name, unit_id, unit_name, size_id, size_name, quantity, rate, amount, sub_total, discount, discount_name, discount_value, discounted_total, extra_charges, extra_charges_name, extra_charges_value, extra_charges_total, extra_charges_tax, company_state, party_state, taxable_value, cgst_value, sgst_value, igst_value, total_tax_value, total_amount, total_quantity, description, notes, hsn_code, round_off, bill_total, splitup_tax, splitup_quantity, splitup_amount, splitup_tax_amount, gst_option, tax_option, tax_type, overall_tax, final_price, product_tax, product_tax_value, splitup_hsn_code, order_form_id, converted, conversion_id, conversion_number, deleted, cancelled) VALUES ('2','2026-02-11 22:03:42','2026-02-11 22:03:42','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB545256045105010305550556560b6f0500','EST002/25-26','2026-02-11','Z8cBZ3pB54535604510501030554065550086f0506','Z8cBZ3pB360b075a0a5b5a','Z8cBZ3pB5c575e035a020603035d','Z8cBZ3pB360b075a0a5b5a151c5c015d5701070004540d4b','Z8cBZ3pB360b075a0a5b5a0956170b010452585f560b530a5a1054425c5a5f07100d6359080a0a162d5457400807475b2f57525c5e061558105f020c0701545054040f','Z8cBZ3pB54535604510501030554075c570f6f050a','Z8cBZ3pB351109521656471506','Z8cBZ3pB54535604510501030554075c52086f0504','Z8cBZ3pB350015','Z8cBZ3pB54535604510501030554075c530d6f0504','Z8cBZ3pB54531e0453','20','100','2000','2000','NULL','NULL','NULL','2000','NULL','NULL','NULL','2000','0','Z8cBZ3pB31020b5f0f157d545010','Z8cBZ3pB31020b5f0f157d545010','2000','50.00','50.00','0','100.00','2100.00','20','','NULL','','0','2100.00','5','20','2000.00','100','1','1','1','NULL','100','5%','100','NULL','NULL','0','','','0','0');

INSERT INTO amazingads_billing_estimate (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, estimate_id, estimate_number, estimate_date, party_id, party_name, party_mobile_number, party_name_mobile_city, party_details, product_id, product_name, unit_id, unit_name, size_id, size_name, quantity, rate, amount, sub_total, discount, discount_name, discount_value, discounted_total, extra_charges, extra_charges_name, extra_charges_value, extra_charges_total, extra_charges_tax, company_state, party_state, taxable_value, cgst_value, sgst_value, igst_value, total_tax_value, total_amount, total_quantity, description, notes, hsn_code, round_off, bill_total, splitup_tax, splitup_quantity, splitup_amount, splitup_tax_amount, gst_option, tax_option, tax_type, overall_tax, final_price, product_tax, product_tax_value, splitup_hsn_code, order_form_id, converted, conversion_id, conversion_number, deleted, cancelled) VALUES ('3','2026-02-11 22:04:12','2026-02-11 22:04:12','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB545256045105010305550551530a6f0501','EST003/25-26','2026-02-11','Z8cBZ3pB54535604510501030554065550086f0506','Z8cBZ3pB360b075a0a5b5a','Z8cBZ3pB5c575e035a020603035d','Z8cBZ3pB360b075a0a5b5a151c5c015d5701070004540d4b','Z8cBZ3pB360b075a0a5b5a0956170b010452585f560b530a5a1054425c5a5f07100d6359080a0a162d5457400807475b2f57525c5e061558105f020c0701545054040f','Z8cBZ3pB54535604510501030554075c570f6f050a','Z8cBZ3pB351109521656471506','Z8cBZ3pB54535604510501030554075c52086f0504','Z8cBZ3pB350015','Z8cBZ3pB54535604510501030554075c530d6f0504','Z8cBZ3pB54531e0453','20','100','2000','2000','NULL','NULL','NULL','2000','NULL','NULL','NULL','2000','0','Z8cBZ3pB31020b5f0f157d545010','Z8cBZ3pB31020b5f0f157d545010','0','0','0','0','0','2000.00','20','','NULL','','0','2000.00','NULL','NULL','NULL','NULL','','','','NULL','100','','NULL','NULL','NULL','0','','','0','1');


CREATE TABLE `amazingads_billing_invoice` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `invoice_id` mediumtext DEFAULT NULL,
  `invoice_number` mediumtext DEFAULT NULL,
  `invoice_date` mediumtext DEFAULT NULL,
  `party_id` mediumtext DEFAULT NULL,
  `party_name` mediumtext DEFAULT NULL,
  `party_mobile_number` mediumtext DEFAULT NULL,
  `party_name_mobile_city` mediumtext DEFAULT NULL,
  `party_details` mediumtext DEFAULT NULL,
  `product_id` mediumtext DEFAULT NULL,
  `product_name` mediumtext DEFAULT NULL,
  `unit_id` mediumtext DEFAULT NULL,
  `unit_name` mediumtext DEFAULT NULL,
  `size_id` mediumtext DEFAULT NULL,
  `size_name` mediumtext DEFAULT NULL,
  `quantity` mediumtext DEFAULT NULL,
  `rate` mediumtext DEFAULT NULL,
  `amount` mediumtext DEFAULT NULL,
  `sub_total` mediumtext DEFAULT NULL,
  `discount` mediumtext DEFAULT NULL,
  `discount_name` mediumtext DEFAULT NULL,
  `discount_value` mediumtext DEFAULT NULL,
  `discounted_total` mediumtext DEFAULT NULL,
  `extra_charges` mediumtext DEFAULT NULL,
  `extra_charges_name` mediumtext DEFAULT NULL,
  `extra_charges_value` mediumtext DEFAULT NULL,
  `extra_charges_total` mediumtext DEFAULT NULL,
  `extra_charges_tax` mediumtext DEFAULT NULL,
  `company_state` mediumtext DEFAULT NULL,
  `party_state` mediumtext DEFAULT NULL,
  `taxable_value` mediumtext DEFAULT NULL,
  `cgst_value` mediumtext DEFAULT NULL,
  `sgst_value` mediumtext DEFAULT NULL,
  `igst_value` mediumtext DEFAULT NULL,
  `total_tax_value` mediumtext DEFAULT NULL,
  `total_amount` mediumtext DEFAULT NULL,
  `total_quantity` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `hsn_code` mediumtext DEFAULT NULL,
  `round_off` mediumtext DEFAULT NULL,
  `bill_total` mediumtext DEFAULT NULL,
  `splitup_tax` mediumtext DEFAULT NULL,
  `splitup_quantity` mediumtext DEFAULT NULL,
  `splitup_amount` mediumtext DEFAULT NULL,
  `splitup_tax_amount` mediumtext DEFAULT NULL,
  `gst_option` mediumtext DEFAULT NULL,
  `tax_option` mediumtext DEFAULT NULL,
  `tax_type` mediumtext DEFAULT NULL,
  `overall_tax` mediumtext DEFAULT NULL,
  `final_price` mediumtext DEFAULT NULL,
  `product_tax` mediumtext DEFAULT NULL,
  `product_tax_value` mediumtext DEFAULT NULL,
  `splitup_hsn_code` mediumtext DEFAULT NULL,
  `estimate_id` mediumtext DEFAULT NULL,
  `bank_id` mediumtext DEFAULT NULL,
  `deleted` int(100) DEFAULT 0,
  `cancelled` int(100) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_invoice (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, invoice_id, invoice_number, invoice_date, party_id, party_name, party_mobile_number, party_name_mobile_city, party_details, product_id, product_name, unit_id, unit_name, size_id, size_name, quantity, rate, amount, sub_total, discount, discount_name, discount_value, discounted_total, extra_charges, extra_charges_name, extra_charges_value, extra_charges_total, extra_charges_tax, company_state, party_state, taxable_value, cgst_value, sgst_value, igst_value, total_tax_value, total_amount, total_quantity, description, notes, hsn_code, round_off, bill_total, splitup_tax, splitup_quantity, splitup_amount, splitup_tax_amount, gst_option, tax_option, tax_type, overall_tax, final_price, product_tax, product_tax_value, splitup_hsn_code, estimate_id, bank_id, deleted, cancelled) VALUES ('1','2026-02-11 22:54:16','2026-02-11 22:54:16','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB545256045105010305550051530e6f0503','INV001/25-26','2026-02-11','Z8cBZ3pB54535604510501030554065550086f0506','Z8cBZ3pB360b075a0a5b5a','Z8cBZ3pB5c575e035a020603035d','Z8cBZ3pB360b075a0a5b5a151c5c015d5701070004540d4b','Z8cBZ3pB360b075a0a5b5a0956170b010452585f560b530a5a1054425c5a5f07100d6359080a0a162d5457400807475b2f57525c5e061558105f020c0701545054040f','Z8cBZ3pB54535604510501030554075c51006f0505,Z8cBZ3pB54535604510501030554075c570f6f050a','Z8cBZ3pB351109520040471505,Z8cBZ3pB351109521656471506','Z8cBZ3pB54535604510501030554075c52086f0505,Z8cBZ3pB54535604510501030554075c52086f0504','Z8cBZ3pB26021553,Z8cBZ3pB350015','Z8cBZ3pB54535604510501030554075c530e6f0505,Z8cBZ3pB54535604510501030554075c530d6f0504','Z8cBZ3pB54511e0453,Z8cBZ3pB54531e0453','20,10','50,500','1000,5000','6000','NULL','NULL','NULL','6000','NULL','NULL','NULL','6000','0','Z8cBZ3pB31020b5f0f157d545010','Z8cBZ3pB31020b5f0f157d545010','6000','185.00','185.00','0','370.00','6370.00','30',',','NULL','9834,','0','6370.00','12,5','20,10','1000.00,5000.00','120,250','1','1','1','NULL','50,500','12%,5%','120,250','9834','NULL','Z8cBZ3pB545256045105010305550054530c6f0503','0','0');


CREATE TABLE `amazingads_billing_login` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `loginer_name` mediumtext DEFAULT NULL,
  `login_date_time` datetime DEFAULT NULL,
  `logout_date_time` datetime DEFAULT NULL,
  `ip_address` mediumtext DEFAULT NULL,
  `browser` mediumtext DEFAULT NULL,
  `os_detail` mediumtext DEFAULT NULL,
  `type` mediumtext DEFAULT NULL,
  `user_id` mediumtext DEFAULT NULL,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_login (id, loginer_name, login_date_time, logout_date_time, ip_address, browser, os_detail, type, user_id, deleted) VALUES ('1','Z8cBZ3pB16110f164b06070700570651510a041c','2026-02-09 13:13:58','','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:147.0) Gecko/20100101 Firefox/147.0','Linux srisoftwarez-Latitude-7410 6.14.0-37-generic #37~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Nov 20 10:25:38 UTC 2 x86_64','Super Admin','Z8cBZ3pB555a5604510501030454045753016f0503','0');

INSERT INTO amazingads_billing_login (id, loginer_name, login_date_time, logout_date_time, ip_address, browser, os_detail, type, user_id, deleted) VALUES ('2','Z8cBZ3pB16110f164b06070700570651510a041c','2026-02-09 13:14:54','','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:147.0) Gecko/20100101 Firefox/147.0','Linux srisoftwarez-Latitude-7410 6.14.0-37-generic #37~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Nov 20 10:25:38 UTC 2 x86_64','Super Admin','Z8cBZ3pB555a5604510501030454045753016f0503','0');

INSERT INTO amazingads_billing_login (id, loginer_name, login_date_time, logout_date_time, ip_address, browser, os_detail, type, user_id, deleted) VALUES ('3','Z8cBZ3pB16110f164b06070700570651510a041c','2026-02-10 23:12:57','','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0','Windows NT DESKTOP-5D4LVIO 10.0 build 26100 (Windows 11) AMD64','Super Admin','Z8cBZ3pB555a5604510501030454045753016f0503','0');

INSERT INTO amazingads_billing_login (id, loginer_name, login_date_time, logout_date_time, ip_address, browser, os_detail, type, user_id, deleted) VALUES ('4','Z8cBZ3pB16110f164b06070700570651510a041c','2026-02-10 23:19:06','','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0','Windows NT DESKTOP-5D4LVIO 10.0 build 26100 (Windows 11) AMD64','Super Admin','Z8cBZ3pB555a5604510501030454045753016f0503','0');

INSERT INTO amazingads_billing_login (id, loginer_name, login_date_time, logout_date_time, ip_address, browser, os_detail, type, user_id, deleted) VALUES ('5','Z8cBZ3pB16110f164b06070700570651510a041c','2026-02-10 23:19:06','','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0','Windows NT DESKTOP-5D4LVIO 10.0 build 26100 (Windows 11) AMD64','Super Admin','Z8cBZ3pB555a5604510501030454045753016f0503','0');

INSERT INTO amazingads_billing_login (id, loginer_name, login_date_time, logout_date_time, ip_address, browser, os_detail, type, user_id, deleted) VALUES ('6','Z8cBZ3pB16110f164b06070700570651510a041c','2026-02-10 23:19:06','','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0','Windows NT DESKTOP-5D4LVIO 10.0 build 26100 (Windows 11) AMD64','Super Admin','Z8cBZ3pB555a5604510501030454045753016f0503','0');

INSERT INTO amazingads_billing_login (id, loginer_name, login_date_time, logout_date_time, ip_address, browser, os_detail, type, user_id, deleted) VALUES ('7','Z8cBZ3pB16110f164b06070700570651510a041c','2026-02-11 00:01:17','','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0','Windows NT DESKTOP-5D4LVIO 10.0 build 26100 (Windows 11) AMD64','Super Admin','Z8cBZ3pB555a5604510501030454045753016f0503','0');

INSERT INTO amazingads_billing_login (id, loginer_name, login_date_time, logout_date_time, ip_address, browser, os_detail, type, user_id, deleted) VALUES ('8','Z8cBZ3pB16110f164b06070700570651510a041c','2026-02-11 21:51:01','','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0','Windows NT DESKTOP-5D4LVIO 10.0 build 26100 (Windows 11) AMD64','Super Admin','Z8cBZ3pB555a5604510501030454045753016f0503','0');


CREATE TABLE `amazingads_billing_order_form` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `order_form_id` mediumtext DEFAULT NULL,
  `order_form_number` mediumtext DEFAULT NULL,
  `order_form_date` mediumtext DEFAULT NULL,
  `party_id` mediumtext DEFAULT NULL,
  `party_name` mediumtext DEFAULT NULL,
  `party_mobile_number` mediumtext DEFAULT NULL,
  `party_name_mobile_city` mediumtext DEFAULT NULL,
  `party_details` mediumtext DEFAULT NULL,
  `product_id` mediumtext DEFAULT NULL,
  `product_name` mediumtext DEFAULT NULL,
  `unit_id` mediumtext DEFAULT NULL,
  `unit_name` mediumtext DEFAULT NULL,
  `size_id` mediumtext DEFAULT NULL,
  `size_name` mediumtext DEFAULT NULL,
  `quantity` mediumtext DEFAULT NULL,
  `rate` mediumtext DEFAULT NULL,
  `amount` mediumtext DEFAULT NULL,
  `hsn_code` mediumtext DEFAULT NULL,
  `total_amount` mediumtext DEFAULT NULL,
  `total_quantity` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `converted` int(11) NOT NULL DEFAULT 0,
  `conversion_id` mediumtext DEFAULT NULL,
  `conversion_number` mediumtext DEFAULT NULL,
  `deleted` int(100) DEFAULT 0,
  `cancelled` int(100) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_order_form (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, order_form_id, order_form_number, order_form_date, party_id, party_name, party_mobile_number, party_name_mobile_city, party_details, product_id, product_name, unit_id, unit_name, size_id, size_name, quantity, rate, amount, hsn_code, total_amount, total_quantity, description, notes, converted, conversion_id, conversion_number, deleted, cancelled) VALUES ('1','2026-02-10 23:30:51','2026-02-11 00:19:15','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB54535604510501030554065557096f0503','ORF001/25-26','2026-02-10','Z8cBZ3pB54535604510501030554065550086f0506','Z8cBZ3pB360b075a0a5b5a','Z8cBZ3pB5c575e035a020603035d','Z8cBZ3pB360b075a0a5b5a151c5c015d5701070004540d4b','Z8cBZ3pB360b075a0a5b5a0956170b010452585f560b530a5a1054425c5a5f07100d6359080a0a162d5457400807475b2f57525c5e061558105f020c0701545054040f','Z8cBZ3pB54535604510501030554075c570f6f050a','Z8cBZ3pB351109521656471506','Z8cBZ3pB54535604510501030554075c52086f0504','Z8cBZ3pB350015','Z8cBZ3pB54535604510501030554075c530d6f0504','Z8cBZ3pB54531e0453','20','10.00','200','1935','200','20','Z8cBZ3pB3511095216564715770d540b055d43','NULL','0','','','0','0');

INSERT INTO amazingads_billing_order_form (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, order_form_id, order_form_number, order_form_date, party_id, party_name, party_mobile_number, party_name_mobile_city, party_details, product_id, product_name, unit_id, unit_name, size_id, size_name, quantity, rate, amount, hsn_code, total_amount, total_quantity, description, notes, converted, conversion_id, conversion_number, deleted, cancelled) VALUES ('2','2026-02-11 22:56:30','2026-02-11 22:56:30','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB54525604510501030555005351086f0500','ORF002/25-26','2026-02-10','Z8cBZ3pB54535604510501030554065550086f0506','Z8cBZ3pB360b075a0a5b5a','Z8cBZ3pB5c575e035a020603035d','Z8cBZ3pB360b075a0a5b5a151c5c015d5701070004540d4b','Z8cBZ3pB360b075a0a5b5a0956170b010452585f560b530a5a1054425c5a5f07100d6359080a0a162d5457400807475b2f57525c5e061558105f020c0701545054040f','Z8cBZ3pB54535604510501030554075c570f6f050a','Z8cBZ3pB351109521656471506','Z8cBZ3pB54535604510501030554075c52086f0504','Z8cBZ3pB350015','Z8cBZ3pB54535604510501030554075c530d6f0504','Z8cBZ3pB54531e0453','20','100','2000','','2000','20','','Z8cBZ3pB2d271f50','0','','','0','1');


CREATE TABLE `amazingads_billing_party` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `party_id` mediumtext DEFAULT NULL,
  `party_name` mediumtext DEFAULT NULL,
  `lower_case_name` mediumtext DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `city` mediumtext DEFAULT NULL,
  `district` mediumtext DEFAULT NULL,
  `state` mediumtext DEFAULT NULL,
  `pincode` mediumtext DEFAULT NULL,
  `mobile_number` mediumtext DEFAULT NULL,
  `others_city` mediumtext DEFAULT NULL,
  `party_details` mediumtext DEFAULT NULL,
  `name_mobile_city` mediumtext DEFAULT NULL,
  `identification` mediumtext DEFAULT NULL,
  `email` mediumtext DEFAULT NULL,
  `gst_number` mediumtext DEFAULT NULL,
  `party_type` int(11) NOT NULL DEFAULT 0,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_party (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, party_id, party_name, lower_case_name, address, city, district, state, pincode, mobile_number, others_city, party_details, name_mobile_city, identification, email, gst_number, party_type, deleted) VALUES ('4','2026-02-10 23:30:20','2026-02-10 23:30:20','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB54535604510501030554065550086f0506','Z8cBZ3pB360b075a0a5b5a','Z8cBZ3pB160b075a0a5b5a','Z8cBZ3pB01050c5e09515b535c0f4307145652','NULL','NULL','Z8cBZ3pB31020b5f0f157d545010','NULL','Z8cBZ3pB5c575e035a020603035d','','Z8cBZ3pB360b075a0a5b5a0956170b010452585f560b530a5a1054425c5a5f07100d6359080a0a162d5457400807475b2f57525c5e061558105f020c0701545054040f','Z8cBZ3pB360b075a0a5b5a151c5c015d5701070004540d4b','','','NULL','2','0');

INSERT INTO amazingads_billing_party (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, party_id, party_name, lower_case_name, address, city, district, state, pincode, mobile_number, others_city, party_details, name_mobile_city, identification, email, gst_number, party_type, deleted) VALUES ('5','2026-02-11 22:55:43','2026-02-11 22:55:43','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB545256045105010305550050560b6f0507','Z8cBZ3pB3702105f','Z8cBZ3pB1702105f','NULL','Z8cBZ3pB260b034f1a4041','Z8cBZ3pB260b035804545f4555114110','Z8cBZ3pB31020b5f0f157d545010','Z8cBZ3pB535150075106','Z8cBZ3pB5d505105570200020152','','Z8cBZ3pB3702105f5f57410b770d501c1b4d420950110b21580358535354130416474210210a15424d1c0f57465b61040f515c157c0251170c04440a7f57010c0e561702455b550150010406035002','Z8cBZ3pB3702105f431d0b0603560152510f05021b431842730e534d4b4d11','','ravi123@gmail.com','NULL','2','0');


CREATE TABLE `amazingads_billing_payment_mode` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `payment_mode_id` mediumtext DEFAULT NULL,
  `payment_mode_name` mediumtext DEFAULT NULL,
  `lower_case_name` mediumtext DEFAULT NULL,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `amazingads_billing_product` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `product_id` mediumtext DEFAULT NULL,
  `product_name` mediumtext DEFAULT NULL,
  `lower_case_name` mediumtext DEFAULT NULL,
  `unit_id` mediumtext DEFAULT NULL,
  `unit_name` mediumtext DEFAULT NULL,
  `size_id` mediumtext DEFAULT NULL,
  `size_name` mediumtext DEFAULT NULL,
  `hsn_code` mediumtext DEFAULT NULL,
  `product_tax` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_product (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, product_id, product_name, lower_case_name, unit_id, unit_name, size_id, size_name, hsn_code, product_tax, description, deleted) VALUES ('7','2026-02-10 23:29:37','2026-02-10 23:29:37','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB54535604510501030554075c51006f0505','Z8cBZ3pB351109520040471505','Z8cBZ3pB151109520040471505','Z8cBZ3pB54535604510501030554075c52086f0505','Z8cBZ3pB26021553','Z8cBZ3pB54535604510501030554075c530e6f0505','Z8cBZ3pB54511e0453','9834','NULL','NULL','0');

INSERT INTO amazingads_billing_product (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, product_id, product_name, lower_case_name, unit_id, unit_name, size_id, size_name, hsn_code, product_tax, description, deleted) VALUES ('8','2026-02-10 23:29:57','2026-02-10 23:29:57','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB54535604510501030554075c570f6f050a','Z8cBZ3pB351109521656471506','Z8cBZ3pB151109521656471506','Z8cBZ3pB54535604510501030554075c52086f0504','Z8cBZ3pB350015','Z8cBZ3pB54535604510501030554075c530d6f0504','Z8cBZ3pB54531e0453','NULL','NULL','NULL','0');


CREATE TABLE `amazingads_billing_role` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `role_id` mediumtext DEFAULT NULL,
  `role_name` mediumtext DEFAULT NULL,
  `lower_case_name` mediumtext DEFAULT NULL,
  `type` mediumtext DEFAULT NULL,
  `admin` mediumtext DEFAULT NULL,
  `access_pages` mediumtext DEFAULT NULL,
  `access_page_actions` mediumtext DEFAULT NULL,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `amazingads_billing_role_permission` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `role_permission_id` mediumtext DEFAULT NULL,
  `role_id` mediumtext DEFAULT NULL,
  `module` mediumtext DEFAULT NULL,
  `module_actions` mediumtext DEFAULT NULL,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `amazingads_billing_size` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `size_id` mediumtext DEFAULT NULL,
  `size_name` mediumtext DEFAULT NULL,
  `lower_case_name` mediumtext DEFAULT NULL,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_size (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, size_id, size_name, lower_case_name, deleted) VALUES ('6','2026-02-10 23:29:15','2026-02-10 23:29:15','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB54535604510501030554075c530d6f0504','Z8cBZ3pB54531e0453','10x20','0');

INSERT INTO amazingads_billing_size (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, size_id, size_name, lower_case_name, deleted) VALUES ('7','2026-02-10 23:29:15','2026-02-10 23:29:15','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB54535604510501030554075c530e6f0505','Z8cBZ3pB54511e0453','12x20','0');


CREATE TABLE `amazingads_billing_unit` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `bill_company_id` mediumtext DEFAULT NULL,
  `unit_id` mediumtext DEFAULT NULL,
  `unit_name` mediumtext DEFAULT NULL,
  `lower_case_name` mediumtext DEFAULT NULL,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_unit (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, unit_id, unit_name, lower_case_name, deleted) VALUES ('6','2026-02-10 23:29:00','2026-02-10 23:29:00','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB54535604510501030554075c52086f0504','Z8cBZ3pB350015','pcs','0');

INSERT INTO amazingads_billing_unit (id, created_date_time, updated_date_time, creator, creator_name, bill_company_id, unit_id, unit_name, lower_case_name, deleted) VALUES ('7','2026-02-10 23:29:00','2026-02-10 23:29:00','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB54535604510501030554045c57006f0503','Z8cBZ3pB54535604510501030554075c52086f0505','Z8cBZ3pB26021553','case','0');


CREATE TABLE `amazingads_billing_user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `creator` mediumtext DEFAULT NULL,
  `creator_name` mediumtext DEFAULT NULL,
  `user_id` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `mobile_number` mediumtext DEFAULT NULL,
  `name_mobile` mediumtext DEFAULT NULL,
  `role_id` mediumtext DEFAULT NULL,
  `login_id` mediumtext DEFAULT NULL,
  `lower_case_login_id` mediumtext DEFAULT NULL,
  `password` mediumtext DEFAULT NULL,
  `admin` int(100) NOT NULL DEFAULT 0,
  `type` mediumtext DEFAULT NULL,
  `deleted` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO amazingads_billing_user (id, created_date_time, updated_date_time, creator, creator_name, user_id, name, mobile_number, name_mobile, role_id, login_id, lower_case_login_id, password, admin, type, deleted) VALUES ('1','2026-02-09 13:12:19','2026-02-09 13:12:19','','Z8cBZ3pB16110f','Z8cBZ3pB555a5604510501030454045753016f0503','Z8cBZ3pB16110f','Z8cBZ3pB56575402510607060651','Z8cBZ3pB16110f164b06070700570651510a041c','NULL','Z8cBZ3pB36110f450c5347425517501f','Z8cBZ3pB16110f450c5347425517501f','Z8cBZ3pB24070b5f0d04010674','1','Super Admin','0');
