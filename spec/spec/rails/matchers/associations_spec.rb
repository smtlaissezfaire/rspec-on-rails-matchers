require "spec_helper"

describe "RSpec::Matchers" do
  describe "belongs_to" do
    describe Comment do
      it { should belong_to(:post) }
      it { should_not belong_to(:foobar) }
    end
  end

  describe "valid associations" do
    describe Comment do
      it { should have_valid_associations }
    end

    describe Image do
      it { should have_valid_associations }
    end

    describe Post do
      it { should have_valid_associations }
    end

    describe Boolean do
      it { should have_valid_associations }
    end

    describe InvalidAssociationClass do
      it { should_not have_valid_associations }

      it "should use the failed association name in the failure message" do
        lambda {
          subject.should have_valid_associations
        }.should raise_error(RSpec::Expectations::ExpectationNotMetError, 'invalid or nonexistent association "foos" on InvalidAssociationClass')
      end
    end
  end
end
