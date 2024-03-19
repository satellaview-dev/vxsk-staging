# i personally run this with powershell 7 under vscode...
#READ THIS BEFORE RUNNING...

# Xmx is the memory maximum argument for java. change this value to the amount of ram you need allocated to the JVM (java virtual machine), and use either G or M to specify if you want it to use gigabytes or megabytes respectively.
$memMax = "-Xmx12G"
# Xms is the memory minimum argument for java. similar to -Xmx,
$memMin = "-Xms2500M"
# this variable, if removed, makes the server spawn a java window showing server console, players, and ram usage. typically unneeded if you use the workspace (or the terminal, like a normal human).
$guiDisable = "-nogui"
# this variable tells the script where to find the windows specific java arguments needed to run the Forge server.
$winArgs = "libraries\net\minecraftforge\forge\1.19.3-44.1.23\win_args.txt"

# This is the main command to launch the server. 'java', well, calls java. the rest of the variables are arguments to enforce memory limits, tell the JVM what to load before everything else, and the last one spawns a small overview window.
java $memMax $memMin @$winArgs $guiDisable  %*
Pause