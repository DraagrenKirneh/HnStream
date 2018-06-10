baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
				
		spec 
			package: #'HnStream';
			package: #'HnStream-Tests';
			group: 'default' with: #('core' 'tests');
			group: 'core' with: #('HnStream');
			group: 'tests' with: #('HnStream-Tests') 
	
	]