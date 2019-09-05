require 'parser.rb'
require 'test/unit'

class TestParser < Test::Unit::TestCase
  def test_peek
    assert_nil(peek([[]]))
    assert_equal('foo', peek([['foo', 'bar'], ['bar', 'foo']]))
  end

  def test_match
    assert_nil(match([[]], 'foo'))
    assert_equal(['foo', 'bar'], match([['foo', 'bar'], ['bar', 'foo']], 'foo'))
    assert_nil(match([['foo', 'bar'], ['bar', 'foo']], 'foobar'))
  end

  def test_skip
    assert_nil(skip([['verb', 'go'], ['direction', 'north']], 'verb'))
    assert_nil(skip([['verb', 'scream'], ['stop', 'at'], ['stop', 'the'], ['noun', 'bear']], 'stop'))
  end

  def test_parse_verb
    assert_equal(['verb', 'scream'], parse_verb([['verb', 'scream'], ['stop', 'at'], ['stop', 'the'], ['noun', 'bear']]))
    assert_equal(['verb', 'eats'], parse_verb([['stop', 'it'], ['verb', 'eats'], ['noun', 'honey']]))
  end

  def test_parse_object
    assert_equal(['noun', 'bear'], parse_object([['stop', 'the'], ['noun', 'bear'], ['verb', 'eats']]))
    assert_equal(['direction', 'north'], parse_object([['stop', 'the'], ['direction', 'north'], ['verb', 'remembers']]))
    assert_raise ParserError do
      parse_object([['stop', 'it'], ['verb', 'eats'], ['noun', 'honey']])
    end
  end

  def test_parse_subject()
    assert_equal(['noun', 'bear'], parse_subject([['stop', 'the'], ['noun', 'bear'], ['verb', 'eats']]))
    assert_equal(['noun', 'player'], parse_subject([['verb', 'attack'], ['stop', 'the'], ['noun', 'bear']]))
    assert_raise ParserError do
      parse_subject([['stop', 'the'], ['direction', 'north'], ['verb', 'remembers']])
    end
  end

  def test_parse_sentence()
    sentence = parse_sentence([['stop', 'the'], ['noun', 'bear'], ['verb','eats'], ['stop', 'the'], ['noun', 'honey']])
    assert_equal('bear', sentence.subject)
    assert_equal('eats', sentence.verb)
    assert_equal('honey', sentence.object)

    sentence = parse_sentence([['verb', 'go'], ['direction', 'down'], ['stop', 'the'], ['noun', 'hole']])
    assert_equal('player', sentence.subject)
    assert_equal('go', sentence.verb)
    assert_equal('down', sentence.object)
  end
end
