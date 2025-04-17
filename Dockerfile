FROM python:3.11-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY SimpleTimeService.py .

FROM python:3.11-slim 
WORKDIR /app
COPY --from=builder /usr/local/lib/python3.11 /usr/local/lib/python3.11
COPY --from=builder /usr/local/bin /usr/local/bin
COPY --from=builder /app/SimpleTimeService.py /SimpleTimeService.py
ENV PYTHONPATH=/root/.local
CMD ["python3", "/SimpleTimeService.py"]