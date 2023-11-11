const POKEMON_API = "https://pokeapi.co/api/v2/"
export let pokemon_data = []

tag pokemon

	filter = ""
	filtered_pokemon = []

	def getPokemonList
		let response = await window.fetch(POKEMON_API + "pokemon?limit=151&offset=0")
		let data = await response.json!
		pokemon_data = data.results

	def mount
		getPokemonList!

	def render
		<self>
			if filter != ""
				filtered_pokemon = pokemon_data.filter(do(pokemon)
					return pokemon.name.toLowerCase().includes(filter.toLowerCase()))
			else
				filtered_pokemon = pokemon_data

			<div .flex .flex-col .space-y-4 .p-8>
				<span .text-xl .font-bold> "Pokemon list"
				<input type="text" placeholder="Filter" .input .input-bordered .w-full .max-w-xs bind=filter/>
				<div .grid .grid-cols-4 .gap-4> for pokemon in filtered_pokemon
					<div .card .w-60 .bg-base-100 .shadow-xl>
						<div .card-body>
							<div .card-title>
								<a .link route-to="/poke/{pokemon.name}"> "{pokemon.name.charAt(0).toUpperCase() + pokemon.name.slice(1)}"

tag poke

	my_poke = {}
	species = {}
	image = ""
	poke_name = ""
	poke_types = []
	poke_stats = []

	def getPokemon name do
		let response = await window.fetch(POKEMON_API + "pokemon/" + name)
		my_poke = await response.json!
		species = my_poke.species
		poke_name = my_poke.name.charAt(0).toUpperCase() + my_poke.name.slice(1)
		image = my_poke.sprites.other['official-artwork'].front_default

		poke_types = my_poke.types.map(do(t)
			return t.type.name)
		
		poke_stats = []
		for st in my_poke.stats
			poke_stats.push(st)
		
		imba.commit!
	
	def mount
			await getPokemon(route.params.name)
	
	def render
		<self>
			<div .flex .flex-col .items-center .justify-center .space-y-2 .p-8>
				# <span> "{my_poke.name}"
				# # <ul> for abi in my_poke.abilities
				# # 	<li> "{abi.ability.name}"
				# <span> "{my_poke.height}"
				# <span> "{my_poke.weight}"
				# <img src="{image}" .w-60>

				<div .card .w-96 .bg-base-200 .shadow-xl>
					<figure>
						<img src="{image}" alt="poke" .w-72/>
					<div .card-body>
						<h2 .card-title .items-center .justify-center .py-4 .text-2xl> "{poke_name}"
						for st in poke_stats
							<div .flex .justify-between>
								<span .w-52> "{st.stat.name}: {st.base_stat}"
								<progress .progress .w-56 value="{st.base_stat}" max="100">
						<div .card-actions .justify-end>
							for t in poke_types
								<div .badge .badge-outline> "{t}"