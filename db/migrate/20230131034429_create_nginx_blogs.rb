class CreateNginxBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :nginx_blogs do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
