baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
				
		spec 
			package: #'HnStream';
			group: 'default' with: #('core');
			group: 'core' with: #('HnStream')
	
	]