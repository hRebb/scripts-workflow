# Use a base image with Nix pre-installed
FROM nixos/nix:latest

# Set environment variables (customize as needed)
ENV USER gitpod
ENV HOME /home/gitpod

# Switch to a non-root user (gitpod) for better security
USER $USER
WORKDIR $HOME

# Install Nix channels and update them
RUN nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
RUN nix-channel --update

# (Optional) Add other Nix channels if needed
RUN nix-channel --add https://github.com/your-channel/repo/archive/branch.tar.gz your-channel

# (Optional) Install additional packages using Nix
RUN nix-env -iA nixpkgs.package-name

# (Optional) Set up Nix environment variables
ENV NIX_PATH=nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixpkgs

# (Optional) Set up user-specific Nix profile
RUN nix-env --profile /nix/var/nix/profiles/per-user/$USER/profile --set $HOME/.nix-profile

# (Optional) Add Nix profile to user environment
ENV NIX_PROFILES=$HOME/.nix-profile

# (Optional) Configure user shell to load Nix environment
RUN echo ". /nix/var/nix/profiles/default/etc/profile.d/nix.sh" >> $HOME/.bashrc

# (Optional) Perform any other setup you need for your Nix environment

# CMD or ENTRYPOINT to run your application or shell