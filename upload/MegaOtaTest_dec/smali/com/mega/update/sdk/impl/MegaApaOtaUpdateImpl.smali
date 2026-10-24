.class public Lcom/mega/update/sdk/impl/MegaApaOtaUpdateImpl;
.super Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;
.source "MegaApaOtaUpdateImpl.java"


# static fields
.field private static final ECU_NAME:Ljava/lang/String; = "apa"

.field private static final TAG:Ljava/lang/String; = "MegaApaOtaUpdateImpl"

.field private static final TOPIC_TAG:Ljava/lang/String; = "apa"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const-string v0, "apa"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public triggerUpgrade(Ljava/io/File;Landroid/os/Bundle;)I
    .locals 18
    .param p1, "f"    # Ljava/io/File;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 31
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "childId"

    const-string v3, "/ota/package"

    const-string v4, "/ota/package/"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "triggerUpgrade "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MegaApaOtaUpdateImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " triggerUpgrade "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return v5

    .line 37
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "upgradeFileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, "parentPath":Ljava/lang/String;
    const-string v9, ""

    .line 40
    .local v9, "upgradeRsaFileName":Ljava/lang/String;
    const-string v10, ".cbf"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".rsa"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 45
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v10, "rsaFile":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 47
    .local v11, "filePath":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "rsaFilePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->createDirectoryIfNotExists(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    move-object/from16 v13, p1

    :try_start_1
    invoke-static {v3, v13, v10, v12}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->clearDirectoryExcludeSomeFiles(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)Z

    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/mega/update/sdk/utils/OtaUtil;->fileIsInOtaFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "fail"

    const-string v15, " triggerUpgrade cpFileToOtaFolder "

    if-nez v3, :cond_1

    .line 53
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/mega/update/sdk/utils/OtaUtil;->cpFileToOtaFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v5

    .line 59
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/mega/update/sdk/utils/OtaUtil;->fileIsInOtaFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/mega/update/sdk/utils/OtaUtil;->cpFileToOtaFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v5

    .line 66
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/mega/update/sdk/impl/MegaApaOtaUpdateImpl;->mChildid:I

    .line 70
    :cond_3
    invoke-static {v11}, Lcom/mega/update/sdk/utils/OtaUtil;->getFileSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "sha256":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/ota/android/package/"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "qnxFilePath":Ljava/lang/String;
    new-instance v14, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;

    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaApaOtaUpdateImpl;->mEcuName:Ljava/lang/String;

    iget v5, v1, Lcom/mega/update/sdk/impl/MegaApaOtaUpdateImpl;->mChildid:I

    invoke-direct {v14, v15, v5, v3, v0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    .line 73
    .local v5, "json":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " triggerUpgrade sha256: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " filePath : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "jsonStr":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v14, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    array-length v12, v15

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "sha256":Ljava/lang/String;
    .local v16, "sha256":Ljava/lang/String;
    :goto_0
    if-ge v0, v12, :cond_4

    aget-byte v17, v15, v0

    .line 78
    .local v17, "b":B
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    nop

    .end local v17    # "b":B
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p2

    goto :goto_0

    .line 80
    :cond_4
    iget-object v0, v1, Lcom/mega/update/sdk/impl/MegaApaOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v2, v1, Lcom/mega/update/sdk/impl/MegaApaOtaUpdateImpl;->START_REQ:Ljava/lang/String;

    invoke-virtual {v0, v2, v14}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 82
    .end local v3    # "qnxFilePath":Ljava/lang/String;
    .end local v4    # "rsaFilePath":Ljava/lang/String;
    .end local v5    # "json":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;
    .end local v6    # "jsonStr":Ljava/lang/String;
    .end local v7    # "upgradeFileName":Ljava/lang/String;
    .end local v8    # "parentPath":Ljava/lang/String;
    .end local v9    # "upgradeRsaFileName":Ljava/lang/String;
    .end local v10    # "rsaFile":Ljava/io/File;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v14    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v16    # "sha256":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 43
    .restart local v7    # "upgradeFileName":Ljava/lang/String;
    .restart local v8    # "parentPath":Ljava/lang/String;
    .restart local v9    # "upgradeRsaFileName":Ljava/lang/String;
    :cond_5
    move-object/from16 v13, p1

    const/4 v2, 0x1

    return v2

    .line 82
    .end local v7    # "upgradeFileName":Ljava/lang/String;
    .end local v8    # "parentPath":Ljava/lang/String;
    .end local v9    # "upgradeRsaFileName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v13, p1

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v2, 0x1

    return v2
.end method
