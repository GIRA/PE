file i/o
exportDataToFile
[self costume renderedMorph saveCSVFile: fileName separator: separator] on: Error do: [:err| ^self inform: err description]