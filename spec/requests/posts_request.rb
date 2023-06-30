require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "[Action test]" do
    # 共通化できる記述
    before do
      @user = FactoryBot.create(:user, :a)
    end
  end
end