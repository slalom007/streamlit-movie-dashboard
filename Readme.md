# Interactive Movie Dashboard with Streamlit 🎬

## Project Description

This project is an interactive web application built with Python and Streamlit for exploring The Movie Database (TMDb) dataset. It allows users to dynamically filter a large movie dataset by year range and genre, and view the results in a clean, formatted table along with summary visualizations.

The application is deployed and publicly accessible via Streamlit Community Cloud. It can also be run locally using Docker.

**Live Demo:** https://app-movie-dashboard-3wx6nqb8nubmqqixryiv6k.streamlit.app/

---

## Features

- **Interactive Filtering:** Users can select a specific year range with a slider and choose one or more genres from a multi-select box.
- **Dynamic Data Display:** The main data table updates in real-time based on the user's selections.
- **Data Formatting:** Numerical columns (`budget`, `revenue`) are formatted for readability (e.g., `1,000,000`), and `0` values are replaced with "No data available". Complex data structures (`genres`) are parsed into a clean, human-readable format.
- **Dynamic Visualizations:** The application generates and displays two charts that update based on the filtered data:
    1.  A bar chart showing the **Top 10 highest-rated movies**.
    2.  A line chart showing the **number of movies released per year** within the selected period.

---

## Technologies Used

- **Python**
- **Streamlit** (for the web application framework)
- **Pandas** (for data manipulation and cleaning)
- **Matplotlib** (for generating plots)
- **Docker** (for containerization)

---

## How to Run Locally

There are two ways to run this application on your local machine:

### Option 1: Running with Python Virtual Environment (Recommended for Development)

1.  Clone this repository to your local machine.
2.  Install the required libraries:
    ```bash
    pip install -r requirements.txt
    ```
3.  Run the Streamlit application:
    ```bash
    streamlit run app.py
    ```

### Option 2: Running with Docker (Recommended for Production-like Environment)

1.  Clone this repository to your local machine.
2.  Make sure you have Docker Desktop installed and running.
3.  **Build the Docker Image:** Open a terminal in the project directory and run:
    ```bash
    docker build -t movie-dashboard .
    ```
4.  **Run the Docker Container:** Once the image is built, run the container with:
    ```bash
    docker run -p 8501:8501 movie-dashboard
    ```
5.  Open your web browser and navigate to `http://localhost:8501`.