# frozen_string_literal: true

module FFaker
  module Company
    extend ModuleUtils
    extend self

    SUFFIXES = %w[Inc and\ Sons LLC Group].freeze
    POSITION_PREFIXES = %w[Executive Assistant General Associate].freeze
    POSITIONS = %w[President Manager Director Secretary Consultant].freeze

    def name
      ['Acme, Inc.', 'Widget Corp', 'Smith and Co.', 'Foo Bars', 'ABC Telecom', 'QWERTY Logistics', 'Acme Corp', 'Allied Biscuit', 'Extensive Enterprise', 'Galaxy Corp', 'Globo-Chem', 'Mr. Sparkle', 'Globex Corporation', 'LexCorp', 'LuthorCorp', 'North Central Positronics', 'Omni Consimer Products', 'Praxis Corporation', 'Sombra Corporation', 'Wayne Enterprises', 'Wentworth Industries', 'ZiffCorp', 'Bluth Company', 'Strickland Propane', 'Thatherton Fuels', 'Three Waters', 'Water and Power', 'Western Gas & Electric', 'Mammoth Pictures', 'Gringotts', 'Thrift Bank', 'Osato Chemicals', 'Transworld Consortium', 'Universal Export', 'Virtucon', 'Kumatsu Motors', 'Keedsler Motors', 'Powell Motors', 'Industrial Automation', 'Sirius Cybernetics Corporation', 'U.S. Robotics and Mechanical Men', 'Colonial Movers', 'Corellian Engineering Corporation', 'Incom Corporation', 'General Products', 'Leeding Engines Ltd.', 'Blammo', 'Input, Inc.', 'Mainway Toys', 'Videlectrix', 'Zevo Toys', 'Axis Chemical Co.', 'Barrytron', 'Carrys Candles', 'Cogswell Cogs', 'Spacely Sprockets', 'General Forge and Foundry', 'Duff Brewing Company', 'Dunder Mifflin', 'General Services Corporation', 'Monarch Playing Card Co.', 'Krustyco', 'Initech', 'Roboto Industries', 'Primatech', 'Vandelay Industries', 'Wernham Hogg', 'Gadgetron', 'Burleigh and Stronginthearm', 'BLAND Corporation', 'Nordyne Defense Dynamics', 'Petrox Oil Company', 'Roxxon', 'McMahon and Tate', 'Spade and Archer', 'Rouster and Sideways', 'C.H. Lavatory and Sons', 'Globo Gym American Corp', 'The New Firm', 'SpringShield', 'Compuglobalhypermeganet', 'Data Systems', 'Gizmonic Institute', 'Initrode', 'Taggart Transcontinental', 'Atlantic Northern'].sample
    end

    def suffix
      fetch_sample(SUFFIXES)
    end

    # Generate a buzzword-laden catch phrase.
    # Wordlist from http://www.1728.com/buzzword.htm
    def catch_phrase
      "#{fetch_sample(CATCH_PRE)} #{fetch_sample(CATCH_MID)} #{fetch_sample(CATCH_POS)}"
    end

    # When a straight answer won't do, BS to the rescue!
    # Wordlist from http://dack.com/web/bullshit.html
    def bs
      "#{fetch_sample(BS_PRE)} #{fetch_sample(BS_MID)} #{fetch_sample(BS_POS)}"
    end

    def position
      case rand(0..2)
      when 0 then
        [fetch_sample(POSITION_PREFIXES), fetch_sample(POSITIONS)]
      when 1 then
        [fetch_sample(POSITION_AREAS), fetch_sample(POSITIONS)]
      when 2 then
        [fetch_sample(POSITION_PREFIXES), fetch_sample(POSITION_AREAS), fetch_sample(POSITIONS)]
      end.join(' ')
    end
  end
end
