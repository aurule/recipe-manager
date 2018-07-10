require 'rails_helper'

ALLOWED_INVALID_CLASSES = []

# Ensure all our factories are valid
FactoryBot.factories.each do |factory|
  if factory.build_class < ActiveRecord::Base && !ALLOWED_INVALID_CLASSES.include?(factory.build_class)
    RSpec.describe "#{factory.name} factory" do
      it 'should be valid' do
        model = build(factory.name)

        expect(model).to be_valid
      end
    end
  end
end
