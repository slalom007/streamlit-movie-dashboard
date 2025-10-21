# Step 1: Select the base image
# We are using an official, lightweight Python 3.11 base.
FROM python:3.11-slim

# Step 2: Set the working directory
# Create an /app folder inside the container and make it our working directory.
WORKDIR /app

# Step 3: Install dependencies
# We copy only the requirements.txt first to leverage Docker's cache for this slow step.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy the application code
# Copy the rest of the project files (app.py, movies_sample.csv) into the container.
COPY . .

# Step 5: Expose the port
# Tell Docker that the container will listen on port 8501 (used by Streamlit).
EXPOSE 8501

# Step 6: Define the startup command
# This is the command that runs when the container starts.
CMD ["streamlit", "run", "app.py"]