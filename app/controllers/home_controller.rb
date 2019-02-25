class HomeController < ApplicationController

  before_action :common, :only => [:index, :team]

  def common
    @hero_descriptor = Faker::Superhero.descriptor
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @hero_prefix = Faker::Superhero.prefix
    @hero_suffix = Faker::Superhero.suffix
    @hero_profession = Faker::Company.profession.titleize
    @hero_company_bs = Faker::Company.bs.titleize
    # Build Full Name
    @hero_fullname = @hero_prefix + ' ' + @hero_name + ' ' + @hero_suffix
    # Build Avatar
    @set = "set" + randomizer(2).to_s
    @bg = "bg" + randomizer(2).to_s
    @hero_avatar = Faker::Avatar.image(@hero_fullname, "300x300", "png", @set, @bg)
  end

  def index
  end

  def team
  end

  private
  def randomizer(key)
    rand(1..key)
  end
end
