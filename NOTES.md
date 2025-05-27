Notes on the OCR process
========================

Traditional OCR programs are generally useless for scanning code, with, at best, 50% of the characters being scanned correctly. On poorer quality prints, like these, the error rate was much closer to 90%. Much of the problem appears to be due to OCRs not being able to be told the text is monospaced, and the system then splitting or joining glyphs.

The LLMs add a grammar layer to the process that helps tremendously. By telling the LLM you are scanning BASIC code, which is as simple as uploading a screen capture and asking it to "ocr this basic code", it limits the conversion to ASCII, understand that its a single column, and knows that the thing that looks like "PRUNT" is actually "PRINT". It ends up on the order of 95% accurate, which made this effort possible.

The scanning process is still subject to some of the basic issues that inflict all OCR's, like confusing 0 for O or 8 and getting it wrong where the context doesn't solve it - so while it will never change a line number from `1080` to `1O80`, it may change a variable name from `S0` to `SO` or a line number from `500` to `580`. They also have other problems if the lines are not perfectly aligned, copying text from one line into another, and similar scanning-related issues.

When you read the following list, it might seem that using the OCR and LLM is not worthwhile due to the potential errors, which are subtle and likely to make the logic incorrect. But once you get used to looking for the issues in likely places, I found it really fast compared to typing it in all by hand. And given all the typing that would have been required, it seems likely that it would have ended up with just as many errors due to simple typos.

* One curiosity of the LLMs is that they will randomly switch some logical comparisons found in IF lines. The most common is to replace `<>` with `=` and vice versa, but it will also switch `>` and `<=` and similar replacements. These are *very* easy to overlook, so it is the first thing to check for. It is likely there are some remaining logic problems in these listings as a result of missed replacements.

* The LLMs understand the concept of line numbers, and that they have to be sequential. Periodically they will read one of the numbers incorrectly and then renumber all of the following lines to new, larger, values. They will insist that they have not done this and no prompt appears to fix it. These can only be seen and fixed by hand, or by re-scanning a smaller clip of the original code.

* DEC dialects initially used `\` as the statement separator, instead of the later and more common `:`. The LLMs love to "fix" that for you and convert it to the colon. Some programs, like BOMBER, use both, so there may be some that have been converted incorrectly here. They generally do understand it better if you tell it "this dialect uses \ to separate statements instead of :".

* The LLMs all add or remove semicolons in `PRINT` statements seemingly at random, and these need to be checked. They have no effect on the running of the program, but the goal in this case is to exactly match the original source code, so look for these.

* All OCR programs, including the LLMs, add or remove runs of characters like `.....` coming out as `.`, because *obviously* that's what they meant to type. This is quite common where spaces are being used in string constants to line things up, and they also tend to remove single leading or trailing spaces. Another common modification is to remove the double spaces that used to be almost universal after periods. Generally speaking, string constants have to be checked by hand every time, and any string of the same character should be counted out to make sure the same number are in the resulting code.

* There are also cases where the LLM will "fix" the spelling and grammar for you, like when it replaced "suitable" with "acceptable" and insisted on putting single-quotes around the word "BUZZWORD". These can be very difficult to notice just by reading the strings, your brain will simply skip over them. You will, however, notice that the lines do not line up with the ones above and below, which is the easiest way to spot these issues. This problem, and the one above, is best handled by looking where closing quotes are in relation to the characters above and below.

Notes on the code and the programs
==================================

* You'll find all sorts of spelling and grammar mistakes in the code, these are in the originals and have been retained as-is.

* BASICs generally ignore any whitespace in the source code, outside string constants. This means that `GO TO` is allowed, and so is `PR INT`. Authors would often remove spaces from their code to make the file smaller. This can result in code that is extremely difficult to read, like AWARI. In other cases the spacing ends up almost entirely random, like in BOAT. This archive attempts to retain the spacing as it was in the original listing.

* AWARI is incomplete. It is supposed to have a DATA statement at the top that sets up the computer player's board, but it is missing in the original code and the remaining 0 means "there is no data". As a result, the program attempts to loop from 1 to 0, which causes a READ of non-existant data. Note that a compiled version like Dartmouth would not do this and the program would not produce a READ WITH NO DATA sort of error, whereas almost every interpeted version will.

* Some of the programs, like BOWL and BLKJAC, show what appears to be extra spaces inserted at the front of the line between the line number and the statements. This was sometimes used to indent loops and such, especially in Dartmouth code, but it is not clear that this is always deliberate in these examples. BLKJAC does appear to be "correctly spaced", but BOWL is random and some of the lines lack the spacing which suggests this is just a side-effect of the printer. These spaces have been retained in this code anyway.

* BOAT uses ASCII graphics that require precise spacing to look right, but the original listing is too wide for the printer which results in any characters off the right side being printed in the same location. All of the "graphics" at the bottom are a best-guess as to the spacing. BULL also runs off the end of the line, the formula on line 1390 is a best-guess based on the two-line version of the same formula found in BCG.

* The code for BUNNY is missing in the original book. It can be found in BCG, but I did not want to copy that version here. The code for SNOOPY is also missing.

* BUZZWD scanned poorly for no obvious reason. It removed spaces, changed words, renumbered the lines, added entirely new lines of code, switched the sense of the comparisons and just about everything else it could do. If anyone wants to test a new scanning algo, this is the one to try.

* CANAM has some vertical spacing in PRINT statements that has been removed. The printer makes O and Q very similar, and there are almost certainly problems with O$ vs. Q$ that need to be fixed.

* SPCWAR has lines around the 4400 mark that are spaced out vertically in the original listing. It appears this was done by inserting a line feed character and then spaces. It was not clear how this could be maintained in these listings without causing problems on one platform or another, so these lines have been run together.
