RUN the following command for VOLUMES

`docker run --name ${container_name}
--rm -p 4000:4000
-v ${directing_to_path_where_Dockerfile_is_present}:/app
-v /app/node_modules ${image_name}`
