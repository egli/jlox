# grab the version from the pom.xml
version := `xmllint --xpath "//*[local-name()='project']/*[local-name()='version']/text()" pom.xml`
jar := "target/jlox-" + version + ".jar"

alias lox := run

# Display all avaliable recipes
[private]
help:
    @just --list --unsorted

# Build the interpreter
build:
    mvn package

# Run the interpreter
run:
    @java -jar {{ jar }}

# Generate the AST Classes
generate-ast:
    java -cp {{ jar }} com.craftinginterpreters.tool.GenerateAst src/main/java/com/craftinginterpreters/lox

# Pretty print some lox code using the visitor pattern
pretty-print:
    java -cp {{ jar }} com.craftinginterpreters.lox.AstPrinter src/main/java/com/craftinginterpreters/lox

# Clean up
clean:
    mvn clean
