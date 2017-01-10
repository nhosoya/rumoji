# -*- encoding: utf-8 -*-

require 'rumoji/emoji'
require 'set'

module Rumoji
  class Emoji
    NATURE = SortedSet[
      self.new("\u{2600}" , [:sunny], "BLACK SUN WITH RAYS"),
      self.new("\u{2614}" , [:umbrella], "UMBRELLA WITH RAIN DROPS"),
      self.new("\u{2601}" , [:cloud]),
      self.new("\u{2744}" , [:snowflake]),
      self.new("\u{26C4}" , [:snowman, :snowman_without_snow], "SNOWMAN WITHOUT SNOW"),
      self.new("\u{26A1}" , [:zap], "HIGH VOLTAGE SIGN"),
      self.new("\u{1F300}", [:cyclone]), # "typhoon, hurricane
      self.new("\u{1F301}", [:foggy]),
      self.new("\u{1F30A}", [:ocean], "WATER WAVE"),
      self.new("\u{1F324}", [:sun_behind_small_cloud, :mostly_sunny], "WHITE SUN WITH SMALL CLOUD"),
      self.new("\u{1F325}", [:sun_behind_large_cloud], "WHITE SUN BEHIND CLOUD"),
      self.new("\u{1F326}", [:sun_behind_cloud_with_rain, :partly_sunny_rain], "WHITE SUN BEHIND CLOUD WITH RAIN"),
      self.new("\u{1F327}", [:cloud_with_rain, :rain_cloud], "CLOUD WITH RAIN"),
      self.new("\u{1F328}", [:cloud_with_snow, :snow_cloud], "CLOUD WITH SNOW"),
      self.new("\u{1F329}", [:cloud_with_lightning, :lightning], "CLOUD WITH LIGHTNING"),
      self.new("\u{1F32A}", [:cloud_with_tornado, :tornado], "CLOUD WITH TORNADO"),
      self.new("\u{1F32B}", [:fog], "FOG"),
      self.new("\u{1F32C}", [:wind_face, :wind_blowing_face], "WIND BLOWING FACE"),
      self.new("\u{2603}", [:snowman_with_snow], "SNOWMAN"),
      self.new("\u{2604}", [:comet], "COMET"),
      self.new("\u{2618}", [:shamrock], "SHAMROCK"),

      # Animals
      self.new("\u{1F431}", [:cat], "CAT FACE"),
      self.new("\u{1F436}", [:dog], "DOG FACE"),
      self.new("\u{1F42D}", [:mouse], "MOUSE FACE"),
      self.new("\u{1F439}", [:hamster], "HAMSTER FACE"),
      self.new("\u{1F430}", [:rabbit], "RABBIT FACE"),
      self.new("\u{1F43A}", [:wolf], "WOLF FACE"),
      self.new("\u{1F438}", [:frog], "FROG FACE"),
      self.new("\u{1F42F}", [:tiger], "TIGER FACE"),
      self.new("\u{1F428}", [:koala]),
      self.new("\u{1F43B}", [:bear], "BEAR FACE"),
      self.new("\u{1F437}", [:pig], "PIG FACE"),
      self.new("\u{1F43D}", [:pig_nose]),
      self.new("\u{1F42E}", [:cow], "COW FACE"),
      self.new("\u{1F417}", [:boar]),
      self.new("\u{1F435}", [:monkey_face]),
      self.new("\u{1F412}", [:monkey]),
      self.new("\u{1F434}", [:horse], "HORSE FACE"),
      self.new("\u{1F40E}", [:racehorse], "HORSE"),
      self.new("\u{1F42B}", [:camel], "BACTRIAN CAMEL"), # "has two humps"
      self.new("\u{1F411}", [:sheep]),
      self.new("\u{1F418}", [:elephant]),
      self.new("\u{1F43C}", [:panda_face]),
      self.new("\u{1F40D}", [:snake]),
      self.new("\u{1F426}", [:bird]),
      self.new("\u{1F424}", [:baby_chick]),
      self.new("\u{1F425}", [:hatched_chick], "FRONT-FACING BABY CHICK"),
      self.new("\u{1F423}", [:hatching_chick]),
      self.new("\u{1F414}", [:chicken]),
      self.new("\u{1F427}", [:penguin]),
      self.new("\u{1F422}", [:turtle]),
      self.new("\u{1F41B}", [:bug]),
      self.new("\u{1F41D}", [:honeybee, :bee]),
      self.new("\u{1F41C}", [:ant]),
      self.new("\u{1F41E}", [:beetle], "LADY BEETLE"), # "ladybird, ladybug, coccinellids"
      self.new("\u{1F40C}", [:snail]),
      self.new("\u{1F419}", [:octopus]),
      self.new("\u{1F420}", [:tropical_fish]),
      self.new("\u{1F41F}", [:fish]),
      self.new("\u{1F433}", [:whale], "SPOUTING WHALE"),
      self.new("\u{1F40B}", [:whale2], "WHALE"),
      self.new("\u{1F42C}", [:dolphin]),
      self.new("\u{1F404}", [:cow2], "COW"),
      self.new("\u{1F40F}", [:ram]),
      self.new("\u{1F400}", [:rat]),
      self.new("\u{1F403}", [:water_buffalo]),
      self.new("\u{1F405}", [:tiger2], "TIGER"),
      self.new("\u{1F407}", [:rabbit2], "RABBIT"),
      self.new("\u{1F409}", [:dragon]),
      self.new("\u{1F410}", [:goat]),
      self.new("\u{1F413}", [:rooster]),
      self.new("\u{1F415}", [:dog2], "DOG"),
      self.new("\u{1F416}", [:pig2], "PIG"),
      self.new("\u{1F401}", [:mouse2], "MOUSE"),
      self.new("\u{1F402}", [:ox]),
      self.new("\u{1F432}", [:dragon_face]),
      self.new("\u{1F421}", [:blowfish]),
      self.new("\u{1F40A}", [:crocodile]),
      self.new("\u{1F42A}", [:dromedary_camel]), # "has a single hump"
      self.new("\u{1F406}", [:leopard]),
      self.new("\u{1F408}", [:cat2], "CAT"),
      self.new("\u{1F429}", [:poodle]),
      self.new("\u{1F43E}", [:paw_prints]),
      self.new("\u{1F981}", [:lion, :lion_face]),
      self.new("\u{1F984}", [:unicorn, :unicorn_face]),
      self.new("\u{1F983}", [:turkey]),
      self.new("\u{1F980}", [:crab]),
      self.new("\u{1F982}", [:scorpion]),
      self.new("\u{1f577}", [:spider]),
      self.new("\u{1f578}", [:spider_web]),
      self.new("\u{1f54A}", [:dove_of_peace]),
      self.new("\u{1F43F}", [:chipmunk]),
      # Flowers
      self.new("\u{1F490}", [:bouquet]),
      self.new("\u{1F338}", [:cherry_blossom]),
      self.new("\u{1F337}", [:tulip]),
      self.new("\u{1F340}", [:four_leaf_clover]),
      self.new("\u{1F339}", [:rose]),
      self.new("\u{1F33B}", [:sunflower]),
      self.new("\u{1F33A}", [:hibiscus]),
      self.new("\u{1F341}", [:maple_leaf]),
      self.new("\u{1F343}", [:leaves], "LEAF FLUTTERING IN WIND"),
      self.new("\u{1F342}", [:fallen_leaf]),
      self.new("\u{1F33F}", [:herb]),
      self.new("\u{1F344}", [:mushroom]),
      self.new("\u{1F335}", [:cactus]),
      self.new("\u{1F334}", [:palm_tree]),
      self.new("\u{1F332}", [:evergreen_tree]),
      self.new("\u{1F333}", [:deciduous_tree]),
      self.new("\u{1F330}", [:chestnut]),
      self.new("\u{1F331}", [:seedling]),
      self.new("\u{1F33C}", [:blossom]), # "daisy"
      self.new("\u{1F33E}", [:ear_of_rice]),
      self.new("\u{1F41A}", [:shell], "SPIRAL SHELL"),
      self.new("\u{1F310}", [:globe_with_meridians]), # "used to indicate international input source, world clocks with time zones, etc."
      self.new("\u{1F3F5}", [:rosette]),
      # Moon
      self.new("\u{1F31E}", [:sun_with_face]),
      self.new("\u{1F31D}", [:full_moon_with_face]),
      self.new("\u{1F31A}", [:new_moon_with_face]),
      self.new("\u{1F311}", [:new_moon], "NEW MOON SYMBOL"),
      self.new("\u{1F312}", [:waxing_crescent_moon], "WAXING CRESCENT MOON SYMBOL"),
      self.new("\u{1F313}", [:first_quarter_moon], "FIRST QUARTER MOON SYMBOL"), # "half moon"
      self.new("\u{1F314}", [:waxing_gibbous_moon], "WAXING GIBBOUS MOON SYMBOL"), # "waxing moon"
      self.new("\u{1F315}", [:full_moon], "FULL MOON SYMBOL"),
      self.new("\u{1F316}", [:waning_gibbous_moon], "WAINING GIBBOUS MOON SYMBOL"),
      self.new("\u{1F317}", [:last_quarter_moon], "LAST QUARTER MOON SYMBOL"),
      self.new("\u{1F318}", [:waning_crescent_moon], "WANING CRESCENT MOON SYMBOL"),
      self.new("\u{1F31C}", [:last_quarter_moon_with_face]),
      self.new("\u{1F31B}", [:first_quarter_moon_with_face]),
      self.new("\u{1F319}", [:moon, :crescent_moon], "CRESCENT MOON"), # "may indicate either the first or last quarter moon"
      self.new("\u{1F30D}", [:earth_africa], "EARTH GLOBE EUROPE-AFRICA"),
      self.new("\u{1F30E}", [:earth_americas], "EARTH GLOBE AMERICAS"),
      self.new("\u{1F30F}", [:earth_asia], "EARTH GLOBE ASIA-AUSTRALIA"),
      self.new("\u{1F30B}", [:volcano]),
      self.new("\u{1F30C}", [:milky_way]),
      self.new("\u{26C5}" , [:partly_sunny, :barely_sunny], "SUN BEHIND CLOUD"),
      self.new("\u{26c8}", [:thunder_cloud_and_rain], "THUNDER CLOUD AND RAIN"),
    ]
  end
end
