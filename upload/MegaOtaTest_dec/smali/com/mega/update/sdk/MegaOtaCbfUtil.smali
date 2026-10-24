.class public Lcom/mega/update/sdk/MegaOtaCbfUtil;
.super Ljava/lang/Object;
.source "MegaOtaCbfUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/sdk/MegaOtaCbfUtil$checkFileFormatCode;,
        Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;
    }
.end annotation


# static fields
.field public static mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCbfFileName:Ljava/lang/String;

.field public mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

.field public mFis:Ljava/io/FileInputStream;

.field public mFos:Ljava/io/FileOutputStream;

.field public mLastReportTime:J

.field public mPublicKeyFileName:Ljava/lang/String;

.field public mRSAPublicKey:Ljava/security/interfaces/RSAPublicKey;

.field public mReportLen:J

.field public mRsaFileName:Ljava/lang/String;

.field public mSign:[B

.field public mSignature:Ljava/security/Signature;

.field public mZipFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    .line 36
    const-string v0, "megaOtaHelperjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;)V
    .locals 2
    .param p1, "mCpListener"    # Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFis:Ljava/io/FileInputStream;

    .line 53
    iput-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    .line 58
    const-string v0, "/system/etc/config/RSA_4096_20230531133613_DMC_public.txt"

    iput-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mPublicKeyFileName:Ljava/lang/String;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mReportLen:J

    .line 68
    iput-wide v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mLastReportTime:J

    .line 78
    iput-object p1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    .line 79
    return-void
.end method

.method public static FileFormatChecker(Ljava/lang/String;)I
    .locals 17
    .param p0, "fileName"    # Ljava/lang/String;

    .line 566
    move-object/from16 v1, p0

    const-string v2, "FileFormatChecker exception 2 = "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileFormatChecker fileName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mega_ota_2.0"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 568
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    const/4 v0, -0x1

    return v0

    .line 573
    :cond_0
    const/4 v5, 0x0

    .line 575
    .local v5, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 576
    const/4 v0, 0x4

    new-array v6, v0, [B

    .line 577
    .local v6, "header":[B
    const/16 v7, 0xc

    new-array v8, v7, [B

    .line 578
    .local v8, "headerRight":[B
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    .line 579
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    .line 581
    invoke-static {v6, v8}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mergeArrays([B[B)[B

    move-result-object v9

    .line 584
    .local v9, "merged":[B
    new-array v10, v0, [B

    const/16 v11, 0x50

    const/4 v12, 0x0

    aput-byte v11, v10, v12

    const/16 v11, 0x4b

    const/4 v13, 0x1

    aput-byte v11, v10, v13

    const/4 v11, 0x2

    const/4 v14, 0x3

    aput-byte v14, v10, v11

    aput-byte v0, v10, v14

    .line 586
    .local v10, "zipMagicBytes":[B
    const/16 v15, 0x10

    new-array v15, v15, [B

    const/16 v16, 0x43

    aput-byte v16, v15, v12

    const/16 v12, 0x68

    aput-byte v12, v15, v13

    const/16 v12, 0x65

    aput-byte v12, v15, v11

    const/16 v11, 0x72

    aput-byte v11, v15, v14

    const/16 v13, 0x79

    aput-byte v13, v15, v0

    const/4 v0, 0x5

    const/16 v13, 0x5f

    aput-byte v13, v15, v0

    const/4 v0, 0x6

    aput-byte v16, v15, v0

    const/4 v0, 0x7

    const/16 v13, 0x42

    aput-byte v13, v15, v0

    const/16 v0, 0x8

    const/16 v13, 0x46

    aput-byte v13, v15, v0

    const/16 v0, 0x9

    aput-byte v16, v15, v0

    const/16 v0, 0xa

    const/16 v13, 0x6f

    aput-byte v13, v15, v0

    const/16 v0, 0xb

    const/16 v13, 0x6e

    aput-byte v13, v15, v0

    const/16 v0, 0x76

    aput-byte v0, v15, v7

    const/16 v0, 0xd

    aput-byte v12, v15, v0

    const/16 v0, 0xe

    aput-byte v11, v15, v0

    const/16 v0, 0xf

    const/16 v7, 0x74

    aput-byte v7, v15, v0

    move-object v0, v15

    .line 587
    .local v0, "cbfMagicBytes":[B
    invoke-static {v6, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "FileFormatChecker "

    if-eqz v7, :cond_1

    .line 588
    const/4 v7, 0x0

    .line 589
    .local v7, "res":I
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is zip file"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    .end local v7    # "res":I
    :cond_1
    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 591
    const/4 v7, 0x1

    .line 592
    .restart local v7    # "res":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is cbf file"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    .end local v7    # "res":I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is others file"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    const/4 v7, 0x2

    .line 601
    .end local v0    # "cbfMagicBytes":[B
    .end local v6    # "header":[B
    .end local v8    # "headerRight":[B
    .end local v9    # "merged":[B
    .end local v10    # "zipMagicBytes":[B
    .restart local v7    # "res":I
    :goto_0
    nop

    .line 603
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 604
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 605
    .local v0, "e":Ljava/io/IOException;
    const/4 v7, -0x2

    .line 606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 601
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "res":I
    :catchall_0
    move-exception v0

    move-object v6, v0

    goto :goto_3

    .line 597
    :catch_1
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileFormatChecker exception 1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 599
    const/4 v7, -0x2

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "res":I
    if-eqz v5, :cond_3

    .line 603
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 604
    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 605
    .local v0, "e":Ljava/io/IOException;
    const/4 v7, -0x2

    .line 606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return v7

    .line 601
    .end local v7    # "res":I
    :goto_3
    if-eqz v5, :cond_4

    .line 603
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 607
    goto :goto_4

    .line 604
    :catch_3
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 605
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v7, -0x2

    .line 606
    .restart local v7    # "res":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "res":I
    :cond_4
    :goto_4
    throw v6
.end method

.method public static clearDirectory(Ljava/lang/String;Ljava/io/File;Z)Z
    .locals 11
    .param p0, "directoryPath"    # Ljava/lang/String;
    .param p1, "f"    # Ljava/io/File;
    .param p2, "isIccUpgrade"    # Z

    .line 408
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, " MegaOtaCbfUtil clearDirectory "

    const-string v3, "mega_ota_2.0"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "directory does not exist !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v4

    .line 415
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a file !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return v4

    .line 420
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 421
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_8

    .line 422
    array-length v2, v1

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_8

    aget-object v6, v1, v5

    .line 423
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 424
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1, p2}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->clearDirectory(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v7

    if-nez v7, :cond_7

    .line 425
    return v4

    .line 428
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 429
    goto :goto_1

    .line 430
    :cond_3
    const-wide/32 v7, 0xc350000

    if-nez p2, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-lez v9, :cond_4

    .line 431
    goto :goto_1

    .line 432
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-gtz v7, :cond_5

    .line 433
    goto :goto_1

    .line 434
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 435
    goto :goto_1

    .line 437
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 422
    .end local v6    # "file":Ljava/io/File;
    :cond_7
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 442
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MegaOtaCbfUtil clearDirectory clear "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success , isIccUpgrade = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v2, 0x1

    return v2
.end method

.method public static clearDirectoryExcludeSomeFiles(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 11
    .param p0, "directoryPath"    # Ljava/lang/String;
    .param p1, "f"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;
    .param p3, "isIccUpgrade"    # Z

    .line 447
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, " MegaOtaCbfUtil clearDirectoryExcludeSomeFiles "

    const/4 v3, 0x0

    const-string v4, "mega_ota_2.0"

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "directory does not exist !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v3

    .line 454
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a file !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return v3

    .line 459
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 460
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_8

    .line 461
    array-length v2, v1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_8

    aget-object v6, v1, v5

    .line 462
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 463
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1, p3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->clearDirectory(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v7

    if-nez v7, :cond_7

    .line 464
    return v3

    .line 467
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 468
    goto :goto_1

    .line 469
    :cond_3
    const-wide/32 v7, 0xc350000

    if-nez p3, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-lez v9, :cond_4

    .line 470
    goto :goto_1

    .line 471
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-gtz v7, :cond_5

    .line 472
    goto :goto_1

    .line 473
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 474
    goto :goto_1

    .line 476
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " MegaOtaCbfUtil clearDirectoryExcludeSomeFiles delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 461
    .end local v6    # "file":Ljava/io/File;
    :cond_7
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 482
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MegaOtaCbfUtil clearDirectoryExcludeSomeFiles clear "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success , isIccUpgrade = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v2, 0x1

    return v2
.end method

.method public static copyFile(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;)V
    .locals 24
    .param p2, "cpListener"    # Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;",
            ")V"
        }
    .end annotation

    .line 307
    .local p0, "sourceFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "targetFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const-string v3, "mega_ota_2.0"

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 308
    :cond_0
    if-eqz v1, :cond_1

    .line 309
    const-string v0, " sourceFiles or targetFiles is invaild "

    invoke-interface {v1, v2, v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 311
    :cond_1
    const-string v0, "MegaOtaCbfUtil copyFile failed,  sourceFiles or targetFiles  is invaild "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 314
    .local v4, "fileNum":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_a

    .line 315
    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 316
    .local v7, "sourceFilePath":Ljava/lang/String;
    move-object/from16 v8, p1

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 317
    .local v9, "targetFilePath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 318
    .local v10, "mLastReportTime":J
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v17, v7

    move-object/from16 v22, v9

    goto/16 :goto_8

    .line 324
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v12, v0

    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object v13, v0

    .line 325
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 327
    .local v0, "buffer":[B
    const-wide/16 v14, 0x0

    .line 328
    .local v14, "totalBytesRead":J
    invoke-static {v7}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-wide/from16 v18, v16

    .line 330
    .local v18, "fileSize":J
    :goto_1
    :try_start_3
    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    move/from16 v17, v2

    .local v17, "bytesRead":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_6

    .line 331
    move/from16 v2, v17

    const/4 v6, 0x0

    .end local v17    # "bytesRead":I
    .local v2, "bytesRead":I
    invoke-virtual {v13, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 332
    move-object/from16 v17, v7

    .end local v7    # "sourceFilePath":Ljava/lang/String;
    .local v17, "sourceFilePath":Ljava/lang/String;
    int-to-long v6, v2

    add-long/2addr v14, v6

    .line 333
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 334
    .local v6, "currentTime":J
    if-eqz v1, :cond_5

    .line 335
    sub-long v20, v6, v10

    const-wide/16 v22, 0x1f4

    cmp-long v20, v20, v22

    if-lez v20, :cond_4

    .line 336
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    move-object/from16 v22, v9

    .end local v9    # "targetFilePath":Ljava/lang/String;
    .local v22, "targetFilePath":Ljava/lang/String;
    long-to-double v8, v14

    mul-double v8, v8, v20

    move-wide/from16 v20, v10

    move-wide/from16 v10, v18

    move-wide/from16 v18, v14

    .end local v14    # "totalBytesRead":J
    .local v10, "fileSize":J
    .local v18, "totalBytesRead":J
    .local v20, "mLastReportTime":J
    long-to-double v14, v10

    div-double/2addr v8, v14

    add-int/lit8 v14, v5, 0x1

    int-to-double v14, v14

    mul-double/2addr v8, v14

    int-to-double v14, v4

    div-double/2addr v8, v14

    double-to-int v8, v8

    :try_start_5
    invoke-interface {v1, v8}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpProgress(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 337
    move-wide v8, v6

    move-wide/from16 v20, v8

    .end local v20    # "mLastReportTime":J
    .local v8, "mLastReportTime":J
    goto :goto_2

    .line 324
    .end local v0    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v6    # "currentTime":J
    .end local v8    # "mLastReportTime":J
    .end local v10    # "fileSize":J
    .end local v18    # "totalBytesRead":J
    .restart local v20    # "mLastReportTime":J
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-wide/from16 v10, v20

    goto/16 :goto_3

    .line 335
    .end local v20    # "mLastReportTime":J
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v6    # "currentTime":J
    .restart local v9    # "targetFilePath":Ljava/lang/String;
    .local v10, "mLastReportTime":J
    .restart local v14    # "totalBytesRead":J
    .local v18, "fileSize":J
    :cond_4
    move-object/from16 v22, v9

    move-wide/from16 v20, v10

    move-wide/from16 v10, v18

    move-wide/from16 v18, v14

    .end local v9    # "targetFilePath":Ljava/lang/String;
    .end local v14    # "totalBytesRead":J
    .local v10, "fileSize":J
    .local v18, "totalBytesRead":J
    .restart local v20    # "mLastReportTime":J
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    goto :goto_2

    .line 334
    .end local v20    # "mLastReportTime":J
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .restart local v9    # "targetFilePath":Ljava/lang/String;
    .local v10, "mLastReportTime":J
    .restart local v14    # "totalBytesRead":J
    .local v18, "fileSize":J
    :cond_5
    move-object/from16 v22, v9

    move-wide/from16 v20, v10

    move-wide/from16 v10, v18

    move-wide/from16 v18, v14

    .line 340
    .end local v6    # "currentTime":J
    .end local v9    # "targetFilePath":Ljava/lang/String;
    .end local v14    # "totalBytesRead":J
    .local v10, "fileSize":J
    .local v18, "totalBytesRead":J
    .restart local v20    # "mLastReportTime":J
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v7, v17

    move-wide/from16 v14, v18

    move-object/from16 v9, v22

    move-wide/from16 v18, v10

    move-wide/from16 v10, v20

    goto :goto_1

    .line 324
    .end local v0    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v18    # "totalBytesRead":J
    .end local v20    # "mLastReportTime":J
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .restart local v9    # "targetFilePath":Ljava/lang/String;
    .local v10, "mLastReportTime":J
    :catchall_1
    move-exception v0

    move-object/from16 v22, v9

    move-wide/from16 v20, v10

    move-object v2, v0

    .end local v9    # "targetFilePath":Ljava/lang/String;
    .end local v10    # "mLastReportTime":J
    .restart local v20    # "mLastReportTime":J
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    goto :goto_3

    .line 330
    .end local v20    # "mLastReportTime":J
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v7    # "sourceFilePath":Ljava/lang/String;
    .restart local v9    # "targetFilePath":Ljava/lang/String;
    .restart local v10    # "mLastReportTime":J
    .restart local v14    # "totalBytesRead":J
    .local v17, "bytesRead":I
    .local v18, "fileSize":J
    :cond_6
    move-object/from16 v22, v9

    move-wide/from16 v20, v10

    move/from16 v2, v17

    move-wide/from16 v10, v18

    move-object/from16 v17, v7

    .line 341
    .end local v0    # "buffer":[B
    .end local v7    # "sourceFilePath":Ljava/lang/String;
    .end local v9    # "targetFilePath":Ljava/lang/String;
    .end local v10    # "mLastReportTime":J
    .end local v14    # "totalBytesRead":J
    .end local v18    # "fileSize":J
    .local v17, "sourceFilePath":Ljava/lang/String;
    .restart local v20    # "mLastReportTime":J
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 346
    .end local v12    # "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 341
    :catch_0
    move-exception v0

    move-wide/from16 v10, v20

    goto :goto_7

    .line 324
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    move-object v2, v0

    move-wide/from16 v10, v20

    goto :goto_5

    .end local v17    # "sourceFilePath":Ljava/lang/String;
    .end local v20    # "mLastReportTime":J
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .restart local v7    # "sourceFilePath":Ljava/lang/String;
    .restart local v9    # "targetFilePath":Ljava/lang/String;
    .restart local v10    # "mLastReportTime":J
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v22, v9

    move-wide/from16 v20, v10

    move-object v2, v0

    .end local v7    # "sourceFilePath":Ljava/lang/String;
    .end local v9    # "targetFilePath":Ljava/lang/String;
    .end local v10    # "mLastReportTime":J
    .restart local v17    # "sourceFilePath":Ljava/lang/String;
    .restart local v20    # "mLastReportTime":J
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    goto :goto_3

    .end local v17    # "sourceFilePath":Ljava/lang/String;
    .end local v20    # "mLastReportTime":J
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .restart local v7    # "sourceFilePath":Ljava/lang/String;
    .restart local v9    # "targetFilePath":Ljava/lang/String;
    .restart local v10    # "mLastReportTime":J
    :catchall_4
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v22, v9

    move-object v2, v0

    .end local v7    # "sourceFilePath":Ljava/lang/String;
    .end local v9    # "targetFilePath":Ljava/lang/String;
    .restart local v17    # "sourceFilePath":Ljava/lang/String;
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    :goto_3
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v6, v0

    :try_start_9
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "fileNum":I
    .end local v5    # "i":I
    .end local v10    # "mLastReportTime":J
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "sourceFilePath":Ljava/lang/String;
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .end local p0    # "sourceFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p1    # "targetFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p2    # "cpListener":Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;
    :goto_4
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fileNum":I
    .restart local v5    # "i":I
    .restart local v10    # "mLastReportTime":J
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "sourceFilePath":Ljava/lang/String;
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    .restart local p0    # "sourceFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1    # "targetFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p2    # "cpListener":Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;
    :catchall_6
    move-exception v0

    move-object v2, v0

    goto :goto_5

    .end local v17    # "sourceFilePath":Ljava/lang/String;
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .restart local v7    # "sourceFilePath":Ljava/lang/String;
    .restart local v9    # "targetFilePath":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v22, v9

    move-object v2, v0

    .end local v7    # "sourceFilePath":Ljava/lang/String;
    .end local v9    # "targetFilePath":Ljava/lang/String;
    .restart local v17    # "sourceFilePath":Ljava/lang/String;
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    :goto_5
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "fileNum":I
    .end local v5    # "i":I
    .end local v10    # "mLastReportTime":J
    .end local v17    # "sourceFilePath":Ljava/lang/String;
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .end local p0    # "sourceFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p1    # "targetFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p2    # "cpListener":Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;
    :goto_6
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 341
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fileNum":I
    .restart local v5    # "i":I
    .restart local v10    # "mLastReportTime":J
    .restart local v17    # "sourceFilePath":Ljava/lang/String;
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    .restart local p0    # "sourceFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1    # "targetFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p2    # "cpListener":Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v17    # "sourceFilePath":Ljava/lang/String;
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .restart local v7    # "sourceFilePath":Ljava/lang/String;
    .restart local v9    # "targetFilePath":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v22, v9

    .line 342
    .end local v7    # "sourceFilePath":Ljava/lang/String;
    .end local v9    # "targetFilePath":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "sourceFilePath":Ljava/lang/String;
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    :goto_7
    if-eqz v1, :cond_7

    .line 343
    const-string v2, "copy file exception "

    const/4 v6, 0x0

    invoke-interface {v1, v6, v2}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 345
    :cond_7
    const-string v2, " MegaOtaCbfUtil copy file exception"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_a

    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "sourceFilePath":Ljava/lang/String;
    .end local v22    # "targetFilePath":Ljava/lang/String;
    .restart local v7    # "sourceFilePath":Ljava/lang/String;
    .restart local v9    # "targetFilePath":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v7

    move-object/from16 v22, v9

    .line 319
    .end local v7    # "sourceFilePath":Ljava/lang/String;
    .end local v9    # "targetFilePath":Ljava/lang/String;
    .restart local v17    # "sourceFilePath":Ljava/lang/String;
    .restart local v22    # "targetFilePath":Ljava/lang/String;
    :goto_8
    if-eqz v1, :cond_9

    .line 320
    const-string v0, " sourceFilePath or targetFilePath is empty "

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    goto :goto_9

    .line 319
    :cond_9
    const/4 v2, 0x0

    .line 322
    :goto_9
    const-string v0, "MegaOtaCbfUtil copy file failed, sourceFilePath or targetFilePath is empty "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v10    # "mLastReportTime":J
    .end local v17    # "sourceFilePath":Ljava/lang/String;
    .end local v22    # "targetFilePath":Ljava/lang/String;
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 349
    .end local v5    # "i":I
    :cond_a
    if-eqz v1, :cond_b

    .line 350
    const/4 v0, 0x1

    const-string v2, "copy file success "

    invoke-interface {v1, v0, v2}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 352
    :cond_b
    const-string v0, " MegaOtaCbfUtil copy file succeess"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method public static countNestedZipsByFile(Ljava/io/File;)I
    .locals 6
    .param p0, "zipFile"    # Ljava/io/File;

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "count":I
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .local v1, "outerZip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 534
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 536
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 537
    add-int/lit8 v0, v0, 0x1

    .line 539
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    goto :goto_0

    .line 540
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 543
    .end local v1    # "outerZip":Ljava/util/zip/ZipFile;
    nop

    .line 544
    return v0

    .line 532
    .restart local v1    # "outerZip":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "count":I
    .end local p0    # "zipFile":Ljava/io/File;
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 540
    .end local v1    # "outerZip":Ljava/util/zip/ZipFile;
    .restart local v0    # "count":I
    .restart local p0    # "zipFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MegaOtaCbfUtil countNestedZipsByFile failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mega_ota_2.0"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v2, -0x1

    return v2
.end method

.method public static createDirectoryIfNotExists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "directoryPath"    # Ljava/lang/String;

    .line 487
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "mega_ota_2.0"

    if-nez v1, :cond_1

    .line 490
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v3, " MegaOtaCbfUtil createDirectoryIfNotExists directory created: "

    if-eqz v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v1, 0x0

    return v1

    .line 497
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MegaOtaCbfUtil createDirectoryIfNotExists directory "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exist "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 379
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 380
    return-wide v1

    .line 383
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MegaOtaCbfUtil getFileSize file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mega_ota_2.0"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1

    .line 390
    :cond_1
    return-wide v1
.end method

.method public static isCbfOnly()Z
    .locals 4

    .line 357
    const-string v0, "ro.ecu.config.COUNTRY_OR_REGION"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 358
    .local v0, "salesArea":I
    sget-object v2, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const/4 v1, 0x1

    return v1

    .line 361
    :cond_0
    return v1
.end method

.method public static isDaylightSavingTime(Ljava/lang/String;)Z
    .locals 3
    .param p0, "timeZoneId"    # Ljava/lang/String;

    .line 830
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 831
    .local v0, "timeZone":Ljava/util/TimeZone;
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 832
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    return v2
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 396
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x0

    return v0

    .line 400
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isT1gcVersion()Z
    .locals 2

    .line 850
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "productName":Ljava/lang/String;
    const-string v1, "lajolla"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static mergeArrays([B[B)[B
    .locals 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 556
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 558
    .local v0, "mergedArray":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    return-object v0
.end method

.method public static toCurTimeZone(II)Landroid/util/Pair;
    .locals 5
    .param p0, "hour"    # I
    .param p1, "min"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 839
    invoke-static {p0, p1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    .line 840
    .local v0, "time":Ljava/time/LocalTime;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 841
    .local v1, "rawOffset":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rawOffset  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mega_ota_2.0"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isDaylightSavingTime(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    add-int/2addr v1, v2

    .line 845
    :cond_0
    int-to-long v2, v1

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    .line 846
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public GenerPemFormatPublicKeyByNandE(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->readNandEFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "para":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 103
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 104
    .local v2, "modulus":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v3, "publicExponent":Ljava/math/BigInteger;
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 107
    .local v4, "publicKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 111
    .end local v1    # "para":[Ljava/lang/String;
    .end local v2    # "modulus":Ljava/math/BigInteger;
    .end local v3    # "publicExponent":Ljava/math/BigInteger;
    .end local v4    # "publicKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public GenerSignatureDataFromBuff([BIZ)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "buffer_len"    # I
    .param p3, "completeFlag"    # Z

    .line 140
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mPublicKeyFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->GenerPemFormatPublicKeyByNandE(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRSAPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 143
    const-string v0, "SHA512withRSA/PSS"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    .line 144
    iget-object v2, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRSAPublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 145
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1, v1, p2}, Ljava/security/Signature;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const/4 v1, -0x1

    return v1

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, v1, p2}, Ljava/security/Signature;->update([BII)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    nop

    .line 159
    :goto_0
    if-nez p3, :cond_1

    .line 160
    const/4 v0, -0x3

    return v0

    .line 162
    :cond_1
    return v1

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    .line 155
    const/4 v1, -0x2

    return v1
.end method

.method public checkZipSignatureAndCpFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p1, "srcZipFileName"    # Ljava/lang/String;
    .param p2, "targetZipFileName"    # Ljava/lang/String;
    .param p3, "rsaFileName"    # Ljava/lang/String;

    .line 630
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, " MegaOtaCbfUtil checkZipSignatureAndCpFile exception 2, reason = "

    const-string v6, " "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " MegaOtaCbfUtil checkZipSignatureAndCpFile srcZipFileName = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", targetZipFileName = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " rsaFileName = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "mega_ota_2.0"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->initPara()V

    .line 633
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    const-string v8, "/data/ota_package/"

    const-string v9, ""

    const/4 v10, 0x0

    if-eqz v0, :cond_7

    .line 634
    invoke-static/range {p1 .. p1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    const-string v11, " MegaOtaCbfUtil checkZipSignatureAndCpFile "

    if-eqz v0, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-gtz v0, :cond_0

    goto :goto_2

    .line 640
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v0, v12, v14

    if-gtz v0, :cond_1

    goto :goto_1

    .line 646
    :cond_1
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mPublicKeyFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mPublicKeyFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v0, v12, v14

    if-gtz v0, :cond_2

    goto :goto_0

    .line 652
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 653
    :cond_3
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    const-string v5, " zip file path is invalid"

    invoke-interface {v0, v10, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 654
    return-object v9

    .line 647
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mPublicKeyFileName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " publickey file is not exist or empty file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    invoke-interface {v0, v10, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 649
    return-object v9

    .line 641
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rsa file is not exist or empty file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    invoke-interface {v0, v10, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 643
    return-object v9

    .line 635
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " zip file is not exist or empty file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    invoke-interface {v0, v10, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 637
    return-object v9

    .line 658
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 659
    invoke-virtual {v1, v3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->deleteFile(Ljava/lang/String;)V

    .line 662
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getAvailableDataPartitionSpace()J

    move-result-wide v11

    .line 663
    .local v11, "dataPartitionSpace":J
    invoke-static/range {p1 .. p1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v13

    .line 664
    .local v13, "srcFileSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " MegaOtaCbfUtil checkZipSignatureAndCpFile dataPartitionSpace = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "KB, srcFileSize = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "kB"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    cmp-long v0, v11, v13

    if-gez v0, :cond_9

    .line 666
    const-string v0, " MegaOtaCbfUtil checkZipSignatureAndCpFile /data/\u5206\u533a\u53ef\u7528\u7a7a\u95f4\u4e0d\u8db3 "

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v0, :cond_9

    .line 668
    const-string v5, " /data/ partition free space is not enough"

    invoke-interface {v0, v10, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 669
    return-object v9

    .line 673
    :cond_9
    const/4 v8, 0x0

    .line 675
    .local v8, "cpSuccess":Z
    :try_start_0
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mPublicKeyFileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->GenerPemFormatPublicKeyByNandE(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    iput-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRSAPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 676
    const-string v0, "SHA512withRSA/PSS"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    .line 677
    iget-object v15, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRSAPublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v15}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 679
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "saveFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v15, :cond_a

    .line 681
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 717
    .end local v0    # "saveFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    move/from16 v19, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-object v8, v3

    goto/16 :goto_d

    .line 709
    :catch_0
    move-exception v0

    move/from16 v19, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-object v8, v3

    goto/16 :goto_b

    .line 683
    .restart local v0    # "saveFile":Ljava/io/File;
    :cond_a
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v10, 0x1

    if-nez v15, :cond_b

    .line 684
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 685
    const/4 v15, 0x0

    invoke-virtual {v0, v10, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 686
    invoke-virtual {v0, v10, v15}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 689
    :cond_b
    :try_start_4
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v15, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFis:Ljava/io/FileInputStream;

    .line 690
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v15, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    .line 691
    const/16 v15, 0x2800

    new-array v15, v15, [B

    .line 692
    .local v15, "buffer":[B
    const/16 v16, 0x0

    .line 693
    .local v16, "readLen":I
    invoke-static/range {p1 .. p1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 694
    .local v19, "zipFileSize":J
    :goto_4
    iget-object v10, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFis:Ljava/io/FileInputStream;

    invoke-virtual {v10, v15}, Ljava/io/FileInputStream;->read([B)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move/from16 v18, v10

    move-object/from16 v16, v0

    .end local v0    # "saveFile":Ljava/io/File;
    .local v16, "saveFile":Ljava/io/File;
    .local v18, "readLen":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_f

    .line 695
    :try_start_5
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    move/from16 v10, v18

    const/4 v2, 0x0

    .end local v18    # "readLen":I
    .local v10, "readLen":I
    invoke-virtual {v0, v15, v2, v10}, Ljava/security/Signature;->update([BII)V

    .line 696
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 697
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_e

    .line 698
    if-lez v10, :cond_d

    .line 699
    move-wide/from16 v21, v11

    .end local v11    # "dataPartitionSpace":J
    .local v21, "dataPartitionSpace":J
    :try_start_6
    iget-wide v11, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mReportLen:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-wide/from16 v23, v13

    .end local v13    # "srcFileSize":J
    .local v23, "srcFileSize":J
    int-to-long v13, v10

    add-long/2addr v11, v13

    :try_start_7
    iput-wide v11, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mReportLen:J

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 701
    .local v11, "currentTime":J
    iget-wide v13, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mLastReportTime:J

    sub-long v13, v11, v13

    const-wide/16 v25, 0x1f4

    cmp-long v0, v13, v25

    if-lez v0, :cond_c

    .line 702
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    iget-wide v13, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mReportLen:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    long-to-double v13, v13

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    mul-double v13, v13, v25

    move-object/from16 v18, v9

    move-wide/from16 v2, v19

    move/from16 v19, v8

    .end local v8    # "cpSuccess":Z
    .local v2, "zipFileSize":J
    .local v19, "cpSuccess":Z
    long-to-double v8, v2

    div-double/2addr v13, v8

    double-to-int v8, v13

    :try_start_8
    invoke-interface {v0, v8}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpProgress(I)V

    .line 703
    iput-wide v11, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mLastReportTime:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 717
    .end local v2    # "zipFileSize":J
    .end local v10    # "readLen":I
    .end local v11    # "currentTime":J
    .end local v15    # "buffer":[B
    .end local v16    # "saveFile":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    goto/16 :goto_d

    .line 709
    :catch_1
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    goto/16 :goto_b

    .line 701
    .restart local v8    # "cpSuccess":Z
    .restart local v10    # "readLen":I
    .restart local v11    # "currentTime":J
    .restart local v15    # "buffer":[B
    .restart local v16    # "saveFile":Ljava/io/File;
    .local v19, "zipFileSize":J
    :cond_c
    move-object/from16 v18, v9

    move-wide/from16 v2, v19

    move/from16 v19, v8

    .line 705
    .end local v8    # "cpSuccess":Z
    .end local v11    # "currentTime":J
    .restart local v2    # "zipFileSize":J
    .local v19, "cpSuccess":Z
    :goto_5
    goto :goto_6

    .line 717
    .end local v2    # "zipFileSize":J
    .end local v10    # "readLen":I
    .end local v15    # "buffer":[B
    .end local v16    # "saveFile":Ljava/io/File;
    .end local v19    # "cpSuccess":Z
    .restart local v8    # "cpSuccess":Z
    :catchall_2
    move-exception v0

    move/from16 v19, v8

    move-object/from16 v8, p2

    .end local v8    # "cpSuccess":Z
    .restart local v19    # "cpSuccess":Z
    goto/16 :goto_d

    .line 709
    .end local v19    # "cpSuccess":Z
    .restart local v8    # "cpSuccess":Z
    :catch_2
    move-exception v0

    move/from16 v19, v8

    move-object/from16 v8, p2

    .end local v8    # "cpSuccess":Z
    .restart local v19    # "cpSuccess":Z
    goto/16 :goto_b

    .line 717
    .end local v19    # "cpSuccess":Z
    .end local v23    # "srcFileSize":J
    .restart local v8    # "cpSuccess":Z
    .restart local v13    # "srcFileSize":J
    :catchall_3
    move-exception v0

    move/from16 v19, v8

    move-wide/from16 v23, v13

    move-object/from16 v8, p2

    .end local v8    # "cpSuccess":Z
    .end local v13    # "srcFileSize":J
    .restart local v19    # "cpSuccess":Z
    .restart local v23    # "srcFileSize":J
    goto/16 :goto_d

    .line 709
    .end local v19    # "cpSuccess":Z
    .end local v23    # "srcFileSize":J
    .restart local v8    # "cpSuccess":Z
    .restart local v13    # "srcFileSize":J
    :catch_3
    move-exception v0

    move/from16 v19, v8

    move-wide/from16 v23, v13

    move-object/from16 v8, p2

    .end local v8    # "cpSuccess":Z
    .end local v13    # "srcFileSize":J
    .restart local v19    # "cpSuccess":Z
    .restart local v23    # "srcFileSize":J
    goto/16 :goto_b

    .line 698
    .end local v21    # "dataPartitionSpace":J
    .end local v23    # "srcFileSize":J
    .restart local v8    # "cpSuccess":Z
    .restart local v10    # "readLen":I
    .local v11, "dataPartitionSpace":J
    .restart local v13    # "srcFileSize":J
    .restart local v15    # "buffer":[B
    .restart local v16    # "saveFile":Ljava/io/File;
    .local v19, "zipFileSize":J
    :cond_d
    move-object/from16 v18, v9

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-wide/from16 v2, v19

    move/from16 v19, v8

    .end local v8    # "cpSuccess":Z
    .end local v11    # "dataPartitionSpace":J
    .end local v13    # "srcFileSize":J
    .restart local v2    # "zipFileSize":J
    .local v19, "cpSuccess":Z
    .restart local v21    # "dataPartitionSpace":J
    .restart local v23    # "srcFileSize":J
    goto :goto_6

    .line 697
    .end local v2    # "zipFileSize":J
    .end local v21    # "dataPartitionSpace":J
    .end local v23    # "srcFileSize":J
    .restart local v8    # "cpSuccess":Z
    .restart local v11    # "dataPartitionSpace":J
    .restart local v13    # "srcFileSize":J
    .local v19, "zipFileSize":J
    :cond_e
    move-object/from16 v18, v9

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-wide/from16 v2, v19

    move/from16 v19, v8

    .line 694
    .end local v8    # "cpSuccess":Z
    .end local v11    # "dataPartitionSpace":J
    .end local v13    # "srcFileSize":J
    .restart local v2    # "zipFileSize":J
    .local v19, "cpSuccess":Z
    .restart local v21    # "dataPartitionSpace":J
    .restart local v23    # "srcFileSize":J
    :goto_6
    move-object/from16 v0, v16

    move-object/from16 v9, v18

    move/from16 v8, v19

    move-wide/from16 v11, v21

    move-wide/from16 v13, v23

    move-wide/from16 v19, v2

    move/from16 v16, v10

    const/4 v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto/16 :goto_4

    .line 717
    .end local v2    # "zipFileSize":J
    .end local v10    # "readLen":I
    .end local v15    # "buffer":[B
    .end local v16    # "saveFile":Ljava/io/File;
    .end local v19    # "cpSuccess":Z
    .end local v21    # "dataPartitionSpace":J
    .end local v23    # "srcFileSize":J
    .restart local v8    # "cpSuccess":Z
    .restart local v11    # "dataPartitionSpace":J
    .restart local v13    # "srcFileSize":J
    :catchall_4
    move-exception v0

    move/from16 v19, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-object/from16 v8, p2

    goto/16 :goto_a

    .line 709
    :catch_4
    move-exception v0

    move/from16 v19, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-object/from16 v8, p2

    goto/16 :goto_b

    .line 708
    .restart local v15    # "buffer":[B
    .restart local v16    # "saveFile":Ljava/io/File;
    .restart local v18    # "readLen":I
    .local v19, "zipFileSize":J
    :cond_f
    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move/from16 v10, v18

    move-wide/from16 v2, v19

    move/from16 v19, v8

    move-object/from16 v18, v9

    .end local v8    # "cpSuccess":Z
    .end local v11    # "dataPartitionSpace":J
    .end local v13    # "srcFileSize":J
    .end local v18    # "readLen":I
    .restart local v2    # "zipFileSize":J
    .restart local v10    # "readLen":I
    .local v19, "cpSuccess":Z
    .restart local v21    # "dataPartitionSpace":J
    .restart local v23    # "srcFileSize":J
    const/4 v2, 0x1

    .line 717
    .end local v10    # "readLen":I
    .end local v15    # "buffer":[B
    .end local v16    # "saveFile":Ljava/io/File;
    .end local v19    # "cpSuccess":Z
    .local v2, "cpSuccess":Z
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_11

    .line 719
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 727
    goto :goto_7

    .line 720
    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 721
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v3, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v3, :cond_10

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 726
    :cond_10
    return-object v18

    .line 731
    .end local v0    # "e":Ljava/io/IOException;
    :cond_11
    :goto_7
    if-eqz v2, :cond_15

    .line 732
    const-string v0, " MegaOtaCbfUtil checkZipSignatureAndCpFile cpFile success "

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {v1, v4}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->verify(Ljava/lang/String;)Z

    move-result v3

    .line 734
    .local v3, "success":Z
    if-eqz v3, :cond_13

    .line 736
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " MegaOtaCbfUtil checkZipSignatureAndCpFile verify signature success, grant permission 777 for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v8, p2

    :try_start_b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 777 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 740
    goto :goto_9

    .line 738
    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    move-object/from16 v8, p2

    .line 739
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 741
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v0, :cond_12

    .line 742
    move-object/from16 v9, v18

    const/4 v5, 0x1

    invoke-interface {v0, v5, v9}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 744
    :cond_12
    return-object v8

    .line 746
    :cond_13
    move-object/from16 v8, p2

    move-object/from16 v9, v18

    const-string v0, " MegaOtaCbfUtil checkZipSignatureAndCpFile verify signature failed "

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v1, v8}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->deleteFile(Ljava/lang/String;)V

    .line 748
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v0, :cond_14

    .line 749
    const-string v5, " verify signature failed "

    const/4 v6, 0x0

    invoke-interface {v0, v6, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 751
    :cond_14
    return-object v9

    .line 754
    .end local v3    # "success":Z
    :cond_15
    move-object/from16 v8, p2

    move-object/from16 v9, v18

    const-string v0, " MegaOtaCbfUtil checkZipSignatureAndCpFile cpFile failed "

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v1, v8}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->deleteFile(Ljava/lang/String;)V

    .line 756
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v0, :cond_16

    .line 757
    const-string v3, " cpFile failed "

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 759
    :cond_16
    return-object v9

    .line 717
    .end local v2    # "cpSuccess":Z
    .end local v21    # "dataPartitionSpace":J
    .end local v23    # "srcFileSize":J
    .restart local v8    # "cpSuccess":Z
    .restart local v11    # "dataPartitionSpace":J
    .restart local v13    # "srcFileSize":J
    :catchall_5
    move-exception v0

    move/from16 v19, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-object v8, v3

    .end local v8    # "cpSuccess":Z
    .end local v11    # "dataPartitionSpace":J
    .end local v13    # "srcFileSize":J
    .restart local v19    # "cpSuccess":Z
    .restart local v21    # "dataPartitionSpace":J
    .restart local v23    # "srcFileSize":J
    :goto_a
    goto/16 :goto_d

    .line 709
    .end local v19    # "cpSuccess":Z
    .end local v21    # "dataPartitionSpace":J
    .end local v23    # "srcFileSize":J
    .restart local v8    # "cpSuccess":Z
    .restart local v11    # "dataPartitionSpace":J
    .restart local v13    # "srcFileSize":J
    :catch_8
    move-exception v0

    move/from16 v19, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-object v8, v3

    .end local v8    # "cpSuccess":Z
    .end local v11    # "dataPartitionSpace":J
    .end local v13    # "srcFileSize":J
    .restart local v19    # "cpSuccess":Z
    .restart local v21    # "dataPartitionSpace":J
    .restart local v23    # "srcFileSize":J
    :goto_b
    move-object v2, v0

    .line 710
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 711
    .end local v19    # "cpSuccess":Z
    .local v3, "cpSuccess":Z
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " MegaOtaCbfUtil checkZipSignatureAndCpFile exception 1, reason = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v0, :cond_17

    .line 713
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v0, v11, v10}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 715
    :cond_17
    nop

    .line 717
    iget-object v0, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_19

    .line 719
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 727
    goto :goto_c

    .line 720
    :catch_9
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 721
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 722
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v5, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v5, :cond_18

    .line 724
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 726
    :cond_18
    return-object v9

    .line 715
    .end local v0    # "e":Ljava/io/IOException;
    :cond_19
    :goto_c
    return-object v9

    .line 717
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v0

    move/from16 v19, v3

    .end local v3    # "cpSuccess":Z
    .restart local v19    # "cpSuccess":Z
    :goto_d
    iget-object v2, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFis:Ljava/io/FileInputStream;

    if-eqz v2, :cond_1b

    .line 719
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 727
    goto :goto_e

    .line 720
    :catch_a
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 721
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 722
    .end local v19    # "cpSuccess":Z
    .local v2, "cpSuccess":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v3, v1, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v3, :cond_1a

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 726
    :cond_1a
    return-object v9

    .line 729
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "cpSuccess":Z
    .restart local v19    # "cpSuccess":Z
    :cond_1b
    :goto_e
    throw v0
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileNameWithPath"    # Ljava/lang/String;

    .line 365
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "mega_ota_2.0"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 368
    .local v1, "deleted":Z
    if-eqz v1, :cond_0

    .line 369
    const-string v3, "MegaOtaCbfUtil deleteFile success "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_0
    const-string v3, "MegaOtaCbfUtil deleteFile failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v1    # "deleted":Z
    :goto_0
    goto :goto_1

    .line 374
    :cond_1
    const-string v1, "MegaOtaCbfUtil deleteFile failed, file is not exist "

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_1
    return-void
.end method

.method public getAvailableDataPartitionSpace()J
    .locals 8

    .line 505
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 508
    .local v0, "dataDirectory":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 512
    .local v1, "statFs":Landroid/os/StatFs;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 513
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .local v4, "blockSizeBytes":J
    goto :goto_0

    .line 515
    .end local v4    # "blockSizeBytes":J
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 520
    .restart local v4    # "blockSizeBytes":J
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 521
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .local v2, "availableBlocks":J
    goto :goto_1

    .line 523
    .end local v2    # "availableBlocks":J
    :cond_1
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 527
    .restart local v2    # "availableBlocks":J
    :goto_1
    mul-long v6, v2, v4

    return-wide v6
.end method

.method public initPara()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 765
    iput-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRSAPublicKey:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    .line 768
    iput-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRSAPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSign:[B

    if-eqz v0, :cond_2

    .line 771
    iput-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSign:[B

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_3

    .line 774
    iput-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFis:Ljava/io/FileInputStream;

    .line 776
    :cond_3
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    .line 777
    iput-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    .line 780
    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mReportLen:J

    .line 781
    iput-wide v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mLastReportTime:J

    .line 782
    return-void
.end method

.method public parseCbfAndVerifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cbfFilePathAndName"    # Ljava/lang/String;
    .param p2, "rsaFilePathAndName"    # Ljava/lang/String;
    .param p3, "zipFilePathAndName"    # Ljava/lang/String;

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MegaOtaCbfUtil parseCbfAndVerifySignature cbfFilePathAndName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zipFilePathAndName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rsaFilePathAndName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega_ota_2.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iput-object p1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCbfFileName:Ljava/lang/String;

    .line 791
    iput-object p2, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRsaFileName:Ljava/lang/String;

    .line 792
    iput-object p3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    .line 794
    invoke-virtual {p0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->initPara()V

    .line 795
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    const-string v2, ""

    if-eqz v0, :cond_7

    .line 796
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCbfFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCbfFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRsaFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRsaFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    goto :goto_1

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    const-string v4, "/data/ota_package/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 810
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->deleteFile(Ljava/lang/String;)V

    .line 814
    :cond_3
    invoke-virtual {p0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getAvailableDataPartitionSpace()J

    move-result-wide v4

    .line 815
    .local v4, "dataPartitionSpace":J
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCbfFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    .line 816
    .local v6, "cbfFileSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " MegaOtaCbfUtil parseCbfAndVerifySignature dataPartitionSpace = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "KB, cbfFileSize = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "kB"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    .line 818
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    const-string v1, " /data/ partition free space is not enough"

    invoke-interface {v0, v3, v1}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 819
    return-object v2

    .line 806
    .end local v4    # "dataPartitionSpace":J
    .end local v6    # "cbfFileSize":J
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    const-string v1, " zip file path is invalid"

    invoke-interface {v0, v3, v1}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 807
    return-object v2

    .line 801
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    const-string v1, " rsa file is not exist or empty file"

    invoke-interface {v0, v3, v1}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 802
    return-object v2

    .line 797
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    const-string v1, " cbf file is not exist or empty file"

    invoke-interface {v0, v3, v1}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 798
    return-object v2

    .line 823
    :cond_7
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCbfFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->parseCbfFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 824
    .local v0, "success":Z
    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    :cond_8
    return-object v2
.end method

.method public native parseCbfFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public parseFileAndVerifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "srcFileName"    # Ljava/lang/String;
    .param p2, "targetFileName"    # Ljava/lang/String;
    .param p3, "rsaFileName"    # Ljava/lang/String;

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MegaOtaCbfUtil parseFileAndVerifySignature srcFileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetFileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rsaFileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega_ota_2.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {p1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->FileFormatChecker(Ljava/lang/String;)I

    move-result v0

    .line 616
    .local v0, "fileType":I
    if-nez v0, :cond_0

    .line 617
    invoke-virtual {p0, p1, p2, p3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->checkZipSignatureAndCpFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 618
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 619
    invoke-virtual {p0, p1, p3, p2}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->parseCbfAndVerifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 621
    :cond_1
    iget-object v2, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v2, :cond_2

    .line 622
    const-string v2, " parseFileAndVerifySignature error, reason =  \"srcFile is not zip or cbf format \""

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    const/4 v2, 0x0

    const-string v3, "srcFile is not zip or cbf format "

    invoke-interface {v1, v2, v3}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 625
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method public readNandEFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 82
    const-string v0, ""

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "para":[Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    const/4 v4, 0x4

    if-eqz v2, :cond_0

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 89
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .end local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 83
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "para":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mega/update/sdk/MegaOtaCbfUtil;
    .end local p1    # "fileName":Ljava/lang/String;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "para":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mega/update/sdk/MegaOtaCbfUtil;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public readSignatureFromRsaFile(Ljava/lang/String;)[B
    .locals 5
    .param p1, "rsaFilePath"    # Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 119
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 121
    .local v2, "signatureBytes":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    move-object v2, v3

    .line 123
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    nop

    .line 129
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :cond_0
    :goto_0
    goto :goto_1

    .line 131
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 127
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 124
    :catch_1
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 129
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 136
    :goto_1
    return-object v2

    .line 128
    :goto_2
    if-eqz v1, :cond_1

    .line 129
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 131
    :catch_2
    move-exception v4

    .line 132
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 133
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 134
    :goto_4
    throw v3
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 7
    .param p1, "rsaFileName"    # Ljava/lang/String;

    .line 167
    const-string v0, ""

    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    const/4 v2, 0x0

    const-string v3, "mega_ota_2.0"

    if-nez v1, :cond_0

    .line 168
    const-string v0, "MegaOtaCbfUtil verify failed, mSignature is null "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v2

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRSAPublicKey:Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_1

    .line 173
    const-string v0, "MegaOtaCbfUtil verify failed, mRSAPublicKey is null "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v2

    .line 178
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->readSignatureFromRsaFile(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSign:[B

    .line 179
    if-nez v1, :cond_2

    .line 180
    const-string v0, "MegaOtaCbfUtil verify failed, mSign is null "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v2

    .line 183
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSign:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, ", "

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "0x"

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-direct {v1, v0, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 185
    .local v1, "bigInteger":Ljava/math/BigInteger;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MegaOtaCbfUtil verify mSign = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n mSignLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n bigInteger = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n bigInteger.toByteArray() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x201

    if-lt v3, v4, :cond_3

    .line 188
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x200

    invoke-virtual {v3, v4, v5, v6}, Ljava/security/Signature;->verify([BII)Z

    move-result v2

    return v2

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mSignature:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 193
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "bigInteger":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    return v2
.end method

.method public writeToJavaFile([BIZJ)V
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "buffer_len"    # I
    .param p3, "completeFlag"    # Z
    .param p4, "zipFileSize"    # J

    .line 201
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 203
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "saveFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 209
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 212
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    .line 213
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "saveFile":Ljava/io/File;
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v3, :cond_2

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 219
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3

    .line 220
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :cond_3
    goto :goto_0

    .line 222
    :catch_1
    move-exception v3

    .line 223
    .local v3, "e1":Ljava/io/IOException;
    iget-object v4, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v4, :cond_4

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " 2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_4
    :goto_0
    goto :goto_1

    .line 230
    :cond_5
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 244
    goto :goto_1

    .line 231
    :catch_2
    move-exception v0

    .line 232
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v3, :cond_6

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " 3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 236
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_7

    .line 237
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 243
    :cond_7
    goto :goto_1

    .line 239
    :catch_3
    move-exception v3

    .line 240
    .restart local v3    # "e1":Ljava/io/IOException;
    iget-object v4, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v4, :cond_8

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " 4 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v0, :cond_9

    .line 248
    if-lez p2, :cond_9

    .line 249
    iget-wide v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mReportLen:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mReportLen:J

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 251
    .local v3, "currentTime":J
    iget-wide v5, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mLastReportTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-lez v0, :cond_9

    .line 252
    iget-object v0, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    iget-wide v7, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mReportLen:J

    long-to-double v7, v7

    mul-double/2addr v7, v5

    long-to-double v5, p4

    div-double/2addr v7, v5

    double-to-int v5, v7

    invoke-interface {v0, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpProgress(I)V

    .line 253
    iput-wide v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mLastReportTime:J

    .line 259
    .end local v3    # "currentTime":J
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->GenerSignatureDataFromBuff([BIZ)I

    move-result v0

    .line 261
    .local v0, "ret":I
    if-nez v0, :cond_d

    .line 262
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mRsaFileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->verify(Ljava/lang/String;)Z

    move-result v3

    .line 263
    .local v3, "verrifysuccess":Z
    const-string v4, "mega_ota_2.0"

    if-nez v3, :cond_a

    .line 265
    const-string v1, "MegaOtaCbfUtil verify signature failed "

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->deleteFile(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v1, :cond_b

    .line 268
    const-string v4, " signature verification failed"

    invoke-interface {v1, v2, v4}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    goto :goto_3

    .line 273
    :cond_a
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MegaOtaCbfUtil verify signature success, grant permission 777 for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 777 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mZipFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 277
    goto :goto_2

    .line 275
    :catch_4
    move-exception v4

    .line 276
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 278
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    iget-object v4, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v4, :cond_b

    .line 279
    const-string v5, ""

    invoke-interface {v4, v1, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 283
    :cond_b
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_c

    .line 284
    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 290
    :cond_c
    goto :goto_4

    .line 286
    :catch_5
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v4, :cond_d

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " 5 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "verrifysuccess":Z
    :cond_d
    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    const/4 v1, -0x2

    if-ne v0, v1, :cond_10

    .line 295
    :cond_e
    :try_start_6
    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_f

    .line 296
    iget-object v1, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 302
    :cond_f
    goto :goto_5

    .line 298
    :catch_6
    move-exception v1

    .line 299
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/mega/update/sdk/MegaOtaCbfUtil;->mCpListener:Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;

    if-eqz v3, :cond_10

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " 6 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;->onCpResult(ZLjava/lang/String;)V

    .line 304
    .end local v1    # "e":Ljava/io/IOException;
    :cond_10
    :goto_5
    return-void
.end method
