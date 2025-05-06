package com.craftinginterpreters.lox;

class RuntimeError extends RuntimeException {
    final Token token;

    RuntimeError(Token token, String message) {
	super(message);
	this.token = token;
    }

}

class Break extends RuntimeException {
    final Token token;

    Break(Token token) {
	super();
	this.token = token;
    }
}
