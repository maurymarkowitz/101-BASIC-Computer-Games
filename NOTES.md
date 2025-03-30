Notes on the OCR process
========================

Traditional OCR programs are generally useless for scanning code, with, at best, 50% of the characters being scanned correctly. On poorer quality prints, like these, the error rate was much closer to 90%. Much of the problem appears to be due to OCRs not being able to be told the text is monospaced, and the code splitting or joining glyphs. The LLMs add a grammar layer to the process that helps tremendously. By telling the LLM you are scanning BASIC code, which is as simple as uploading a screen capture and asking it to "ocr this basic code", it limits the conversion to ASCII and knows that the thing that looks like "PRUNT" is actually "PRINT".

The scanning process is still subject to some of the basic issues that inflict all OCR's, like confusing 0 for O or 8 and getting it wrong where the context doesn't solve it - so it will never make a line number `1O80`, but it may change a variable name from `S0` to `SO`. They also have other problems if the lines are not perfectly aligned and so forth. Overall, it is something on the order of 95% accurate, which made this effort possible.

When you read the following list, it might seem that using the OCR and LLM is not worthwhile due to the potential errors, which are subtle and likely to make the logic incorrect. But once you get used to looking for the issues in likely places, I found it really fast compared to typing it in all by hand. And given all the typing, it seems just as likely to end up with as many errors from simple typos.

* One curiosity of the LLMs is that they will randomly switch some logical comparisons found in IF lines. The most common is to replace `<>` with `=` and vice versa, but it will also switch `>` and `<` and similar replacements. These are *very* easy to overlook, so it is the first thing to check for. There likely there are some remaining logic problems in these listings as a result of missed replacements.

* The LLMs understand the concept of line numbers, and that they have to be sequential. Periodically they will read the number incorrectly and then renumber all of the following lines to new, larger, values. They will insist that they have not done this and no prompt appears to fix it. These can only be seen and fixed by hand.

* DEC dialects initially used `\` as the statement separator, instead of the more common `:`. The LLMs love to "fix" that for you and convert it to the colon. Some programs, like BOMBER, use both, so there may be some that have been converted incorrectly here.

* The LLMs all add or remove semicolons in `PRINT` statements seemingly at random, and these need to be checked. They have no effect on the running of the program, but the goal in this case is to exactly match the original source code.

* All OCR programs, including the LLMs, get confused about whitespace in strings and will generally never get it right. They will also add or remove runs of characters like `.....` coming out as `.`, because *obviously* that's what they meant to type. One particularly common modification is to remove the double spaces that used to be almost universal after periods. Generally speaking, string constants have to be checked by hand every time, and any string of the same character should be counted out.

* There are also cases where the LLM will "fix" the spelling and grammar for you, like when it replaced "suitable" with "acceptable" and insisted on putting single-quotes around the word "BUZZWORD". These can be very difficult to notice just by reading the strings, your brain will simply skip over them. You will, however, notice that the lines do not line up with the ones above and below, which is the easiest way to spot these issues. This is best handled by looking at where closing quotes are in relation to the characters above and below.

Notes on the code and the programs
==================================

* BASICs generally ignore any whitespace in the source code, outside string constants. This means that `GO TO` is allowed, and so is `PR INT`. Authors would often remove spaces from their code to make the file smaller. This can result in code that is extremely difficult to read, like AWARI. In other cases the spacing ends up almost entirely random, like in BOAT. These listings attempt to retain the spacing as it was in the original listing.

* You'll find all sorts of spelling and grammar mistakes in the code, these are in the originals and have been retained as-is.

* Some of the programs, like BOWL and BLKJAC, show what appears to be extra spaces inserted at the front of the line between the line number and the statements. This was sometimes used to indent loops and such, especially in Dartmouth code, but it is not clear that this is always deliberate in these examples. BLKJAC does appear to be "correctly spaced", but BOWL is random and some of the lines suggest this is just a side-effect of the printer. These spaces have been retained in this code.

* BOAT uses ASCII graphics that require precise spacing to look right, but the original listing is too wide for the printer which results in any characters off the right side being printed in the same location. All of the "graphics" at the bottom are a best-guess as to the spacing.

* BULL also runs off the end of the line, the formula on line 1390 is a best-guess based on the two-line version found in BCG.

* The code for BUNNY is missing in the original book. It can be found in BCG, but I did not want to copy that version here.

* BUZZWD scanned poorly for no obvious reason. It removed spaces, changed words, renumbered, added entirely new lines of code, switch the sense of the comparisons and just about everything else it could do.

* SPCWAR has lines around the 4400 mark that are spaced out vertically in the original listing. It appears this was done by inserting a line feed character and then spaces. It was not clear how this could be maintained in these listings without causing problems on one platform or another, so these lines have been run together.
