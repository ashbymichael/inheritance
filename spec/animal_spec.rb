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
    expect(STDOUT).to receive(:puts).with("I ate some #{bat.favorite_food}!")
    bat.eat
  end

  it "can produce live young" do
    baby_bat = bat.reproduce
    expect(baby_bat).to be_a(Bat)
  end

  it "can fly" do
    expect(STDOUT).to receive(:puts).with("I just flew #{bat.flight_distance}!")
    bat.fly
  end

end

describe Dolphin do
  let(:dolphin) { Dolphin.new }

  it "has default values for all attributes" do
    expect(dolphin.cover).to eq('skin')
    expect(dolphin.movement).to eq('fins')
    expect(dolphin.favorite_food).to eq('squid')
  end

  it "can assign new values to any attribute" do
    dolphin_hash = {cover: 'scales',
    movement: 'tentacles',
    favorite_food: 'houses'}
    hash_dolphin = Dolphin.new(dolphin_hash)

    expect(hash_dolphin.cover).to eq(dolphin_hash[:cover])
    expect(hash_dolphin.movement).to eq(dolphin_hash[:movement])
    expect(hash_dolphin.favorite_food).to eq(dolphin_hash[:favorite_food])
  end

  it "can eat" do
    expect(STDOUT).to receive(:puts).with("I ate some #{dolphin.favorite_food}!")
    dolphin.eat
  end

  it "can produce live young" do
    baby_dolphin = dolphin.reproduce
    expect(baby_dolphin).to be_a(Dolphin)
  end

  it "can swim" do
    expect(STDOUT).to receive(:puts).with("I know how to swim!")
    dolphin.swim
  end
end

describe Penguin do
  let(:penguin) { Penguin.new }

  it "has default values for all attributes" do
    expect(penguin.cover).to eq('feathers')
    expect(penguin.movement).to eq('wings')
    expect(penguin.favorite_food).to eq('fish')
  end

  it "can assign new values to any attribute" do
    penguin_hash = {cover: 'scales',
    movement: 'tentacles',
    favorite_food: 'houses'}
    hash_penguin = Penguin.new(penguin_hash)

    expect(hash_penguin.cover).to eq(penguin_hash[:cover])
    expect(hash_penguin.movement).to eq(penguin_hash[:movement])
    expect(hash_penguin.favorite_food).to eq(penguin_hash[:favorite_food])
  end

  it "can eat" do
    expect(STDOUT).to receive(:puts).with("I ate some #{penguin.favorite_food}!")
    penguin.eat
  end

  it "can lay an egg" do
    baby_penguin = penguin.reproduce
    expect(baby_penguin).to be_a(Egg)
    baby_penguin = baby_penguin.hatch
    expect(baby_penguin).to be_a(Penguin)
  end

  it "can swim" do
    expect(STDOUT).to receive(:puts).with("I know how to swim!")
    penguin.swim
  end
end

describe Pigeon do
  let(:pigeon) { Pigeon.new }

  it "has default values for all attributes" do
    expect(pigeon.cover).to eq('feathers')
    expect(pigeon.movement).to eq('wings')
    expect(pigeon.favorite_food).to eq('trash')
    expect(pigeon.flight_distance).to eq('25km')
  end

  it "can assign new values to any attribute" do
    pigeon_hash = {cover: 'leaves',
                movement: 'motorcycle',
                favorite_food: 'feet',
                flight_distance: '18'}
    hash_pigeon = Pigeon.new(pigeon_hash)

    expect(hash_pigeon.cover).to eq(pigeon_hash[:cover])
    expect(hash_pigeon.movement).to eq(pigeon_hash[:movement])
    expect(hash_pigeon.favorite_food).to eq(pigeon_hash[:favorite_food])
    expect(hash_pigeon.flight_distance).to eq(pigeon_hash[:flight_distance])
  end

  it "can eat" do
    expect(STDOUT).to receive(:puts).with("I ate some #{pigeon.favorite_food}!")
    pigeon.eat
  end

  it "can lay an egg" do
    baby_pigeon = pigeon.reproduce
    expect(baby_pigeon).to be_a(Egg)
    baby_pigeon = baby_pigeon.hatch
    expect(baby_pigeon).to be_a(Pigeon)
  end

  it "can fly" do
    expect(STDOUT).to receive(:puts).with("I just flew #{pigeon.flight_distance}!")
    pigeon.fly
  end

end
