# Line Delete

Deletes, in reverse order, lines from file1 as specified in file2. The script will show you how many lines in the original file, the updated file, and what the difference is.

(This comes up a bunch when working with banner.)

**Please make sure your line endings do NOT contain CR (convert to UNIX line endings)** 

This happens when the files go in and out of windows apps.

## Testing

    ./line_d.sh test1 test2

## Restore the test files

    ./restore_test.sh

Example:

    ./lined.sh test1 test2
    backing up files
    mkdir: bkp: File exists
    running the delete process
    Success!!!

    The updates have been made to test1.
           4 test1

    Your original data file has been moved to  test1.orig.
           6 test1.orig

    The difference is:
           2

