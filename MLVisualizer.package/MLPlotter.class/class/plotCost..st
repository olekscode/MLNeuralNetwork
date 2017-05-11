as yet unclassified
plotCost: cost
	| b composer |
	
	composer := RTComposer new.
	
	"TODO: Replace it with something like self class"
	b := MLPlotter lineplot: cost.
	
	b axisX
		title: 'Epochs';
		numberOfTicks: 10;
		noLabel.
		
	b axisY title: 'Cost'.
	
	b view: composer view.
	b build.
	composer group: #cost.
	
	composer setGeneralTitle: 'Cost Function'.
	^ composer view