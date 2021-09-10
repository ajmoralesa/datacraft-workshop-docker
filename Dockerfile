FROM python:3.7-slim

# equivqlent to cd in unix shell
WORKDIR /app

EXPOSE 8501

# installation des requirements
ADD ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt --no-cache-dir

ADD ./css /app/css/
ADD ./utils/ /app/utils/
ADD ./models/ /app/models/
ADD ./images/ /app/images/

ADD datacraft.py /datacraft.py

CMD  ["streamlit", "run", "/datacraft.py"]