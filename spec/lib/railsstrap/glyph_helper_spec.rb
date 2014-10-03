# encoding: utf-8
require 'spec_helper'
require 'action_view'
require 'active_support'
require_relative '../../../app/helpers/railsstrap/glyph_helper'

include ActionView::Helpers
include ActionView::Context
include Railsstrap::GlyphHelper

describe Railsstrap::GlyphHelper, :type => :helper do
  it "should return a basic railsstrap glyph" do
    expect(glyph(:thumbs_up).gsub(/\s/, '').downcase)
      .to eql(BASIC_GLYPH.gsub(/\s/, '').downcase)
  end

  it "should return a railsstrap glyph with span" do
    expect(glyph(:thumbs_up, {:tag => :span}).gsub(/\s/, '').downcase)
      .to eql(GLYPH_WITH_SPAN.gsub(/\s/, '').downcase)
  end
end

BASIC_GLYPH = %{<iclass=\"glyphiconglyphicon-thumbs-up\"></i>}
GLYPH_WITH_SPAN = %{<spanclass=\"glyphiconglyphicon-thumbs-up\"></span>}
