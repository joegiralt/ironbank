class CreateAppEnvs < ActiveRecord::Migration
  def change
    create_table :app_envs do |t|
      t.hstore :options
      t.text :name
      t.text :commit

      t.timestamps
    end
  end
end
