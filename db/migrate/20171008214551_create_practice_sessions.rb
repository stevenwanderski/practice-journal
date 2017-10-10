class CreatePracticeSessions < ActiveRecord::Migration
  def change
    create_table :practice_sessions, id: :uuid do |t|
      t.text :goal
      t.text :result
      t.datetime :date

      t.timestamps null: false
    end
  end
end
