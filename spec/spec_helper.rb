require 'action_controller'
require 'active_record'
require 'spec/rails/matchers'
require File.expand_path(File.dirname(__FILE__) + "/../init")

ActiveRecord::Base.establish_connection :adapter => 'sqlite3', :database  => ':memory:'
ActiveRecord::Migration.verbose = false

class Comment < ActiveRecord::Base
  belongs_to :post

  validates_presence_of :post

  attr_accessor :an_attr_accessor
end

class Post < ActiveRecord::Base
  has_many :comments
end

class Boolean < ActiveRecord::Base
  validates_inclusion_of :null_not_allowable, :in => [true, false]
end

ActiveRecord::Schema.define do
  create_table :booleans do |t|
    t.boolean :null_allowable
    t.boolean :null_not_allowable
  end

  create_table :posts, :force => true do |t|
    t.string :name
  end

  create_table :comments, :force => true do |t|
    t.string :text
    t.integer :comment_id
  end
end
