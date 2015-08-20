require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "requires a comment" do
    newComment = Comment.new(comment: "")
    newComment.valid?
    expect(newComment.errors[:comment].any?).to eq(true)
  end

  describe "relationship" do
    it "belongs to a product" do
      comment = Comment.new
      product = Product.new
      product.comments << comment
      expect(comment.product).to be(product)
    end
  end
end
