import 'iconify-icon'

tag navbar
	def render
		<self>
			<div .navbar .bg-base-100>
				<div .flex-none>
					<a .btn .btn-square .btn-ghost route-to="/counter-page">
						<iconify-icon icon="lucide:grip" width="24" height="24">
				<div .flex-1>
					<a .btn btn-ghost .normal-case .text-xl route-to="/"> "daisyUI"
				<div .flex-none>
						<div .flex>
							<label .swap .swap-rotate>
								<input type="checkbox" data-toggle-theme="black,lofi" data-act-class="ACTIVECLASS" />
								<div .swap-on .flex .justify-center .items-center>
									<iconify-icon icon="ph:sun" width="24" height="24">
								<div .swap-off .flex .justify-center .items-center>
									<iconify-icon icon="ph:moon" width="24" height="24">