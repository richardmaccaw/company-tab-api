class CreateCompanyTimezones < ActiveRecord::Migration[5.2]
  def change
    create_table :company_timezones do |t|
      t.integer :timezone_id
      t.integer :company_id

      t.timestamps
    end
  end
end
