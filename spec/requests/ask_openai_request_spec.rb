require 'rails_helper'

describe 'AskOpenai', type: :request do
  it 'returns the response from openai' do
    get "/ask?q=say hello world!"

    expect(response).to have_http_status(:ok)
  end
end