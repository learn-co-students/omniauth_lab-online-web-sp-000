require 'rails_helper'

RSpec.describe "welcome/home", type: :view, developer_strategy: true  do
  it 'offers signup with developer' do
    render
    expect(rendered).to include('Signing in with the developer strategy')
  end

  it 'offers signup with GitHub' do
    render
    expect(rendered).to include('Signing in with the GitHub strategy')
  end
end

