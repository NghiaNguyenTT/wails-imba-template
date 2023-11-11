import { Greet } from "../wailsjs/go/main/App.js"

tag home_page
	name = ""
	feedback = ""

	def greet your_name
		if your_name
			feedback = await Greet(your_name)

	def render
		<self>
			<div .flex .flex-col .items-center .justify-center .space-y-4>
				<div .flex .pt-8>
					<span .text-2xl .font-bold> "👇 Enter your name to say hi"
				<div .flex .space-x-2>
					<input .input .input-bordered placeholder="Your name" bind=name>
					<button .btn .btn-primary @click=greet(name)> "Greeting"
				<div>
					<span> "{feedback}"