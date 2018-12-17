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
      it "is invalid without a email" do
        user = build(:user, email: "")
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end
      #emailが重複している場合登録できないこと
      it "is invalid with a duplicate email address" do
        user = create(:user)
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("has already been taken")
      end
      #passwordが空では登録できないこと
      it "is invalid without a password" do
        user = build(:user, password: "")
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end
      #passwordが6文字以上なら登録できること
      it "is valid with 6character or more" do
        user = build(:user, password: "000000")
        expect(user).to be_valid
      end
      #passwordが5文字以下なら登録できないこと
      it "is invalid with 5character or less" do
         user = build(:user, password: "00000", password_confirmation: "00000")
         user.valid?
         expect(user.errors[:password][0]).to include("is too short")
      end
      #passwordが128文字以下なら登録できること
      it "is valid with 128character or less" do
        user = build(:user, password: "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬa", password_confirmation: "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬa")
        expect(user).to be_valid
      end
      #passwordが129文字以上なら登録できないこと
      it "is invalid with 129cahracter or more" do
        user = build(:user, password: "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬaq", password_confirmation: "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬaq")
        user.valid?
        expect(user.errors[:password][0]).to include("is too long")
      end
      #passwordが存在してもpassword_confirmationが空では登録できないこと
      it "is invalid without password exit but password_confirmation doesn't exit" do
        user = build(:user, password_confirmation: "")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("doesn't match Password")
      end
      #nameが20文字以上だと登録できないこと
      it "is invalid with name 20character or more" do
        user = build(:user, name: "ぁあぃいぅうぇえぉおかがきぎくぐけげこご")
        user.valid?
        expect(user.errors[:name][0]).to include("is too long")
      end
      #nameが19文字以下だと登録できること
      it "is valid with 19character or less" do
        user = build(:user, name: "ぁあぃいぅうぇえぉおかがきぎくぐけげこ")
        expect(user).to be_valid
      end
      #nameが重複しないこと
      it "is invalid with a duplicate name" do
        user = create(:user)
        another_user = build(:user, name: user.name)
        another_user.valid?
        expect(another_user.errors[:name]).to include("has already been taken")
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
# ・passwordが空では登録できないこと ok
# ・passwordが6文字以上なら登録できること ok
# ・passwordが5文字以下なら登録できないこと ok
# ・passwordが128文字以下なら登録できること ok
# ・passwordが129文字以上なら登録できないこと ok
# ・passwordが存在してもpassword_confirmationが空では登録できないこと ok
# ・nameが20文字以上だと登録できないこと ok
# ・nameが19文字以下だと登録できること ok
# ・nameが重複しないこと ok
# ・nameが空では登録できないこと ok

