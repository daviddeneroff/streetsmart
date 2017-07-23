class AddFieldsToPremises < ActiveRecord::Migration[5.1]
  def change
    add_column :premises, :mailer_building_number, :string
    add_column :premises, :mailer_street, :string
    add_column :premises, :mailer_street_type, :string
    add_column :premises, :mailer_city, :string
    add_column :premises, :mailer_state, :string
    add_column :premises, :mailer_zip_code, :string
    add_column :premises, :location_quality_grade, :integer
    add_column :premises, :premise_quality_grade, :integer
    add_column :premises, :listing_brokerage, :string
    add_column :premises, :listing_broker_name, :string
    add_column :premises, :listing_broker_email, :string
    add_column :premises, :listing_broker_number, :string
    add_column :premises, :tenant_contact_name, :string
    add_column :premises, :tenant_contact_phone_number, :string
    add_column :premises, :tenant_contact_email, :string
    add_column :premises, :tenant_contact_address, :string
    add_column :premises, :owner_contact_name, :string
    add_column :premises, :owner_contact_phone_number, :string
    add_column :premises, :owner_contact_email, :string
    add_column :premises, :owner_contact_address, :string
    add_column :premises, :unique_id_addedem, :string
    add_column :premises, :unique_id_complete, :string
    add_column :premises, :corridor, :string
    add_column :premises, :lattitude, :string
    add_column :premises, :longitude, :string
    add_column :premises, :previous_tenant, :string
  end
end
