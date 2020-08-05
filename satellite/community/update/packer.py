import tarfile
tar = tarfile.open("../update.tar.gz", "w:gz")
for name in ["epg_version", ".kodi"]:
    tar.add(name)
tar.close()
