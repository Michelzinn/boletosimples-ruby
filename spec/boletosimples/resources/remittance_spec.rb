# frozen_string_literal: true

require 'spec_helper'

# Before running this spec again, you need to set environment variable BOLETOSIMPLES_API_TOKEN
RSpec.describe BoletoSimples::Remittance do
  describe 'all', vcr: { cassette_name: 'resources/remittance/all' } do
    subject { described_class.all }

    it { expect(subject.first).to be_a_kind_of(described_class) }
  end
end
