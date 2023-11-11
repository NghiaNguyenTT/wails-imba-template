import * as echarts from 'echarts'

tag basicchart

	def mount
		let chartDom = document.getElementById('basicchart')
		let myChart = echarts.init(chartDom)
		let option = 
			xAxis:
				type: 'category'
				data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
			yAxis:
				type: 'value'
			series:[{data: [120, 200, 150, 80, 70, 110, 130], type: 'bar'}]
		
		myChart.setOption(option)

	def render
		<self>
			<div .flex .flex-col .items-center .justify-center .space-y-4 .mt-6>
				<div id="basicchart" style="width:800px;height:400px;">