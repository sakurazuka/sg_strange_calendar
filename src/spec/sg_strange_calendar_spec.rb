require_relative '../sg_strange_calendar.rb'

RSpec.describe 'generate' do
  it 'calendar' do
    expect { SgStrangeCalendar.generate }.to 'test test'
  end
end
