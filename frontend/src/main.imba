import "./routes/counter_page.imba"
import "./routes/about_page.imba"
import "./routes/barchart_page.imba"
import "./routes/basicchart_page.imba"
import "./routes/clock_page.imba"
import "./routes/home_page.imba"
import "./routes/settings_page.imba"
import "./routes/pokemon_page.imba"

import { det } from "./routes/settings_page.imba"

import "./component/navbar.imba"

tag app

	def mount
		window.localStorage.setItem("theme", "lofi")
	
	def unmount
		console.log "unmount"

	def render
		<self>
			<div .drawer>
				<input id="my-drawer" type="checkbox" .drawer-toggle />
				<div .drawer-content>
					<navbar>
					<home_page route='/'>
					<counter route='/counter-page'>
					<about route='/about'>
					<barchart route='/barchart'>
					<basicchart route='/basicchart'>
					<clock route='/clock'>
					<setting route='/setting'>
					<pokemon route='/pokemon'>
					<poke route='/poke/:name'>
					<div route='/*'>
						'Fallback route. 404 NOT FOUND'

				<div .drawer-side>
					<label for="my-drawer" aria-label="close sidebar" .drawer-overlay>
					<ul .menu .p-4 .w-80 .min-h-full .bg-base-200 .text-base-content>
						<li>
							<a route-to="/counter-page"> "Counter"
						<li>
							<a route-to="/basicchart"> "Basic chart"
						<li>
							<a route-to="/barchart"> "Barchart"
						<li>
							<a route-to="/clock"> "Clock"
						<li>
							<a route-to="/pokemon"> "Pokemon"
						<li>
							<a route-to="/setting"> "Setting"
						<li>
							<a route-to="/about"> "About"

imba.mount <app autorender=yes>
