require_relative 'spec_helper'

describe Bat do
  let(:bat) { Bat.new }

  it "has default values for all attributes" do
    expect(bat.cover).to eq('fur')
    expect(bat.movement).to eq('wings')
    expect(bat.favorite_food).to eq('bugs')
    expect(bat.flight_distance).to eq('10km')
  end

  it "can assign new values to any attribute" do
    bat_hash = {cover: 'scales',
                movement: 'fins',
                favorite_food: 'lasagna',
                flight_distance: '1000km'}
    hash_bat = Bat.new(bat_hash)

    expect(hash_bat.cover).to eq(bat_hash[:cover])
    expect(hash_bat.movement).to eq(bat_hash[:movement])
    expect(hash_bat.favorite_food).to eq(bat_hash[:favorite_food])
    expect(hash_bat.flight_distance).to eq(bat_hash[:flight_distance])
  end

  it "can eat" do

  end
end
