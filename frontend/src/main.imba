import "./routes/counter_page.imba"
import "./routes/about_page.imba"
import "./routes/home_page.imba"
import "./routes/settings_page.imba"
import "./routes/pokemon_page.imba"

import * as echarts from 'echarts'

import { det } from "./routes/settings_page.imba"

import "./component/navbar.imba"

tag clock

	def mount
		let chartDom = document.getElementById('clock')
		let myChart = echarts.init(chartDom)
		let option =
					series: [
						{
							name: 'hour',
							type: 'gauge',
							startAngle: 90,
							endAngle: -270,
							min: 0,
							max: 12,
							splitNumber: 12,
							clockwise: true,
							axisLine: {
								lineStyle: {
									width: 15,
									color: [[1, 'rgba(0,0,0,0.7)']],
									shadowColor: 'rgba(0, 0, 0, 0.5)',
									shadowBlur: 15
								}
							},
							splitLine: {
								lineStyle: {
									shadowColor: 'rgba(0, 0, 0, 0.3)',
									shadowBlur: 3,
									shadowOffsetX: 1,
									shadowOffsetY: 2
								}
							},
							axisLabel: {
								fontSize: 50,
								distance: 25,
								formatter: do(value)
									if (value == 0)
										return ''
									return value + ''
							},
							anchor: {
								show: true,
								icon: 'path://M532.8,70.8C532.8,70.8,532.8,70.8,532.8,70.8L532.8,70.8C532.7,70.8,532.8,70.8,532.8,70.8z M456.1,49.6c-2.2-6.2-8.1-10.6-15-10.6h-37.5v10.6h37.5l0,0c2.9,0,5.3,2.4,5.3,5.3c0,2.9-2.4,5.3-5.3,5.3v0h-22.5c-1.5,0.1-3,0.4-4.3,0.9c-4.5,1.6-8.1,5.2-9.7,9.8c-0.6,1.7-0.9,3.4-0.9,5.3v16h10.6v-16l0,0l0,0c0-2.7,2.1-5,4.7-5.3h10.3l10.4,21.2h11.8l-10.4-21.2h0c6.9,0,12.8-4.4,15-10.6c0.6-1.7,0.9-3.5,0.9-5.3C457,53,456.7,51.2,456.1,49.6z M388.9,92.1h11.3L381,39h-3.6h-11.3L346.8,92v0h11.3l3.9-10.7h7.3h7.7l3.9-10.6h-7.7h-7.3l7.7-21.2v0L388.9,92.1z M301,38.9h-10.6v53.1H301V70.8h28.4l3.7-10.6H301V38.9zM333.2,38.9v10.6v10.7v31.9h10.6V38.9H333.2z M249.5,81.4L249.5,81.4L249.5,81.4c-2.9,0-5.3-2.4-5.3-5.3h0V54.9h0l0,0c0-2.9,2.4-5.3,5.3-5.3l0,0l0,0h33.6l3.9-10.6h-37.5c-1.9,0-3.6,0.3-5.3,0.9c-4.5,1.6-8.1,5.2-9.7,9.7c-0.6,1.7-0.9,3.5-0.9,5.3l0,0v21.3c0,1.9,0.3,3.6,0.9,5.3c1.6,4.5,5.2,8.1,9.7,9.7c1.7,0.6,3.5,0.9,5.3,0.9h33.6l3.9-10.6H249.5z M176.8,38.9v10.6h49.6l3.9-10.6H176.8z M192.7,81.4L192.7,81.4L192.7,81.4c-2.9,0-5.3-2.4-5.3-5.3l0,0v-5.3h38.9l3.9-10.6h-53.4v10.6v5.3l0,0c0,1.9,0.3,3.6,0.9,5.3c1.6,4.5,5.2,8.1,9.7,9.7c1.7,0.6,3.4,0.9,5.3,0.9h23.4h10.2l3.9-10.6l0,0H192.7z M460.1,38.9v10.6h21.4v42.5h10.6V49.6h17.5l3.8-10.6H460.1z M541.6,68.2c-0.2,0.1-0.4,0.3-0.7,0.4C541.1,68.4,541.4,68.3,541.6,68.2L541.6,68.2z M554.3,60.2h-21.6v0l0,0c-2.9,0-5.3-2.4-5.3-5.3c0-2.9,2.4-5.3,5.3-5.3l0,0l0,0h33.6l3.8-10.6h-37.5l0,0c-6.9,0-12.8,4.4-15,10.6c-0.6,1.7-0.9,3.5-0.9,5.3c0,1.9,0.3,3.7,0.9,5.3c2.2,6.2,8.1,10.6,15,10.6h21.6l0,0c2.9,0,5.3,2.4,5.3,5.3c0,2.9-2.4,5.3-5.3,5.3l0,0h-37.5v10.6h37.5c6.9,0,12.8-4.4,15-10.6c0.6-1.7,0.9-3.5,0.9-5.3c0-1.9-0.3-3.7-0.9-5.3C567.2,64.6,561.3,60.2,554.3,60.2z',
								showAbove: false,
								offsetCenter: [0, '-35%'],
								size: 120,
								keepAspect: true,
								itemStyle: {
									color: '#707177'
								}
							},
							pointer: {
								icon: 'path://M2.9,0.7L2.9,0.7c1.4,0,2.6,1.2,2.6,2.6v115c0,1.4-1.2,2.6-2.6,2.6l0,0c-1.4,0-2.6-1.2-2.6-2.6V3.3C0.3,1.9,1.4,0.7,2.9,0.7z',
								width: 12,
								length: '55%',
								offsetCenter: [0, '8%'],
								itemStyle: {
									color: '#C0911F',
									shadowColor: 'rgba(0, 0, 0, 0.3)',
									shadowBlur: 8,
									shadowOffsetX: 2,
									shadowOffsetY: 4
								}
							},
							detail: {
								show: false
							},
							title: {
								offsetCenter: [0, '30%']
							},
							data: [
								{
									value: 0
								}
							]
						},
						{
							name: 'minute',
							type: 'gauge',
							startAngle: 90,
							endAngle: -270,
							min: 0,
							max: 60,
							clockwise: true,
							axisLine: {
								show: false
							},
							splitLine: {
								show: false
							},
							axisTick: {
								show: false
							},
							axisLabel: {
								show: false
							},
							pointer: {
								icon: 'path://M2.9,0.7L2.9,0.7c1.4,0,2.6,1.2,2.6,2.6v115c0,1.4-1.2,2.6-2.6,2.6l0,0c-1.4,0-2.6-1.2-2.6-2.6V3.3C0.3,1.9,1.4,0.7,2.9,0.7z',
								width: 8,
								length: '70%',
								offsetCenter: [0, '8%'],
								itemStyle: {
									color: '#C0911F',
									shadowColor: 'rgba(0, 0, 0, 0.3)',
									shadowBlur: 8,
									shadowOffsetX: 2,
									shadowOffsetY: 4
								}
							},
							anchor: {
								show: true,
								size: 20,
								showAbove: false,
								itemStyle: {
									borderWidth: 15,
									borderColor: '#C0911F',
									shadowColor: 'rgba(0, 0, 0, 0.3)',
									shadowBlur: 8,
									shadowOffsetX: 2,
									shadowOffsetY: 4
								}
							},
							detail: {
								show: false
							},
							title: {
								offsetCenter: ['0%', '-40%']
							},
							data: [
								{
									value: 0
								}
							]
						},
						{
							name: 'second',
							type: 'gauge',
							startAngle: 90,
							endAngle: -270,
							min: 0,
							max: 60,
							animationEasingUpdate: 'bounceOut',
							clockwise: true,
							axisLine: {
								show: false
							},
							splitLine: {
								show: false
							},
							axisTick: {
								show: false
							},
							axisLabel: {
								show: false
							},
							pointer: {
								icon: 'path://M2.9,0.7L2.9,0.7c1.4,0,2.6,1.2,2.6,2.6v115c0,1.4-1.2,2.6-2.6,2.6l0,0c-1.4,0-2.6-1.2-2.6-2.6V3.3C0.3,1.9,1.4,0.7,2.9,0.7z',
								width: 4,
								length: '85%',
								offsetCenter: [0, '8%'],
								itemStyle: {
									color: '#C0911F',
									shadowColor: 'rgba(0, 0, 0, 0.3)',
									shadowBlur: 8,
									shadowOffsetX: 2,
									shadowOffsetY: 4
								}
							},
							anchor: {
								show: true,
								size: 15,
								showAbove: true,
								itemStyle: {
									color: '#C0911F',
									shadowColor: 'rgba(0, 0, 0, 0.3)',
									shadowBlur: 8,
									shadowOffsetX: 2,
									shadowOffsetY: 4
								}
							},
							detail: {
								show: false
							},
							title: {
								offsetCenter: ['0%', '-40%']
							},
							data: [
								{
									value: 0
								}
							]
						}
					]

		setInterval(&, 1s) do
			let date = new Date();
			let second = date.getSeconds();
			let minute = date.getMinutes() + second / 60;
			let hour = (date.getHours() % 12) + minute / 60;
			option.animationDurationUpdate = 300;
			myChart.setOption({
				series: [
					{
						name: 'hour',
						animation: hour !== 0,
						data: [{ value: hour }]
					},
					{
						name: 'minute',
						animation: minute !== 0,
						data: [{ value: minute }]
					},
					{
						animation: second !== 0,
						name: 'second',
						data: [{ value: second }]
					}
				]
			})
		
		myChart.setOption(option)

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

tag barchart
	def render
		<self>
			<div .flex .flex-col .items-center .justify-center .space-y-4 .mt-6>
				<div id="barchart" style="width:800px;height:400px;">
				<script type="application/javascript">
					'''var app = {};
					var chartDom = document.getElementById('barchart');
					var myChart = echarts.init(chartDom);
					var option;

					const posList = [
						'left',
						'right',
						'top',
						'bottom',
						'inside',
						'insideTop',
						'insideLeft',
						'insideRight',
						'insideBottom',
						'insideTopLeft',
						'insideTopRight',
						'insideBottomLeft',
						'insideBottomRight'
					];
					app.configParameters = {
						rotate: {
							min: -90,
							max: 90
						},
						align: {
							options: {
								left: 'left',
								center: 'center',
								right: 'right'
							}
						},
						verticalAlign: {
							options: {
								top: 'top',
								middle: 'middle',
								bottom: 'bottom'
							}
						},
						position: {
							options: posList.reduce(function (map, pos) {
								map[pos] = pos;
								return map;
							}, {})
						},
						distance: {
							min: 0,
							max: 100
						}
					};
					app.config = {
						rotate: 90,
						align: 'left',
						verticalAlign: 'middle',
						position: 'insideBottom',
						distance: 15,
						onChange: function () {
							const labelOption = {
								rotate: app.config.rotate,
								align: app.config.align,
								verticalAlign: app.config.verticalAlign,
								position: app.config.position,
								distance: app.config.distance
							};
							myChart.setOption({
								series: [
									{
										label: labelOption
									},
									{
										label: labelOption
									},
									{
										label: labelOption
									},
									{
										label: labelOption
									}
								]
							});
						}
					};
					const labelOption = {
						show: true,
						position: app.config.position,
						distance: app.config.distance,
						align: app.config.align,
						verticalAlign: app.config.verticalAlign,
						rotate: app.config.rotate,
						formatter: '{c}  {name|{a}}',
						fontSize: 16,
						rich: {
							name: {}
						}
					};
					option = {
						tooltip: {
							trigger: 'axis',
							axisPointer: {
								type: 'shadow'
							}
						},
						legend: {
							data: ['Forest', 'Steppe', 'Desert', 'Wetland']
						},
						toolbox: {
							show: true,
							orient: 'vertical',
							left: 'right',
							top: 'center',
							feature: {
								mark: { show: true },
								dataView: { show: true, readOnly: false },
								magicType: { show: true, type: ['line', 'bar', 'stack'] },
								restore: { show: true },
								saveAsImage: { show: true }
							}
						},
						xAxis: [
							{
								type: 'category',
								axisTick: { show: false },
								data: ['2012', '2013', '2014', '2015', '2016']
							}
						],
						yAxis: [
							{
								type: 'value'
							}
						],
						series: [
							{
								name: 'Forest',
								type: 'bar',
								barGap: 0,
								label: labelOption,
								emphasis: {
									focus: 'series'
								},
								data: [320, 332, 301, 334, 390]
							},
							{
								name: 'Steppe',
								type: 'bar',
								label: labelOption,
								emphasis: {
									focus: 'series'
								},
								data: [220, 182, 191, 234, 290]
							},
							{
								name: 'Desert',
								type: 'bar',
								label: labelOption,
								emphasis: {
									focus: 'series'
								},
								data: [150, 232, 201, 154, 190]
							},
							{
								name: 'Wetland',
								type: 'bar',
								label: labelOption,
								emphasis: {
									focus: 'series'
								},
								data: [98, 77, 101, 99, 40]
							}
						]
					};

					option && myChart.setOption(option);
					window.addEvenListener('resize', function () {
						myChart.resize();
					});'''

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
						<div .flex .flex-col .items-center .justify-center .space-y-4 .mt-6>
							<div id="basicchart" style="width:800px;height:400px;">
					<clock route='/clock'>
						<div .flex .flex-col .items-center .justify-center .space-y-4 .mt-6>
							<div id="clock" style="width:600px;height:600px;">
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
