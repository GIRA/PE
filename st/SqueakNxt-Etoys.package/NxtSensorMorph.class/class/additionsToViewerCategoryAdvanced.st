as yet unclassified
additionsToViewerCategoryAdvanced
	^ #(
		#'lego nxt-advanced' 
		#(
			#(slot rawValue 'Sensor''s raw A/D value (device dependent)' Number readOnly Player getRawValue unused unused)
			#(slot normalizedValue 'Sensor''s normalized A/D value (type dependent; range: 0 - 1023)' Number readOnly Player getNormalizedValue unused unused)
			#(slot scaledValue 'Sensor''s scaled value (mode dependent)' Number readOnly Player getScaledValue unused unused)
			)
		)