class CreateSleepLogs < ActiveRecord::Migration
  def self.up
    create_table :sleep_logs do |t|
      t.column "slp_day", :string
      t.column "slp_time", :string
      t.timestamps
    end
  end

  def self.down
    drop_table :sleep_logs
  end
end
