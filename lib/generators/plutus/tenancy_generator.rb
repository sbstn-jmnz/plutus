# lib/generators/plutus/plutus_generator.rb
require 'rails/generators'
require 'rails/generators/migration'
require_relative 'base_generator'

module Plutus
  class TenancyGenerator < BaseGenerator
    def create_migration_file
      migration_template 'tenant_migration.rb', 'db/migrate/tenant_plutus_tables.rb'
    end
  
    private
    def self.next_migration_number(dirname)
      next_migration_number = current_migration_number(dirname) + 1
      ActiveRecord::Migration.next_migration_number(next_migration_number)
    end
  end
end
