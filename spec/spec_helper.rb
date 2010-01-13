require 'action_controller'
require 'active_record'
require 'spec/rails/matchers'
require File.expand_path(File.dirname(__FILE__) + "/../init")

ActiveRecord::Base.establish_connection :adapter => 'sqlite3', :database  => ':memory:'
ActiveRecord::Migration.verbose = false

class Comment < ActiveRecord::Base
  belongs_to :post
end

class Post < ActiveRecord::Base
  has_many :comments
end

ActiveRecord::Schema.define do
  create_table :posts, :force => true do |t|
    t.string :name
  end

  create_table :comments, :force => true do |t|
    t.string :text
    t.integer :comment_id
  end
end
