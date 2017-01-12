module JobsHelper
	def ports
		["Shanghai", "Singapore", "Shenzhen", "Hong Kong", "Ningbo-Zhoushan", "Busan", "Qingdao", "Guangzhou", "Jebel Ali (Dubai)", "Tianjin", "Rotterdam", "Port Klang", "Kaohsiung", "Dalian", "Hamburg", "Antwerp", "Xiamen", "Los Angeles", "Tanjung Pelepas", "Long Beach"]
	end
	def distances
		[[0,2048.4303953852,654.0901451878,659.5632348065,83.8857827218,449.6669524084,294.7728183571,653.6449896814,3493.4626103551,515.1281865815,4831.1092451474,2035.2629305162,518.5307875447,460.3308811067,4611.9540837234,4860.2248503642,442.1370231621,5645.2255978074,2049.4186799399,5658.4484498253],[2048.4303953852,0,1400.1183786923,1393.5890579747,1997.0594505927,2466.5764250884,2271.3483737541,1412.8159520938,3160.260276438,2372.8598643141,5686.2578109849,175.8652625071,1594.3849780852,2449.6940298834,5475.7701193011,5695.198636016,1611.5497075227,7631.3066132232,14.6459389473,7642.6369042308],[654.0901451878,1400.1183786923,0,9.2271743823,613.4993942121,1091.8668281883,874.1958697843,56.2310057951,3226.4670835033,1003.2687728004,5029.9961220663,1381.3729068182,346.6881918739,1054.0256641387,4806.4474217767,5053.0122445773,250.6656024877,6294.8749832874,1400.35214921,6307.8485048523],[659.5632348065,1393.5890579747,9.2271743823,0,618.0778175265,1096.3718567945,881.3932822928,64.1533670058,3231.5431110281,1011.5231593883,5038.7874319789,1375.7411071566,344.243780973,1061.310650621,4815.2359762897,5061.7738989824,252.4600808849,6299.3816566019,1393.8934715808,6312.3282316227],[83.8857827218,1997.0594505927,613.4993942121,618.0778175265,0,478.3942617299,377.9793219231,619.7376447361,3536.4710832468,598.8183289151,4912.0535402958,1990.2201601136,444.5611986419,540.1379370572,4692.6087039266,4940.9655807183,385.5853321627,5681.376991883,1998.5563852541,5694.3581079404],[449.6669524084,2466.5764250884,1091.8668281883,1096.3718567945,478.3942617299,0,428.3827607785,1097.3232228827,3816.5569000218,615.2905734732,4837.1971263413,2465.8353473365,880.9605344537,422.2792024788,4625.8471274242,4870.1286915914,858.3224178812,5203.0167776692,2468.706199381,5215.9819563616],[294.7728183571,2271.3483737541,874.1958697843,881.3932822928,377.9793219231,428.3827607785,0,858.5404324595,3389.000104684,236.0186743396,4561.2100951929,2240.6114796646,804.3994585165,180.46295418,4343.7883711295,4591.402673949,703.6914960323,5480.6243914269,2270.9315416818,5494.5825015422],[653.6449896814,1412.8159520938,56.2310057951,64.1533670058,619.7376447361,1097.3232228827,858.5404324595,0,3174.9542267242,976.1879461961,4975.8110887281,1386.9400687909,391.0179752373,1037.2100772488,4752.2494008576,4998.6733289502,277.4891801726,6298.5966971007,1412.4623014467,6311.7556625097],[3493.4626103551,3160.260276438,3226.4670835033,3231.5431110281,3536.4710832468,3816.5569000218,3389.000104684,3174.9542267242,0,3218.1100813649,2797.8936607383,2984.6972930877,3558.5994001446,3424.5221218713,2638.8845666544,2789.6951882971,3411.2408195297,7252.5389894663,3145.7192743155,7269.0019386681],[515.1281865815,2372.8598643141,1003.2687728004,1011.5231593883,598.8183289151,615.2905734732,236.0186743396,976.1879461961,3218.1100813649,0,4325.815754545,2324.6983817164,997.9404024037,206.682687374,4108.1532507845,4355.8631664548,875.5779318758,5455.9713482937,2370.9928049236,5470.5675890769],[4831.1092451474,5686.2578109849,5029.9961220663,5038.7874319789,4912.0535402958,4837.1971263413,4561.2100951929,4975.8110887281,2797.8936607383,4325.815754545,0,5519.1984566625,5223.8475184365,4454.8598573452,223.5751608727,42.4449345562,5063.6710463858,4846.4747937041,5673.3718817524,4859.5354421586],[2035.2629305162,175.8652625071,1381.3729068182,1375.7411071566,1990.2201601136,2465.8353473365,2240.6114796646,1386.9400687909,2984.6972930877,2324.6983817164,5519.1984566625,0,1609.0489289114,2416.1896536196,5309.9850257746,5527.4864685203,1607.5273862588,7658.1931358323,161.4688494772,7670.312412799],[518.5307875447,1594.3849780852,346.6881918739,344.243780973,444.5611986419,880.9605344537,804.3994585165,391.0179752373,3558.5994001446,997.9404024037,5223.8475184365,1609.0489289114,0,977.3248004048,5001.3732906063,5249.7546031431,164.7484623197,6049.1442090807,1597.493106047,6061.275966069],[460.3308811067,2449.6940298834,1054.0256641387,1061.310650621,540.1379370572,422.2792024788,180.46295418,1037.2100772488,3424.5221218713,206.682687374,4454.8598573452,2416.1896536196,977.3248004048,0,4239.9689442904,4486.3319080203,882.6401494602,5318.8897417344,2449.0879019152,5333.0735197757],[4611.9540837234,5475.7701193011,4806.4474217767,4815.2359762897,4692.6087039266,4625.8471274242,4343.7883711295,4752.2494008576,2638.8845666544,4108.1532507845,223.5751608727,5309.9850257746,5001.3732906063,4239.9689442904,0,248.6415900739,4840.9642893986,4912.2621158892,5463.0404503273,4925.9867746013],[4860.2248503642,5695.198636016,5053.0122445773,5061.7738989824,4940.9655807183,4870.1286915914,4591.402673949,4998.6733289502,2789.6951882971,4355.8631664548,42.4449345562,5527.4864685203,5249.7546031431,4486.3319080203,248.6415900739,0,5089.2071640308,4874.4826159863,5682.2294006281,4887.4393956506],[442.1370231621,1611.5497075227,250.6656024877,252.4600808849,385.5853321627,858.3224178812,703.6914960323,277.4891801726,3411.2408195297,875.5779318758,5063.6710463858,1607.5273862588,164.7484623197,882.6401494602,4840.9642893986,5089.2071640308,0,6057.7359520392,1613.1254332206,6070.4381166934],[5645.2255978074,7631.3066132232,6294.8749832874,6299.3816566019,5681.376991883,5203.0167776692,5480.6243914269,6298.5966971007,7252.5389894663,5455.9713482937,4846.4747937041,7658.1931358323,6049.1442090807,5318.8897417344,4912.2621158892,4874.4826159863,6057.7359520392,0,7636.304680165,17.0837240382],[2049.4186799399,14.6459389473,1400.35214921,1393.8934715808,1998.5563852541,2468.706199381,2270.9315416818,1412.4623014467,3145.7192743155,2370.9928049236,5673.3718817524,161.4688494772,1597.493106047,2449.0879019152,5463.0404503273,5682.2294006281,1613.1254332206,7636.304680165,0,7647.6990057297],[5658.4484498253,7642.6369042308,6307.8485048523,6312.3282316227,5694.3581079404,5215.9819563616,5494.5825015422,6311.7556625097,7269.0019386681,5470.5675890769,4859.5354421586,7670.312412799,6061.275966069,5333.0735197757,4925.9867746013,4887.4393956506,6070.4381166934,17.0837240382,7647.6990057297,0]]
	end
	def available job
		all_boats = Boat.all
		@available_boats =[]
		all_boats.each do |boat|
			boat.jobs.each do |current|
				if current.destination == job.origin
					boat.cargo -= current.amount
				end
			end
			if boat.capacity - boat.cargo > job.amount
				@available_boats.push(boat)
			end
		end
		boatsorter = []
		@available_boats.each_with_index do |boat, i|
			boatsorter[i] = {
				thisboat: boat,
				proximity: distances[ports.find_index(boat.location)][ports.find_index(job.origin)]
			}
		end
		boatsorter.sort_by! { |k| k[:proximity] }
		return_array = []
		boatsorter.each do |b|
			return_array.push(b[:thisboat])
		end
		return_array
	end
	def test_msg
		"It worked"
	end
end
