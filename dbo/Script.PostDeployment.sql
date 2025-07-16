/*
  If you dont find any records 
  why 1?
  its a tiny bit faster than select * from dbo.[customers]
  for every row in users return 1 
  this will only run when database is empty 
*/
if not exists (select 1 from dbo.[customers]) 
begin
	insert into dbo.[customers] (id, short_name, expedite, qa, qa_cost, is_sent, is_recieved, is_delivered, billed, is_paid,
								 is_binder_purchased, is_ship_normal, is_ship_overnight, mail_cost, binder_cost, is_binder_sent, cost, profit,
								 version, update_date, first_output_date, airline_notes, scan_rep, is_birdeye_sent, full_name, first_name, 
								 middle_name, last_name, call_sign, notes, email, interview_date, interview_airline, phone, Address, Address2,	
								 City, State, Zip, country, is_military, branch, is_harrier, is_osprey, is_ip, is_commercial, is_121, flies_for,
								 is_corporate, is_contractor, flies_for_contractor, is_ga, is_faa_cert, winging_date, ifr_date, pic_date, solo_date,
								 ppl_date, commercial_date, atp_date, cfi_date, cfii_date, mei_date, meii_date, registered_date, refferred, logbook_type,
								 is_ratp, is_helo, is_navy_log, is_usaf_log, is_civ_log, cost_per_line, process, POC, navy_pages, navy_records, ga_pages,
								 ga_records, ga_large_pages, ga_large_records, usaf_pages, usaf_records, sent_date, received_date, due_date, completion_days,
								 process_cost, scans_received_date, meta_update)
	values (-1, 'AAA_1', NULL, 'StuffS', 59.85, 1, 1, 1, 644.00, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'v418', convert(datetime,'2025-05-05 12:45:28.000'), 
			convert(datetime, '2024-11-10 12:03:18.000'), NULL, NULL, NULL, 'NOT James M. Cappabianca', 'James', NULL, 'Cappabianca', 'james.m.cappabianca@icloud.com', NULL,
			NULL, '(619) 987-7143', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'US Marine Corps', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, convert(date, '2011-04-08'),
			convert(date, '2010-06-23'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, convert(date, '2024-10-16'), 'Lab', NULL, NULL, NULL, 0, 0, 0, 0.04, NULL, NULL,
			NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, convert(datetime, '2023-02-03 14:43:28.000'), 0, NULL, convert(datetime, '2024-11-09 11:30:42.000'), 
			convert(datetime, '2025-06-23 18:39:23.6615439'));
end 