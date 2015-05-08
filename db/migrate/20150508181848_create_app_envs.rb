class CreateAppEnvs < ActiveRecord::Migration
  def change
    create_table :app_envs do |t|
      t.hstore :options
      t.string :name
      t.text :commit
      t.string :slug

      t.timestamps
    end
    add_index :app_envs, :slug, unique: true
  end
end
