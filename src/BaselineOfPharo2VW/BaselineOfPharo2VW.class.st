Class {
	#name : #BaselineOfPharo2VW,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharo2VW
}

{ #category : #baselines }
BaselineOfPharo2VW >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: #Pharo2VW with: [ spec requires: #('XMLWriter' 'XMLParser' 'XPath') ];
				package: #'Pharo2VW-Tests' with: [ spec requires: #('Famix' 'Pharo2VW') ];
				package: #'Pharo2VW-TestResources' with: [ spec requires: #('Pharo2VW')];
    	baseline: 'Famix'
    	with: [ spec repository: 'github://jecisc/Famix:v2.x.x/src' ];
    	baseline: 'XMLWriter'
    	with: [ spec repository: 'github://pharo-contributions/XML-XMLWriter:2.9.x/src'];
    	baseline: 'XMLParser'
    	with: [ spec repository: 'github://pharo-contributions/XML-XMLParser:3.5.x/src'];
    	baseline: 'XPath'
    	with: [ spec repository: 'github://pharo-contributions/XML-XPath/src' ] .
			spec
				group: 'default' with: #('core' 'tests');
				group: 'core' with: #('Pharo2VW');
				group: 'tests' with: #('Pharo2VW-Tests' 'Pharo2VW-TestResources') ]
]
