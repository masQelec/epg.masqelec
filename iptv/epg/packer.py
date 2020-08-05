import tarfile
tar = tarfile.open("../epg.tar.gz", "w:gz")
for name in ["config", "epg_version", "settings.xml", "tv_grab_masqelec", "input", "channel"]:
    tar.add(name)
tar.close()
