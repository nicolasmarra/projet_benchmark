# Utilisation de l'image python officielle comme base
FROM python:3.9-slim


# Installation des dépendances
RUN pip install --no-cache-dir \
    jupyter \
    psycopg2-binary \
    requests \
    matplotlib

# Créer un répertoire pour les notebooks
WORKDIR /notebooks


# Exposer le port 8888 pour accéder à Jupyter
EXPOSE 8888

# Démarrer le serveur jupyter notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]