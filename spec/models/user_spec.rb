require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    describe '#new' do
      #name,email,password,password_confirmationが存在すれば確認できること
      it "is valid with a name, email, password, password_confirmation" do
        user = build(:user)
        expect(user).to be_valid
      end
      #emailが空では登録できないこと
      it "is invalid with a email" do
        user = build(:user, email: "")
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end
      #emailが重複している場合登録できないこと
      it "is invalid with a duplicate email address" do
        user = create(:user)
        another_user = build(:user)
        another_user.valid?
        expect(another_user.errors[:email]).to include("has already been taken")
      end
      #passwordが空では登録できないこと
      it "is invalid with a password" do
        user = build(:user, password: "")
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end
      #nameが空では登録できないこと
      it "is invalid without a name" do
        user = build(:user, name: "")
        user.valid?
        expect(user.errors[:name]).to include("can't be blank")
      end
    end
  end
end


#テストの項目一覧
# ・name,email,password,password_confirmationが存在すれば確認できること ok
# ・emailが空では登録できないこと ok
# ・emailが重複している場合登録できないこと ok
# ・passwordが空では登録できないこと
# ・passwordが6文字以上なら登録できること
# ・passwordが128文字以下なら登録できること
# ・passwordが存在してもpassword_confirmationが空では登録できないこと
# ・nameが20文字以上だと登録できないこと
# ・nameが19文字以下だと登録できること
# ・nameが重複しないこと
# ・nameが空では登録できないこと ok

