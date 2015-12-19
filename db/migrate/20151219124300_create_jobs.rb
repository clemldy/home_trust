class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :started_at
      t.datetime :finished_at
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
