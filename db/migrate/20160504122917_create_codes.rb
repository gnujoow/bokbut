class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string  :language        # 코드의 언어
      t.string  :description     # 코드의 설명
      t.text    :source          # 소스코드
      t.boolean :shared          # 코드공개
      t.string  :user_id          # USER ID
      t.timestamps               # 타임스탬프
    end
  end
end
