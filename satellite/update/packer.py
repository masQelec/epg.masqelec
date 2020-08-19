import tarfile
tar = tarfile.open("../update.tar.gz", "w:gz")
for name in [".kodi"]:
    tar.add(name)
tar.close()
