import "./routes/counter_page.imba"
import "./routes/about_page.imba"
import "./routes/barchart_page.imba"
import "./routes/basicchart_page.imba"
import "./routes/clock_page.imba"
import "./routes/home_page.imba"

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
					<div route='/'>
						<home_page>
					<div route='/counter-page'>
						<counter>
					<div route='/about'>
						<about>
					<div route='/barchart'>
						<barchart>
					<div route='/basicchart'>
						<basicchart>
					<div route='/clock'>
						<clock>

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
							<a route-to="/about"> "About"

imba.mount <app autorender=yes>
