jar := "target/jlox-1.0-SNAPSHOT.jar"

alias lox := run

# Display all avaliable recipes
help:
    @just --list --unsorted

# Build the interpreter
build:
    mvn package

# Run the interpreter
run:
    java -jar {{ jar }}

# Generate the AST Classes
generate-ast:
    java -cp {{ jar }} com.craftinginterpreters.tool.GenerateAst src/main/java/com/craftinginterpreters/lox

# Clean up
clean:
    mvn clean
