# Line Delete

Deletes, in reverse order, lines from file1 as specified in file2.

This comes up a bunch when working with banner.

**Please make sure your line endings do NOT contain CR (convert to UNIX line endings)** 

This happens when the files go in and out of windows apps.

## Testing

./line_d.sh test1 test2

That will show you how it works.

./restore_test.sh will put it all back.


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

