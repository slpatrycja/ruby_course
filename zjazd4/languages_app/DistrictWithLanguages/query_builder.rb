class QueryBuilder

	def initialize(language, isofficial)
		@language = language
		@isofficial = isofficial
	end

	def call
		<<-SQL
			SELECT city.district, SUM(city.population)
			from country
			JOIN city ON city.countrycode = country.code
			JOIN countrylanguage ON countrylanguage.countrycode = country.code
			WHERE countrylanguage.language = '#{@language}' #{add_is_official_query}
			GROUP BY city.district 
			ORDER BY SUM(city.population) DESC;
		SQL
	end

	private 

	def add_is_official_query
		return unless @isofficial
		
		"AND countrylanguage.isofficial = '#{convert_is_official(@isofficial)}'"
	end

	def convert_is_official(val)
		if val == 'is_official'
			return 't'
		elsif val == 'is_not_official'
			return 'f'
		end
	end

end

