import 'iconify-icon'

let up_time = 0

let up_hour = 0
let up_min = 0
let up_sec = 0

tag navbar

	def mount
		#interval = setInterval(&, 1000) do
			up_time = up_time + 1

			up_hour = Math.floor(up_time / 3600)
			up_min = Math.floor(up_time / 60)
			up_sec = up_time % 60

			if up_time == 7200
				up_time = 0
			imba.commit!
	
	def unmount
		#interval && clearInterval(#interval)

	def render
		<self>
			<div .navbar .bg-base-100>
				<div .flex-none>
					<label for="my-drawer" .btn .btn-ghost .drawer-button>
						<iconify-icon icon="lucide:grip" width="24" height="24">
				<div .flex-1>
					<a .btn btn-ghost .normal-case .text-xl route-to="/"> "daisyUI"
				<div .flex-none>
					<div .flex .mr-6>
						<span .loading .loading-bars .loading-sm .mr-1>
						<span .countdown .justify-center .items-center .mr-1>
							<span style="--value:{up_hour};">
						<span .mr-1> ":"
						<span .countdown .justify-center .items-center .mr-1>
							<span style="--value:{up_min};">
						<span .mr-1> ":"
						<span .countdown .justify-center .items-center .mr-1>
							<span style="--value:{up_sec};">
					<div .flex>
						<label .swap .swap-rotate>
							<input type="checkbox" data-toggle-theme="black,lofi" data-act-class="ACTIVECLASS" />
							<div .swap-on .flex .justify-center .items-center>
								<iconify-icon icon="ph:sun" width="24" height="24">
							<div .swap-off .flex .justify-center .items-center>
								<iconify-icon icon="ph:moon" width="24" height="24">