# JAVAC - Java Compiler
#########################
# COMPILE A PACKAGE
javac -classpath “<SOURCE>” *.java

# COMPILE MYPROGRAM
javac –classpath “<SOURCE1>;<SOURCE2>” MyProgram.java


# JAR - Java Archive Tool
###########################
# Create jar file
jar cf <MANIFEST> <JAR-FILE> <SOURCE> 

# Update jar file
jar uf <MANIFEST> <JAR-FILE> <SOURCE>

# Extract jar file
jar xf <JAR-FILE> <SOURCE>

# List table of contents of jar file
jar tf <JAR-FILE> <SOURCE>

# Add index to jar file
jar i <JAR-FILE>

# JAVADOC - API Documentation Generator
########################################
javadoc -d <DESTINATION> <SOURCE>
