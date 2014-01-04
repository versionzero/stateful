
# Stateful

This project is intended to provide a way to save, restore and quickly
swap between sets of application resume states.

Starting with Lion (10.8), OS X began providing an application resume
option. When resumed, an application's windows, documents and
positions would be automatically restored. This allows a user to
resume working with their computer after they have restarted the
machine.

The resume data was initially stored in:

    ~/Library/Saved Application State/<application id>.savedState/

However, with the introduction of sand-boxed applications, some
applications resume data is stored in:

    ~/Library/Containers/<application id>/Data/Library/Saved Application State/<application id>.savedState/

Fortunately, it appears that OS X maintains symlinks to the latter
location in the former. Though it is not clear if this is always the
case now or going forward.
