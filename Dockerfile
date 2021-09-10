FROM python:3.7-slim

# equivqlent to cd in unix shell
WORKDIR /

EXPOSE 8501

# installation des requirements
ADD ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt --no-cache-dir

ADD ./css /css/
ADD ./utils/ /utils/
ADD ./models/ /models/
ADD ./images/ /images/

ADD datacraft.py /datacraft.py

CMD  ["streamlit", "run", "/datacraft.py"]