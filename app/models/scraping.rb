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
end
