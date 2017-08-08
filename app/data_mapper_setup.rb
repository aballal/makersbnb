require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/space'

postgres_database = "postgres://localhost/makersBnB_#{ENV['RACK_ENV']}"

DataMapper.setup(:default, ENV['DATABASE_URL'] || postgres_database)
DataMapper.finalize
DataMapper.auto_upgrade! # Change to auto_migrate when table(s) change
