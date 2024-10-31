# Download data
# ftp://ftp.bom.gov.au/anon/home/ncc/www/change/ACORN_SAT_daily/acorn_sat_v2.5.0_daily_tmax.tar.gz

download.file("ftp://ftp.bom.gov.au/anon/home/ncc/www/change/ACORN_SAT_daily/acorn_sat_v2.5.0_daily_tmax.tar.gz",
              destfile = "/home/user1/Documents/cold_front_project/acorn_sat_v2.5.0_daily_tmax.tar.gz")

untar("acorn_sat_v2.5.0_daily_tmax.tar.gz", exdir = "acorn_sat_v2.5.0_daily_tmax/")

