# Statistical Reporting Assessment

## License
Copyright (c) Ian Hussey 2015 (ian.hussey@ugent.be)

Released under the GPLv3+ open source license. 

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

## Version
1.0

## Description & purpose
Even if your data and code are publicly available, you can still fall at the last hurdle by not reporting the correct numbers in a manuscript. This script assesses whether the analyses reported in a manuscript have been reported correctly and are APA compliant using the [`statcheck`](http://rpubs.com/michelenuijten/202816) library.

Specifically:

1. extracts all the analyses reported in your manuscript
2. takes the test statistics and df and recomputes p values
3. compares the recomputed p value with the p value reported in the manuscript to check for reporting errors, and also for APA compliance.

Also useful when reviewing others' manuscripts! 

## Input
Receives `.txt` files as input. You can export your `.docx` to `.txt` inside Word.

NB On Word for Mac, you must choose Other Encoding>"Unicode 7.0 UTF 8.0" so that linebreaks and greek letters are saved correctly.


