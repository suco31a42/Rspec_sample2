require 'rails_helper'

RSpec.describe User, type: :model do
  # userの関数の中に代入されたユーザーがbe_valid（有効である）
  it "is valid with a email and password" do
    user = User.new(
      email: "user1@user.com",
      password: "user1pass",
    )
    expect(user).to be_valid
  end
  
  # emailが無ければ、無効である
  it "is invalid without an email" do
    user = User.new(
      email: nil,
      password: "user1pass",
    )
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")# 空白にしてはいけません
  end
  
  # 重複したemailは無効である
  it "is invalid with a duplicate email address" do
    User.create(
      email: "user1@user.com",
      password: "user1pass",
    )
    user = User.new(
      email: "user1@user.com",
      password: "user2pass",
    )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")# すでに仕様されています
  end
  
  it "factorybot 2" do
    user = FactoryBot.create(:user, :a)
    expect(user.email).to eq "email@1.com"# 期待値と値を比較して一致するか
  end
end
