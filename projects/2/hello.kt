fun main(args: Array<String>) {
    if (args.size < 1) {
        println("Please provide a name as a command-line argument.")
        return
    }

    val name = args[0]

    // Default number of times to print is 1 if not provided
    val timesToPrint = if (args.size > 1) args[1].toIntOrNull() ?: 1 else 1

    // Print "Hello <name>" the specified number of times
    repeat(timesToPrint) {
        println("Hello $name")
    }
}
