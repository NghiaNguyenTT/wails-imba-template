import { Greet } from "./wailsjs/go/main/App.js"
import 'iconify-icon'

import "./component/counter.imba"
import "./component/navbar.imba"
import "./component/about.imba"

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
			<div .drawer>
				<input id="my-drawer" type="checkbox" .drawer-toggle />
				<div .drawer-content>
					<navbar>
					<div route='/'>
						<div .flex .flex-col .items-center .justify-center .space-y-4>
							<div .flex .pt-8>
								<span .text-2xl .font-bold> "👇 Enter your name to say hi"
							<div .flex .space-x-2>
								<input .input .input-bordered placeholder="Your name" bind=name>
								<button .btn .btn-primary @click=greet(name)> "Greeting"
							<div>
								<span> "{feedback}"
					<div route='/counter-page'>
						<counter>
					<div route='/about'>
						<about>

				<div .drawer-side>
					<label for="my-drawer" aria-label="close sidebar" .drawer-overlay>
					<ul .menu .p-4 .w-80 .min-h-full .bg-base-200 .text-base-content>
						<li>
							<a route-to="/counter-page"> "Counter"
						<li>
							<a route-to="/about"> "About"

imba.mount <app autorender=yes>
