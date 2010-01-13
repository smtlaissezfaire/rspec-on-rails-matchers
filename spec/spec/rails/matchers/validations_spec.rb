require "spec_helper"

module Spec
  module Rails
    describe Matchers, "validations" do
      before do
        @example = Class.new do
          include Spec::Matchers
          include Spec::Rails::Matchers
        end.new
      end

      describe "validates_presence_of" do
        before do
          @comment = Comment.new
        end

        it "should match if the object has a validates_presence_of" do
          @example.validate_presence_of(:post).matches?(@comment).should be_true
        end

        it "should not match if the object does not have the association" do
          @example.validate_presence_of(:an_attr_accessor).matches?(@comment).should be_false
        end
      end
    end
  end
end