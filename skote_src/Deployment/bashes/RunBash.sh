nohup celery -A skote worker -l info -B &

python3 manage.py runserver 0.0.0.0:8000