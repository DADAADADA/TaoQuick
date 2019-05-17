isEmpty(TaoVersionPri) {
    TaoVersionPri=1
    # current commit hash
    REVISION=$$system("git rev-parse HEAD")
    REVISION=$$str_member($${REVISION}, 0, $$num_add(10, -1))

    # last tag
    Ver=$$system("git describe --abbrev=0 --tags")
    VerList =$$split(Ver, .)
    MAJ = $$take_first(VerList)
    MIN = $$take_first(VerList)
    PAT = $$take_first(VerList)
    equals(TEMPLATE, lib) {
        CONFIG += skip_target_version_ext
        VER_MAJ = $${MAJ}
        VER_MIN = $${MIN}
        VER_PAT = $${PAT}
        VERSION = $${Ver}
    }
    DEFINES += TaoREVISION=\"\\\"$${REVISION}\\\"\"
    DEFINES += TaoVer=\"\\\"$${Ver}\\\"\"
    DEFINES += TaoMAJ=$${MAJ}
    DEFINES += TaoMIN=$${MIN}
    DEFINES += TaoPAT=$${PAT}
    DEFINES += TaoDATETIME=\"\\\"$${_DATE_}\\\"\"
    message($${DEFINES})
}

