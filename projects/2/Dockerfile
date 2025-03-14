# Use the official OpenJDK image
FROM openjdk:17-slim

# Install curl to download the Kotlin compiler
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Download and install Kotlin compiler
RUN curl -s https://get.sdkman.io | bash
RUN echo "source \$HOME/.sdkman/bin/sdkman-init.sh" >> ~/.bashrc
RUN bash -c "source ~/.bashrc && sdk install kotlin"

# Set the working directory in the container
WORKDIR /app

# Copy the Kotlin source code into the container
COPY Hello.kt .

# Compile the Kotlin program
RUN kotlinc Hello.kt -include-runtime -d Hello.jar

# Set the default command to run the program when the container starts
ENTRYPOINT ["java", "-jar", "Hello.jar"]
