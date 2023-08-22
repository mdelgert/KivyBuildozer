https://github.com/ArtemSBulgakov/buildozer-action
https://hub.docker.com/r/kivy/buildozer

docker pull kivy/buildozer

docker run --volume "$(pwd)":/home/mdelgert/source/KivyBuildozer/test_app docker pull buildozer --version

# Check configuration tokens
# `android.archs` not detected, instead `android.arch` is present.
# `android.arch` will be removed and ignored in future.
# If you're seeing this error, please migrate to `android.archs`.
# Ensure build layout