require 'rails_helper'

describe 'Openai' do
  let(:service_call) { double(OpenaiService) }

  before do
    allow(OpenaiService).to receive(:new).and_return(service_call)
  end

  it 'call the service exactly one time' do
    expect(service_call).to receive(:call).once
    OpenaiService.new.call()
  end
end