FROM apache/airflow:2.1.0
RUN pip install vmwc \
   && pip install ldap3 \
   && pip install pywinrm \
   && pip install pymongo