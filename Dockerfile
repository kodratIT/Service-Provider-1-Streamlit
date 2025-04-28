# Gunakan base image Python yang ringan
FROM python:3.11-slim

# Set working directory di dalam container
WORKDIR /app

# Salin semua file ke /app
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Buka port 8501 (port default Streamlit)
EXPOSE 8501

# Jalankan aplikasi Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
