require "spec_helper"

module Spec
  module Rails
    describe Matchers do
      before do
        @example = Class.new do
          include Spec::Matchers
          include Spec::Rails::Matchers
        end.new
      end

      describe "belongs_to" do
        before do
          @comment = Comment.new
        end

        it "should respond to belong_to" do
          @example.should respond_to(:belong_to)
        end

        it "should match if the object has a belongs to association" do
          @example.belong_to(:post).matches?(@comment).should be_true
        end

        it "should not match if the object does not have the association" do
          @example.belong_to(:foobar).matches?(@comment).should be_false
        end
      end
    end
  end
end