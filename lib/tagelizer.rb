require 'rubygems'
require 'bundler'
require 'bundler/setup'
require 'raspell'
require 'lingua/stemmer'

class Tagelizer

  attr_reader :locale, :options
  def initialize(locale = 'en')
    @dictionary= (dictionaries.include?(locale) ? locale : "en")
    @minwordsize = 2
    @options         = {'ignore-case' => true}
  end

  def parse( text )
    remove_duplicates(text.split(" ").collect {|i| /(\w*)/.match(i)[1]}.select {|i| i.size > @minwordsize}.collect {|w| corrected_word(w)})
  end

  def speller
    @speller ||= build_speller
  end

  def build_speller
    speller = Aspell.new(dictionary)
    speller.suggestion_mode = 'normal'
    actual_options.each do |key, value|
      speller.set_option key, value
    end

    speller
  end

  def stemmer
    @stemmer ||= build_stemmer
  end

  def build_stemmer
    Lingua::Stemmer.new(:language => dictionary)
  end

  attr_reader :dictionary
  def dictionary=(dict)
    unless dictionaries.include?(dict)
      raise ArgumentError, 'unknown dictionary'
    end

    @dictionary = dict
  end

  def dictionaries
    @dictionaries ||= Aspell.list_dicts.collect { |dict| dict.code }
  end

  def corrected_word(word)
    speller.check(word) ? word : speller.suggest(word).first
  end

  def actual_options
    options.keys.inject({}) do |hash, key|
      hash[key] = options[key].to_s
      hash
    end
  end

  def remove_duplicates list
    if list.empty?
      []
    else
      tmp = list.pop
      remove_duplicates(list.select { |word| stemmer.stem(word) != stemmer.stem(tmp) }) + [tmp]
    end
  end



end
