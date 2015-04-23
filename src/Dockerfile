FROM crux/python:onbuild

EXPOSE 8000/tcp

RUN python mysite/manage.py migrate

ENTRYPOINT ["./mysite/manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
