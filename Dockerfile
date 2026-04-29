FROM python:3.9
WORKDIR /code
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["voila", "--port=7860", "--no-browser", "--Voila.ip=0.0.0.0", "Final Civic Engagement Clean .ipynb"]
