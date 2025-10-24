- name: Build Docker image
  run: |
    docker build -t ${{ vars.DOCKER_USERNAME }}/my-app:latest ./flask-app
    docker tag ${{ vars.DOCKER_USERNAME }}/my-app:latest ${{ vars.DOCKER_USERNAME }}/my-app:${SHA}
