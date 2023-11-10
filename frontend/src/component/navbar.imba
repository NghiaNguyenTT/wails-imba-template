import 'iconify-icon'

tag navbar
	def render
		<self>
			<div .navbar .bg-base-100>
				<div .flex-none>
					<a .btn .btn-square .btn-ghost route-to="/">
						<iconify-icon icon="lucide:grip" width="24" height="24">
				<div .flex-1>
					<a .btn btn-ghost .normal-case .text-xl route-to="/"> "daisyUI"
				<div .flex-none>
					<button .btn .btn-square .btn-ghost route-to="/counter-page">
						<iconify-icon icon="lucide:menu" width="24" height="24">