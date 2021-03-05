import tarfile
tar = tarfile.open("../epg.tar.gz", "w:gz")
for name in [".kodi"]:
    tar.add(name)
tar.close()
