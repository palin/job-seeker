class TheItJobBoard::OfferAttributes < Common::OfferAttributes
  def offer_id
    offer.css(elements.result_link).first['id'].match(/.*\[(.*)\]/)[1]
  end

  [:advertiser, :salary, :description, :date].each do |m|
    define_method m do
      offer.xpath(elements.send(m, offer_id)).first.try(:content)
    end
  end
end