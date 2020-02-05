class TitleValidator < ActiveModel::Validator
    def validate(record)
       pp = ["Won't Believe", "Secret", "Top[number]", "Guess"]
       if record.title
            unless pp.any?{|x| record.title.include?(x)}
                record.errors[:name] << "Only clickbait round here"
            end
        end
    end
end
