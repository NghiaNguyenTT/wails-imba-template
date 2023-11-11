tag counter
	count = 0
	showing = false
	showed_once = false

	def clear_toast
		showed_once = true
		setTimeout(&,3s) do
			showing = false
			console.log "toast is clear"
			imba.commit!

	def render
		<self>
			<div .flex .flex-col .items-center .justify-center .space-y-4>
				<div .flex .pt-8>
					<span .text-2xl .font-bold> "Counter"
				<div .flex .space-x-2>
					<input type="text" placeholder="Type here" readOnly .input .input-bordered bind=count />
					<button .btn .btn-outline @click=count++> "+"
					<button .btn .btn-outline @click=count--> "-"
					<button .btn .btn-outline @click=count=0> "reset"
			
			if count > 9 && showed_once == false
				showing = true
				clear_toast!
			
			if showing
				<div .toast>
					<div .alert .alert-error>
						<span> "Count is larger than 9"
