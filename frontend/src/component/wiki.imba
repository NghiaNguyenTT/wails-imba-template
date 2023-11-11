tag wiki
	tab_index = 0

	def render
		<self>
			<div .tabs>
				<a .tab .tab-bordered .tab-active=tab_index==0 .mb-8 @click=tab_index=0> "Today"
				<a .tab .tab-bordered .tab-active=tab_index==1 .mb-8 @click=tab_index=1> "News"
			<div .flex .flex-col>

					if tab_index == 0
						<today>
					if tab_index == 1
						<news>

tag today
	<self>
		<img src='../../static/Cenotaph_sketch_by_Lutyens.jpg'>
		<article .prose-lg .pt-8> '''The Cenotaph is a war memorial on Whitehall in London, England. Designed by Sir Edwin Lutyens, it was unveiled on 11 November 1920 as the United Kingdom's national memorial to the British and Commonwealth dead of the First World War. It was rededicated in 1946 to also commemorate those who had fallen in the Second World War, and has since come to represent British casualties from later conflicts. The word cenotaph is derived from Greek, meaning 'empty tomb'; the monument symbolises the absence of the dead and is a focal point for public mourning. The original temporary Cenotaph was erected in 1919 for a parade celebrating the end of the First World War; calls for it to be rebuilt in permanent form began almost immediately. The permanent Cenotaph was unveiled by George V on 11 November 1920 in a ceremony combined with the repatriation of the Unknown Warrior. The National Service of Remembrance is held annually at the site on Remembrance Sunday. This sketch by Lutyens of the Cenotaph's front and end elevations was published in The Illustrated London News two days after it was unveiled.'''
		<div .pt-8>
			<span> "From "
			<a .link> "https://en.wikipedia.org/wiki/Main_Page"

tag news
	<self>
		<span .prose-lg .pt-8> '''Leonardo DiCaprio (born November 11, 1974) is an American actor and film producer. He is the recipient of numerous accolades, including an Academy Award and three Golden Globe Awards. His films have grossed over $7.2 billion worldwide, and he was among the world's highest-paid actors for eight years. DiCaprio was voted one of the 50 greatest actors of all time in a 2022 readers' poll by Empire. He began his career in the late 1980s by appearing in television commercials and achieved international stardom with the blockbuster film Titanic (1997). Among his most successful films are Blood Diamond (2006), Inception (2010), Django Unchained (2012), The Revenant (2015) and Once Upon a Time in Hollywood (2019), as well as his many collaborations with director Martin Scorsese, including The Aviator (2004), The Departed (2006) and The Wolf of Wall Street (2013). Beyond film, he regularly promotes environmental causes. (This article is part of a featured topic: Overview of Leonardo DiCaprio.)'''