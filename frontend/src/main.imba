import { Greet } from "./wailsjs/go/main/App.js"
import 'iconify-icon'

import "./component/counter.imba"
import "./component/navbar.imba"

tag app
	name = ""
	feedback = ""

	def greet your_name
		if your_name
			feedback = await Greet(your_name)

	def mount
		window.localStorage.setItem("theme", "lofi")
		setTimeout(&,5s) do
			console.log "5s passed"
	
	def unmount
		console.log "unmount"

	def render
		<self>
			<div route='/'>
				<navbar>
				<div .flex .flex-col .items-center .justify-center .space-y-4>
					<div .flex .pt-8>
						<span .text-2xl .font-bold> "👇 Enter your name to say hi"
					<div .flex .space-x-2>
						<input .input .input-bordered placeholder="Your name" bind=name>
						<button .btn .btn-primary @click=greet(name)> "Greeting"
						<div .flex>
							<label .swap .swap-rotate>
								<input type="checkbox" data-toggle-theme="black,lofi" data-act-class="ACTIVECLASS" />
								<div .swap-on .flex .justify-center .items-center>
									<iconify-icon icon="ph:sun" width="24" height="24">
								<div .swap-off .flex .justify-center .items-center>
									<iconify-icon icon="ph:moon" width="24" height="24">
					<div>
						<span> "{feedback}"
			<div route='/counter-page'>
				<counter>

imba.mount <app autorender=yes>
