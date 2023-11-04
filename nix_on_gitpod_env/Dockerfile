# Use a base image with Nix pre-installed
FROM nixos/nix:latest

# Set environment variables (customize as needed)
ENV USER gitpod
ENV HOME /home/gitpod

# Switch to a non-root user (gitpod) for better security
USER $USER
WORKDIR $HOME