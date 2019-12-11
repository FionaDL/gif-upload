require "rails_helper"

RSpec.describe Gif, type: :model do
  describe "#labels_string=" do
    subject { Gif.new(labels_string: value) }

    context "when it is an empty string" do
      let(:value) { "" }

      it "assigns no labels" do
        expect(subject.labels).to be_empty
      end
    end

    context "when labels_string has two labels" do
      let(:value) { "cats, dogs" }

      it "assigns the right labels" do
        expect(subject.labels.size).to eq(2)

        subject.labels.each do |label|
          expect(["cats", "dogs"]).to include(label.name)
        end
      end
    end
  end
end
