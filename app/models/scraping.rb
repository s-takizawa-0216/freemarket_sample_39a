class Scraping

  def self.brand
    agent = Mechanize.new
    names = []
    page = agent.get("https://www.mercari.com/jp/brand/")
    elements = page.search('.brand-list-initial-box-brand-name p')
    elements.each do |ele|
      names << ele.inner_text
    end
    names.each do |name|
      save_brand_name(name)
    end
  end

  def self.save_brand_name(name)
     brand = Brand.new(:name => name)
     brand.save
#    puts name
  end

  def self.large_category  # 大カテゴリーのテキストを取得、テーブルに保存
   # require ‘Mechanize’

   agent = Mechanize.new
   names = []
   page = agent.get("https://www.mercari.com/jp/category/")
   elements = page.search(" .category-list-individual-box-sub-sub-category-name a")
   elements.each do |ele|
     names << ele.inner_text
   end
   names.each do |name|
     save_large_category(name)
   end
 end

 def self.save_large_category(str)
   name = str.gsub(" ", "").gsub("すべて", "")
   lcategory = Lcategory.new(name: name)#.first_or_initialize
   lcategory.save
 end
end
