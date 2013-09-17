class SolutionCategory < EnumerateIt::Base
  associate_values :food,
                   :environment,
                   :man_and_his_things,
                   :communities,
                   :economy,
                   :education_and_culture,
                   :energy,
                   :networks_communication_mobility,
                   :health_happines_wellbeing,
                   :other
end
