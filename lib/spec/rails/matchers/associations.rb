RSpec::Matchers.define :belong_to do |association|
  match do |object|
    object = object.class if object.is_a? ActiveRecord::Base
    object.reflect_on_all_associations(:belongs_to).find { |a| a.name == association }
  end
end

RSpec::Matchers.define :have_many do |association|
  match do |object|
    object = object.class if object.is_a? ActiveRecord::Base
    object.reflect_on_all_associations(:has_many).find { |a| a.name == association }
  end
end

RSpec::Matchers.define :have_one do |association|
  match do |object|
    object = object.class if object.is_a? ActiveRecord::Base
    object.reflect_on_all_associations(:has_one).find { |a| a.name == association }
  end
end

RSpec::Matchers.define :have_and_belong_to_many do |association|
  match do |object|
    object = object.class if object.is_a? ActiveRecord::Base
    object.reflect_on_all_associations(:has_and_belongs_to_many).find { |a| a.name == association }
  end
end

RSpec::Matchers.define :have_valid_associations do |association, *_|
  failed_association = nil
  model_class = nil

  match do |object|
    failed_association = nil
    model_class = object.class

    model_class.reflect_on_all_associations.each do |assoc|
      begin
        object.send(assoc.name)
      rescue
        failed_association = assoc.name
      end
    end

    !failed_association
  end

  failure_message_for_should do |actual|
    "invalid or nonexistent association \"#{failed_association}\" on #{model_class}"
  end
end
