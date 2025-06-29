# 1. Python
# 2. Packages
# 3. All the files in the currect directory
# 4. Execution files: Streamlit run app.py

# Pull base image 
FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app.py"]