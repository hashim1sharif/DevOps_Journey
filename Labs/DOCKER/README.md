# Docker Learning

what is docker?

Docker revelutionzes the way applications are built, shipped and run by using containerzation technology.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/16042517c98227ed50798e67f5b698b83d091e0d/Screenshot%202025-08-28%20152519.png)

what is Containers?

Containers are lightweight, portable environments for running applications. They package an application along with all its dependencies, ensuring it runs consistently across different systems. Containers are isolated from each other and from the host system, which makes them efficient and easy to deploy.

![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/b25c137589040b7970ace10b8292e37b887755dd/Screenshot%202025-08-28%20142224.png)

The infrastructure repressents the physical of virtual hardware where everything runs.

The host operating system is the main OS installed on a physical or virtual machine. It manages hardware resources and runs applications like Docker or virtual machines.

Docker Engine: is the background service that enables you to create, run, and manage containers on your machine

        Benefits of Containers

Lightweight: Share the host OS, so they use less memory and start faster than virtual machines.

Portable: Run consistently across different environments (dev, test, production).

Scalable: Easy to replicate and scale horizontally for high availability.

Isolated: Each container runs independently, avoiding conflicts between apps.

Efficient CI/CD: Speeds up build, test, and deployment pipelines with clean, repeatable environments.

        Images and Containers

Images are read-only templates that contain all the necessary files, libraries, and dependencies to create and run containers.

    HOW DO YOU CREATE THESE IMAGES?

You create Docker images by writing a Dockerfile that specifies the environment and steps to set up your app, then run docker build to build the image from that file.
![Image alt](https://github.com/hashim1sharif/DevOps-Journey/blob/80cb909b21c3ff4953932904a2e97f5d2c2888c3/Screenshot%202025-08-28%20160438.png)

Containers are running instances of images. You can think of an image as a snapshot or recipe of an application, and a container as the dish you create from that recipe.

    The different between Containers and Virtual Machine

Containers share the host OS and are lightweight, fast to start, and great for running isolated applications. VMs include a full guest OS, are heavier, and provide stronger isolation but with more overhead.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/99f80f748802f4be25cf63c93f4aa62215f7bd18/Screenshot%202025-08-28%20162113.png)

    Docker Networking in DevOps

Docker networking is crucial in DevOps because it enables efficient and secure communication between microservices independent services running in separate containers. It supports different network types like bridge, host, and none, allowing flexibility in how services interact, regardless of where they run. Docker's networking model is also scalable, making it easy to connect and grow services as the application expands.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/aeb4c039a7743dac5c16e8f6c09473e8bd3673a3/Screenshot%202025-09-01%20172137.png)

    What is Docker Compose?

Docker Compose is a tool that allows you to define and run multi-container applications using a single YAML file. It simplifies managing services like web apps, databases, and caches by letting you configure them in one place and start them all with a single command. This is especially useful in DevOps for setting up, testing, and deploying complex applications consistently and efficiently.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/f0273782bd8e54bbdff138129899b98ca3ecea66/Screenshot%202025-09-01%20155826.png)

    Why is Docker Compose important in DevOps?

Docker Compose is crucial in DevOps because it simplifies the management of multi container applications. It allows you to define and run all your services like app, database, cache in a single YAML file, making deployment consistent and repeatable across environments. This speeds up development, testing, and CI/CD pipelines by ensuring environments are reproducible and easy to spin up or tear down.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/118075d36bbaec9a3528bb75973b3b2a1bdd56d7/Screenshot%202025-09-01%20160241.png)
