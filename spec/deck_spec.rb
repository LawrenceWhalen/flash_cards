require './lib/card'
require './lib/deck'

RSpec.describe Deck do
  it 'exits' do
    card = Card.new('What is the capital of CO?', 'Denver', :Geography)
    cards = [card]
    deck = Deck.new(cards)

    expect(deck).to be_instance_of(Deck)
  end

  describe '#initialize' do
    it "has cards" do
      card1 = Card.new('What is the capital of CO?', 'Denver', :Geography)
      card2 = Card.new('What is the captial of Mexico?', 'Mexico City', :Geography)
      card3 = Card.new('What is the boiling point (degrees celcius) of water?', '100', :Science)
      card4 = Card.new('What position did Satchel Paige play?', 'pitcher', :Sports)
      card5 = Card.new('What element is abbreviated as Cl?', 'chlorine', :Science)
      cards = [card1, card2, card3, card4, card5]
      deck = Deck.new(cards)
  # require "pry"; binding.pry
      expect(deck.cards).to eq(cards)
    end

    it "has the correct number of cards" do
      card1 = Card.new('What is the capital of CO?', 'Denver', :Geography)
      card2 = Card.new('What is the captial of Mexico?', 'Mexico City', :Geography)
      card3 = Card.new('What is the boiling point (degrees celcius) of water?', '100', :Science)
      card4 = Card.new('What position did Satchel Paige play?', 'pitcher', :Sports)
      card5 = Card.new('What element is abbreviated as Cl?', 'chlorine', :Science)
      cards = [card1, card2, card3, card4, card5]
      deck = Deck.new(cards)

      expect(deck.cards.count).to eq(5)
    end
  end

  describe '#cards_in_category' do
    it "can return the number of cards in a specific category" do
      card1 = Card.new('What is the capital of CO?', 'Denver', :Geography)
      card2 = Card.new('What is the captial of Mexico?', 'Mexico City', :Geography)
      card3 = Card.new('What is the boiling point (degrees celcius) of water?', '100', :Science)
      card4 = Card.new('What position did Satchel Paige play?', 'pitcher', :Sports)
      card5 = Card.new('What element is abbreviated as Cl?', 'chlorine', :Science)
      cards = [card1, card2, card3, card4, card5]
      deck = Deck.new(cards)
  # require "pry"; binding.pry
      expect(deck.cards_in_category(:Sports)).to eq([card4])
    end

    it "can tell if there are more than one card in a category" do
      card1 = Card.new('What is the capital of CO?', 'Denver', :Geography)
      card2 = Card.new('What is the captial of Mexico?', 'Mexico City', :Geography)
      card3 = Card.new('What is the boiling point (degrees celcius) of water?', '100', :Science)
      card4 = Card.new('What position did Satchel Paige play?', 'pitcher', :Sports)
      card5 = Card.new('What element is abbreviated as Cl?', 'chlorine', :Science)
      cards = [card1, card2, card3, card4, card5]
      deck = Deck.new(cards)

      expect(deck.cards_in_category(:Geography)).to eq([card1,card2])
    end

    it "returns an empty array if there are no cards of that category" do
      card1 = Card.new('What is the capital of CO?', 'Denver', :Geography)
      card2 = Card.new('What is the captial of Mexico?', 'Mexico City', :Geography)
      card3 = Card.new('What is the boiling point (degrees celcius) of water?', '100', :Science)
      card4 = Card.new('What position did Satchel Paige play?', 'pitcher', :Sports)
      card5 = Card.new('What element is abbreviated as Cl?', 'chlorine', :Science)
      cards = [card1, card2, card3, card4, card5]
      deck = Deck.new(cards)

      expect(deck.cards_in_category(:Fight)).to eq([])
    end
  end
end
