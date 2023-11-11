export let det = false

tag setting
	def render
		<self>
			<div .flex .flex-col .space-y-2 .p-8>
				<span .ml-2 .font-bold .text-lg> "Settings"
				<div .flex .justify-between .bg-base-200 .px-4 .py-2>
					<span> "Enable DET"
					<input type="checkbox" .toggle checked bind=det/>
				<div .flex .justify-between .bg-base-200 .px-4 .py-2>
					<span> "Enable safety mechanism"
					<input type="checkbox" .toggle />
				<div .flex .justify-between .bg-base-200 .px-4 .py-2>
					<span> "High perfomance mode"
					<input type="checkbox" .toggle />