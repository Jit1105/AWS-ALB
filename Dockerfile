FROM python:3.12-slim

WORKDIR /app/jit/

COPY requirements.txt /app/jit/

RUN pip3 install --no-cache-dir -r requirements.txt

COPY main.py /app/jit/

EXPOSE 8001

# Docker directly executes Uvicorn inside the working directory
CMD ["python" ,"main.py"]
