.class public Lcom/mega/update/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/util/FileHelper$ValueResult;,
        Lcom/mega/update/util/FileHelper$SocketResult;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field public static final PKG_REQ:Ljava/lang/String; = "update/qnx/pkg/req"

.field public static final PKG_RES:Ljava/lang/String; = "update/qnx/pkg/res"

.field public static final SOCKET_REQ:Ljava/lang/String; = "update/qnx/socket/req"

.field public static final SOCKET_RES:Ljava/lang/String; = "update/qnx/socket/res"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/mega/update/util/FileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/mega/update/util/FileHelper;->HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static clearDirectory(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .line 477
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, " clearDirectory "

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 480
    sget-object v1, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "directory does not exist !!!"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return v3

    .line 484
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    sget-object v1, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a file !!!"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v3

    .line 489
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 490
    .local v1, "files":[Ljava/io/File;
    const-string v2, " clearDirectory clear "

    if-eqz v1, :cond_4

    .line 491
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 492
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 493
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mega/update/util/FileHelper;->clearDirectory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 494
    sget-object v4, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return v3

    .line 498
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 499
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 491
    .end local v6    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 504
    :cond_4
    sget-object v3, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v2, 0x1

    return v2
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    const/4 v1, 0x1

    return v1

    .line 442
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    sget-object v1, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    .line 445
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 446
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 447
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mega/update/util/FileHelper;->delete(Ljava/lang/String;)Z

    .line 446
    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    .line 451
    :cond_3
    sget-object v1, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get file attr fail! path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return v2
.end method

.method public static deleteDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mega/update/util/FileHelper;->deleteDirBySuffix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteDirBySuffix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 460
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 464
    :cond_0
    const/4 v1, 0x1

    .line 465
    .local v1, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 466
    .local v5, "f":Ljava/io/File;
    sget-object v6, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteDirBySuffix:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    if-eqz p1, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 468
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mega/update/util/FileHelper;->delete(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v1, v6

    .line 469
    sget-object v6, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteDirBySuffix: delete result "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .end local v5    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_3
    return v1

    .line 462
    .end local v1    # "result":Z
    :cond_4
    :goto_1
    return v2
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 434
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mega/update/util/FileHelper;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 425
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 426
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    .line 427
    .local v2, "b":B
    sget-object v3, Lcom/mega/update/util/FileHelper;->HEX_DIGITS:[C

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    sget-object v3, Lcom/mega/update/util/FileHelper;->HEX_DIGITS:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAvailableSize(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 510
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 512
    .local v1, "blockSize":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v3

    .line 513
    .local v3, "availableBlocks":J
    mul-long v5, v3, v1

    return-wide v5

    .line 514
    .end local v0    # "stat":Landroid/os/StatFs;
    .end local v1    # "blockSize":J
    .end local v3    # "availableBlocks":J
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getFileSHA256(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/util/zip/ZipInputStream;

    .line 405
    const-string v0, ""

    if-nez p0, :cond_0

    .line 406
    return-object v0

    .line 410
    :cond_0
    const/high16 v1, 0x100000

    :try_start_0
    new-array v1, v1, [B

    .line 412
    .local v1, "buffer":[B
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 413
    .local v2, "digest":Ljava/security/MessageDigest;
    :goto_0
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    move v5, v3

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 414
    invoke-virtual {v2, v1, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mega/update/util/FileHelper;->encode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 417
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    return-object v0
.end method

.method public static imageVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "base64"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "zipFile"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 196
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 198
    .local v2, "result":Z
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 199
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 200
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 201
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    invoke-static {v1}, Lcom/mega/update/util/FileHelper;->getFileSHA256(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    const/4 v2, 0x1

    goto :goto_1

    .line 209
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 210
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    move-object v3, v5

    .line 211
    .end local v4    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 212
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 213
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 214
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_5

    .line 215
    :catch_0
    move-exception v3

    .line 216
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    if-eqz v1, :cond_2

    .line 219
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 220
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_2

    .line 225
    :catch_1
    move-exception v4

    goto :goto_3

    .line 222
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 226
    .local v4, "ee":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 227
    .end local v4    # "ee":Ljava/io/IOException;
    :cond_3
    :goto_4
    nop

    .line 229
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    return v2
.end method

.method public static lunchFileFromZip(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "destFile"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "zipInputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 149
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 151
    .local v2, "result":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 152
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 153
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 155
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v3, :cond_4

    .line 156
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    .line 159
    .local v5, "destSize":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_2

    const-wide/32 v7, 0xa00000

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    long-to-int v7, v5

    new-array v7, v7, [B

    .line 163
    .local v7, "buffer":[B
    invoke-virtual {v1, v7}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v8, v5

    if-nez v8, :cond_1

    .line 164
    move-object v2, v7

    .line 167
    .end local v7    # "buffer":[B
    :cond_1
    goto :goto_2

    .line 160
    :cond_2
    :goto_1
    sget-object v7, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zip file size over 10M, can not load to memory, size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 169
    .end local v5    # "destSize":J
    :cond_3
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 170
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    move-object v3, v5

    .line 171
    .end local v4    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 172
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 173
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 174
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    goto :goto_6

    .line 175
    :catch_0
    move-exception v3

    .line 176
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    if-eqz v1, :cond_5

    .line 179
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 180
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_3

    .line 185
    :catch_1
    move-exception v4

    goto :goto_4

    .line 182
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 183
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 186
    .local v4, "ee":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 187
    .end local v4    # "ee":Ljava/io/IOException;
    :cond_6
    :goto_5
    nop

    .line 189
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6
    return-object v2
.end method

.method public static lunchManifest(Ljava/lang/String;Z)Lcom/mega/update/info/ManifestInfo;
    .locals 21
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "verify"    # Z

    .line 44
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 45
    .local v2, "info":Lcom/mega/update/info/ManifestInfo;
    const/4 v3, 0x0

    .line 46
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 47
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v5, v0

    .line 48
    .local v5, "offsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v6, v0

    .line 49
    .local v6, "shaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v0

    .line 51
    .local v7, "sizeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v8, 0x0

    .line 52
    .local v8, "offset":J
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 53
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 54
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 55
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    const-string v11, " offset: "

    const-string v12, " size: "

    if-eqz v0, :cond_7

    .line 56
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 59
    .local v13, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v14

    const-wide/16 v15, 0x0

    if-nez v14, :cond_0

    move-object/from16 v17, v11

    move-wide v10, v15

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v14

    array-length v14, v14

    move-object/from16 v17, v11

    int-to-long v10, v14

    .line 60
    .local v10, "extraSize":J
    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v14, v14, 0x1e

    move-object/from16 v18, v2

    .end local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    .local v18, "info":Lcom/mega/update/info/ManifestInfo;
    int-to-long v1, v14

    add-long/2addr v1, v10

    add-long/2addr v8, v1

    .line 62
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v2, "OTA package don\'t have directory"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    move-object/from16 v16, v0

    goto/16 :goto_3

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v1

    .line 68
    .local v1, "length":J
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v14

    if-nez v14, :cond_6

    .line 72
    const-string v14, "manifest.json"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 73
    cmp-long v14, v1, v15

    if-ltz v14, :cond_3

    const-wide/32 v14, 0x100000

    cmp-long v14, v1, v14

    if-lez v14, :cond_2

    move-object/from16 v16, v0

    move-wide/from16 v19, v10

    goto :goto_2

    .line 77
    :cond_2
    long-to-int v12, v1

    new-array v12, v12, [B

    .line 78
    .local v12, "buffer":[B
    invoke-virtual {v4, v12}, Ljava/util/zip/ZipInputStream;->read([B)I

    .line 79
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v12}, Ljava/lang/String;-><init>([B)V

    .line 80
    .local v14, "maniJson":Ljava/lang/String;
    sget-object v15, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .local v16, "entry":Ljava/util/zip/ZipEntry;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v19, v10

    .end local v10    # "extraSize":J
    .local v19, "extraSize":J
    const-string v10, "manifest.json:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v10, Lcom/mega/update/util/FileHelper$1;

    invoke-direct {v10}, Lcom/mega/update/util/FileHelper$1;-><init>()V

    .line 82
    invoke-virtual {v10}, Lcom/mega/update/util/FileHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 81
    invoke-virtual {v0, v14, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/info/ManifestInfo;

    .line 83
    .end local v12    # "buffer":[B
    .end local v14    # "maniJson":Ljava/lang/String;
    .end local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    .local v0, "info":Lcom/mega/update/info/ManifestInfo;
    move-object/from16 v18, v0

    goto :goto_4

    .line 73
    .end local v16    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "extraSize":J
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "extraSize":J
    .restart local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    :cond_3
    move-object/from16 v16, v0

    move-wide/from16 v19, v10

    .line 74
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "extraSize":J
    .restart local v16    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "extraSize":J
    :goto_2
    sget-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "manifest.json size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " over 1M, invalid file!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    nop

    .line 97
    .end local v1    # "length":J
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "extraSize":J
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    :goto_3
    move-object/from16 v11, v17

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v16    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_5

    .line 85
    .end local v16    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "length":J
    .restart local v10    # "extraSize":J
    .restart local v13    # "name":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v0

    move-wide/from16 v19, v10

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "extraSize":J
    .restart local v16    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "extraSize":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    if-eqz p1, :cond_5

    .line 88
    invoke-static {v4}, Lcom/mega/update/util/FileHelper;->getFileSHA256(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_5
    sget-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "find package file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v11, v17

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_4
    add-long/2addr v8, v1

    .line 94
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 95
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 96
    .end local v1    # "length":J
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "extraSize":J
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 69
    .restart local v1    # "length":J
    .restart local v10    # "extraSize":J
    .restart local v13    # "name":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v0

    move-wide/from16 v19, v10

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "extraSize":J
    .restart local v16    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "extraSize":J
    new-instance v0, Ljava/io/IOException;

    const-string v10, "Invalid compression method."

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .end local v5    # "offsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "shaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "sizeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    .end local p0    # "zipFile":Ljava/lang/String;
    .end local p1    # "verify":Z
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .end local v1    # "length":J
    .end local v8    # "offset":J
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "extraSize":J
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "offsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v6    # "shaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "sizeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local p0    # "zipFile":Ljava/lang/String;
    .restart local p1    # "verify":Z
    :catch_0
    move-exception v0

    move-object/from16 v8, p0

    move-object/from16 v2, v18

    goto/16 :goto_a

    .end local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v8, p0

    .end local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    goto/16 :goto_a

    .line 55
    .end local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v8    # "offset":J
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 97
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v16    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    :goto_5
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 98
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 99
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 115
    .end local v8    # "offset":J
    .end local v16    # "entry":Ljava/util/zip/ZipEntry;
    nop

    .line 117
    if-eqz v18, :cond_d

    .line 118
    move-object/from16 v2, v18

    .end local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    iget-object v0, v2, Lcom/mega/update/info/ManifestInfo;->softwareinfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 119
    .local v1, "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    iget-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 120
    sget-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " file not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v8, 0x0

    return-object v8

    .line 123
    :cond_8
    if-eqz p1, :cond_9

    iget-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->sha256:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 124
    sget-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " hash mismatch, expect:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->sha256:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , actually: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    .line 125
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-static {v0, v8}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v8, 0x0

    return-object v8

    .line 128
    :cond_9
    iget-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filesize:J

    .line 129
    iget-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    .line 130
    move-object/from16 v8, p0

    iput-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_file:Ljava/lang/String;

    .line 131
    sget-object v9, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " filename: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filesize:J

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-boolean v9, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->multi:Z

    if-eqz v9, :cond_b

    .line 134
    iget-object v9, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mega/update/info/ManifestInfo$VendorInfo;

    .line 135
    .local v10, "vendor":Lcom/mega/update/info/ManifestInfo$VendorInfo;
    iget-object v14, v10, Lcom/mega/update/info/ManifestInfo$VendorInfo;->filename:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v10, Lcom/mega/update/info/ManifestInfo$VendorInfo;->filesize:J

    .line 136
    iget-object v14, v10, Lcom/mega/update/info/ManifestInfo$VendorInfo;->filename:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v10, Lcom/mega/update/info/ManifestInfo$VendorInfo;->package_offset:J

    .line 137
    sget-object v14, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "vendor "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/mega/update/info/ManifestInfo$VendorInfo;->vendor_id:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/mega/update/info/ManifestInfo$VendorInfo;->filename:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v1

    .end local v1    # "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .local v17, "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    iget-wide v0, v10, Lcom/mega/update/info/ManifestInfo$VendorInfo;->filesize:J

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v10, Lcom/mega/update/info/ManifestInfo$VendorInfo;->package_offset:J

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v10    # "vendor":Lcom/mega/update/info/ManifestInfo$VendorInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_7

    .line 134
    .end local v17    # "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .restart local v1    # "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    :cond_a
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v1    # "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .restart local v17    # "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    goto :goto_8

    .line 133
    .end local v17    # "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .restart local v1    # "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    :cond_b
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 141
    .end local v1    # "dev":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    :goto_8
    move-object/from16 v0, v16

    goto/16 :goto_6

    .line 118
    :cond_c
    move-object/from16 v8, p0

    goto :goto_9

    .line 117
    .end local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    :cond_d
    move-object/from16 v8, p0

    move-object/from16 v2, v18

    .line 143
    .end local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    :goto_9
    return-object v2

    .line 100
    .end local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    :catch_2
    move-exception v0

    move-object/from16 v8, p0

    move-object/from16 v2, v18

    .end local v18    # "info":Lcom/mega/update/info/ManifestInfo;
    .restart local v2    # "info":Lcom/mega/update/info/ManifestInfo;
    goto :goto_a

    :catch_3
    move-exception v0

    move-object v8, v1

    :goto_a
    move-object v1, v0

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    sget-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Lunch Manifest fail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz v4, :cond_e

    .line 105
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 106
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_b

    .line 111
    :catch_4
    move-exception v0

    goto :goto_c

    .line 108
    :cond_e
    :goto_b
    if-eqz v3, :cond_f

    .line 109
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_d

    .line 112
    .local v0, "ee":Ljava/io/IOException;
    :goto_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 113
    .end local v0    # "ee":Ljava/io/IOException;
    :cond_f
    :goto_d
    nop

    .line 114
    :goto_e
    const/4 v9, 0x0

    return-object v9
.end method

.method private static pkgRequest(JLjava/lang/String;)Lcom/mega/update/util/FileHelper$SocketResult;
    .locals 5
    .param p0, "fileLenght"    # J
    .param p2, "filename"    # Ljava/lang/String;

    .line 241
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/qnx/pkg/req"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"filename\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"length\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "update/qnx/pkg/res"

    const/16 v4, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 247
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/mega/update/util/FileHelper$2;

    invoke-direct {v3}, Lcom/mega/update/util/FileHelper$2;-><init>()V

    invoke-virtual {v3}, Lcom/mega/update/util/FileHelper$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/util/FileHelper$SocketResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .local v2, "ret":Lcom/mega/update/util/FileHelper$SocketResult;
    return-object v2

    .line 249
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "res":Ljava/lang/String;
    .end local v2    # "ret":Lcom/mega/update/util/FileHelper$SocketResult;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static sendFileToQnx(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 369
    .local v1, "zipInputStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 371
    .local v2, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 372
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 373
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 374
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v3, :cond_1

    .line 375
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    .line 379
    .local v5, "destSize":J
    goto :goto_1

    .line 381
    .end local v5    # "destSize":J
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 382
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    move-object v3, v5

    .line 383
    .end local v4    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 384
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 385
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 386
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    goto :goto_5

    .line 387
    :catch_0
    move-exception v3

    .line 388
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 390
    if-eqz v2, :cond_2

    .line 391
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 392
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_2

    .line 397
    :catch_1
    move-exception v4

    goto :goto_3

    .line 394
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 395
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 398
    .local v4, "ee":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 399
    .end local v4    # "ee":Ljava/io/IOException;
    :cond_3
    :goto_4
    nop

    .line 401
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    return v0
.end method

.method public static socketSendFile(Ljava/lang/String;JLjava/lang/String;J)Z
    .locals 25
    .param p0, "packageFile"    # Ljava/lang/String;
    .param p1, "offset"    # J
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileLenght"    # J

    .line 261
    move-wide/from16 v1, p4

    const-string v3, "socket close fail!"

    const-string v4, "file stream close fail!"

    move-object/from16 v5, p3

    invoke-static {v1, v2, v5}, Lcom/mega/update/util/FileHelper;->pkgRequest(JLjava/lang/String;)Lcom/mega/update/util/FileHelper$SocketResult;

    move-result-object v6

    .line 262
    .local v6, "msgRet":Lcom/mega/update/util/FileHelper$SocketResult;
    const-string v7, " desc:"

    const/4 v8, 0x0

    if-eqz v6, :cond_10

    iget v0, v6, Lcom/mega/update/util/FileHelper$SocketResult;->result:I

    if-nez v0, :cond_10

    iget-object v0, v6, Lcom/mega/update/util/FileHelper$SocketResult;->ipaddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, v6, Lcom/mega/update/util/FileHelper$SocketResult;->port:I

    if-nez v0, :cond_0

    move-object v4, v7

    goto/16 :goto_c

    .line 268
    :cond_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v9, "update/qnx/socket/req"

    const-string v10, "1"

    invoke-virtual {v0, v9, v10}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    sget-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v3, "socket request error"

    invoke-static {v0, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return v8

    .line 272
    :cond_1
    iget-object v9, v6, Lcom/mega/update/util/FileHelper$SocketResult;->ipaddr:Ljava/lang/String;

    .line 273
    .local v9, "ipaddr":Ljava/lang/String;
    iget v10, v6, Lcom/mega/update/util/FileHelper$SocketResult;->port:I

    .line 274
    .local v10, "port":I
    const/4 v11, 0x0

    .line 275
    .local v11, "socket":Ljava/net/Socket;
    const/4 v12, 0x0

    .line 276
    .local v12, "output":Ljava/io/OutputStream;
    new-instance v0, Lcom/mega/update/util/FileHelper$ValueResult;

    const/4 v13, 0x0

    invoke-direct {v0, v13}, Lcom/mega/update/util/FileHelper$ValueResult;-><init>(Lcom/mega/update/util/FileHelper$1;)V

    move-object v13, v0

    .line 277
    .local v13, "wapper":Lcom/mega/update/util/FileHelper$ValueResult;, "Lcom/mega/update/util/FileHelper$ValueResult<Ljava/util/ArrayList<Ljava/lang/Byte;>;>;"
    new-instance v0, Lcom/mega/update/util/FileHelper$3;

    invoke-direct {v0, v13}, Lcom/mega/update/util/FileHelper$3;-><init>(Lcom/mega/update/util/FileHelper$ValueResult;)V

    move-object v14, v0

    .line 288
    .local v14, "resCallback":Lcom/mega/update/rpc/MegaConnector$Callback;
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v15, "update/qnx/socket/res"

    invoke-virtual {v0, v14, v15}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 289
    const/16 v16, 0x0

    .line 291
    .local v16, "input":Ljava/io/FileInputStream;
    const-wide/16 v17, 0x7d0

    :try_start_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V

    .line 292
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v8, p0

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object/from16 v16, v0

    .line 293
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v5, v16

    move-wide/from16 v11, p1

    .end local v11    # "socket":Ljava/net/Socket;
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v16    # "input":Ljava/io/FileInputStream;
    .local v5, "input":Ljava/io/FileInputStream;
    .local v18, "socket":Ljava/net/Socket;
    .local v19, "output":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v5, v11, v12}, Ljava/io/FileInputStream;->skip(J)J

    .line 294
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v13, Lcom/mega/update/util/FileHelper$ValueResult;->countDown:Ljava/util/concurrent/CountDownLatch;

    .line 295
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v9, v10}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v16, v0

    .line 296
    .end local v18    # "socket":Ljava/net/Socket;
    .local v16, "socket":Ljava/net/Socket;
    const v0, 0xea60

    move-object/from16 v8, v16

    .end local v16    # "socket":Ljava/net/Socket;
    .local v8, "socket":Ljava/net/Socket;
    :try_start_2
    invoke-virtual {v8, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 297
    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v16, v0

    .line 298
    .end local v19    # "output":Ljava/io/OutputStream;
    .local v16, "output":Ljava/io/OutputStream;
    const/high16 v0, 0x100000

    :try_start_3
    new-array v0, v0, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 299
    .local v0, "buffer":[B
    const-wide/16 v18, 0x0

    .line 300
    .local v18, "sended":J
    const/16 v20, 0x0

    .line 301
    .local v20, "len":I
    const/16 v21, 0x0

    move/from16 v24, v21

    move-object/from16 v21, v9

    move/from16 v9, v24

    .line 302
    .local v9, "old_p":I
    .local v21, "ipaddr":Ljava/lang/String;
    :goto_0
    :try_start_4
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v22
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v23, v22

    .end local v20    # "len":I
    .local v23, "len":I
    if-lez v22, :cond_5

    .line 303
    move/from16 v20, v10

    move/from16 v10, v23

    .end local v23    # "len":I
    .local v10, "len":I
    .local v20, "port":I
    int-to-long v11, v10

    add-long v11, v18, v11

    cmp-long v11, v11, v1

    if-lez v11, :cond_2

    .line 304
    sub-long v11, v1, v18

    long-to-int v10, v11

    .line 306
    :cond_2
    int-to-long v11, v10

    add-long v18, v18, v11

    .line 307
    const-wide/16 v11, 0xa

    mul-long v11, v11, v18

    :try_start_5
    div-long/2addr v11, v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    long-to-int v11, v11

    .line 309
    .local v11, "progress":I
    move-object/from16 v22, v7

    move-object/from16 v12, v16

    const/4 v7, 0x0

    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    :try_start_6
    invoke-virtual {v12, v0, v7, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 310
    if-eq v9, v11, :cond_3

    .line 311
    move v7, v11

    .line 312
    .end local v9    # "old_p":I
    .local v7, "old_p":I
    sget-object v9, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v0    # "buffer":[B
    .local v16, "buffer":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v7

    .end local v7    # "old_p":I
    .local v23, "old_p":I
    const-string v7, "socket send file progress "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "0%"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v9, v23

    goto :goto_1

    .line 310
    .end local v16    # "buffer":[B
    .end local v23    # "old_p":I
    .restart local v0    # "buffer":[B
    .restart local v9    # "old_p":I
    :cond_3
    move-object/from16 v16, v0

    .line 314
    .end local v0    # "buffer":[B
    .restart local v16    # "buffer":[B
    :goto_1
    cmp-long v0, v18, v1

    if-nez v0, :cond_4

    .line 315
    move/from16 v23, v10

    goto :goto_2

    .line 317
    .end local v11    # "progress":I
    :cond_4
    move-object/from16 v0, v16

    move-object/from16 v7, v22

    move-object/from16 v16, v12

    move-wide/from16 v11, p1

    move/from16 v24, v20

    move/from16 v20, v10

    move/from16 v10, v24

    goto :goto_0

    .line 325
    .end local v9    # "old_p":I
    .end local v10    # "len":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v18    # "sended":J
    .local v16, "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v12, v16

    move-object/from16 v16, v5

    move-object v11, v8

    move-object v5, v0

    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    goto/16 :goto_9

    .line 319
    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    move-object/from16 v12, v16

    move-object/from16 v16, v5

    move-object v11, v8

    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    goto/16 :goto_6

    .line 302
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .restart local v0    # "buffer":[B
    .restart local v9    # "old_p":I
    .local v10, "port":I
    .restart local v16    # "output":Ljava/io/OutputStream;
    .restart local v18    # "sended":J
    .local v23, "len":I
    :cond_5
    move-object/from16 v22, v7

    move/from16 v20, v10

    move-object/from16 v12, v16

    move/from16 v10, v23

    move-object/from16 v16, v0

    .line 318
    .end local v0    # "buffer":[B
    .end local v10    # "port":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .local v16, "buffer":[B
    .restart local v20    # "port":I
    :goto_2
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 325
    .end local v9    # "old_p":I
    .end local v16    # "buffer":[B
    .end local v18    # "sended":J
    .end local v23    # "len":I
    nop

    .line 327
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 330
    goto :goto_3

    .line 328
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 329
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 334
    :try_start_8
    invoke-virtual {v8}, Ljava/net/Socket;->shutdownOutput()V

    .line 335
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 336
    :cond_6
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 337
    :catch_2
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 344
    :try_start_9
    sget-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v3, "wait for socket result 3s"

    invoke-static {v0, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, v13, Lcom/mega/update/util/FileHelper$ValueResult;->countDown:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0xbb8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 346
    .local v0, "waitState":Z
    if-nez v0, :cond_7

    .line 347
    sget-object v3, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v4, "socket result timeout!"

    invoke-static {v3, v4}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Lcom/mega/update/rpc/MegaConnector;->removeCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 349
    const/4 v3, 0x0

    return v3

    .line 351
    :cond_7
    if-eqz v6, :cond_9

    iget v3, v6, Lcom/mega/update/util/FileHelper$SocketResult;->result:I

    if-eqz v3, :cond_8

    goto :goto_5

    .line 362
    .end local v0    # "waitState":Z
    :cond_8
    nop

    .line 363
    const/4 v3, 0x1

    return v3

    .line 352
    .restart local v0    # "waitState":Z
    :cond_9
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket result fail, code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/mega/update/util/FileHelper$SocketResult;->result:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/mega/update/util/FileHelper$SocketResult;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "msg":Ljava/lang/String;
    sget-object v4, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Lcom/mega/update/rpc/MegaConnector;->removeCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 355
    const/4 v4, 0x0

    return v4

    .line 357
    .end local v0    # "waitState":Z
    .end local v3    # "msg":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v4, "socket response error!"

    invoke-static {v3, v4}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Lcom/mega/update/rpc/MegaConnector;->removeCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 361
    const/4 v3, 0x0

    return v3

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v5

    move-object v11, v8

    move-object v5, v0

    goto/16 :goto_9

    .line 319
    :catch_4
    move-exception v0

    move-object/from16 v16, v5

    move-object v11, v8

    goto/16 :goto_6

    .line 325
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .restart local v10    # "port":I
    .local v16, "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    move/from16 v20, v10

    move-object/from16 v12, v16

    move-object/from16 v16, v5

    move-object v11, v8

    move-object v5, v0

    .end local v10    # "port":I
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v20    # "port":I
    goto/16 :goto_9

    .line 319
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .restart local v10    # "port":I
    .restart local v16    # "output":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move/from16 v20, v10

    move-object/from16 v12, v16

    move-object/from16 v16, v5

    move-object v11, v8

    .end local v10    # "port":I
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v20    # "port":I
    goto/16 :goto_6

    .line 325
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .end local v21    # "ipaddr":Ljava/lang/String;
    .local v9, "ipaddr":Ljava/lang/String;
    .restart local v10    # "port":I
    .restart local v16    # "output":Ljava/io/OutputStream;
    :catchall_3
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v12, v16

    move-object/from16 v16, v5

    move-object v11, v8

    move-object v5, v0

    .end local v9    # "ipaddr":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v20    # "port":I
    .restart local v21    # "ipaddr":Ljava/lang/String;
    goto/16 :goto_9

    .line 319
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .end local v21    # "ipaddr":Ljava/lang/String;
    .restart local v9    # "ipaddr":Ljava/lang/String;
    .restart local v10    # "port":I
    .restart local v16    # "output":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v12, v16

    move-object/from16 v16, v5

    move-object v11, v8

    .end local v9    # "ipaddr":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v20    # "port":I
    .restart local v21    # "ipaddr":Ljava/lang/String;
    goto :goto_6

    .line 325
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .end local v21    # "ipaddr":Ljava/lang/String;
    .restart local v9    # "ipaddr":Ljava/lang/String;
    .restart local v10    # "port":I
    .restart local v19    # "output":Ljava/io/OutputStream;
    :catchall_4
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v16, v5

    move-object v11, v8

    move-object/from16 v12, v19

    move-object v5, v0

    .end local v9    # "ipaddr":Ljava/lang/String;
    .end local v10    # "port":I
    .restart local v20    # "port":I
    .restart local v21    # "ipaddr":Ljava/lang/String;
    goto/16 :goto_9

    .line 319
    .end local v20    # "port":I
    .end local v21    # "ipaddr":Ljava/lang/String;
    .restart local v9    # "ipaddr":Ljava/lang/String;
    .restart local v10    # "port":I
    :catch_7
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v16, v5

    move-object v11, v8

    move-object/from16 v12, v19

    .end local v9    # "ipaddr":Ljava/lang/String;
    .end local v10    # "port":I
    .restart local v20    # "port":I
    .restart local v21    # "ipaddr":Ljava/lang/String;
    goto :goto_6

    .line 325
    .end local v8    # "socket":Ljava/net/Socket;
    .end local v20    # "port":I
    .end local v21    # "ipaddr":Ljava/lang/String;
    .restart local v9    # "ipaddr":Ljava/lang/String;
    .restart local v10    # "port":I
    .local v18, "socket":Ljava/net/Socket;
    :catchall_5
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v16, v5

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object v5, v0

    .end local v9    # "ipaddr":Ljava/lang/String;
    .end local v10    # "port":I
    .restart local v20    # "port":I
    .restart local v21    # "ipaddr":Ljava/lang/String;
    goto :goto_9

    .line 319
    .end local v20    # "port":I
    .end local v21    # "ipaddr":Ljava/lang/String;
    .restart local v9    # "ipaddr":Ljava/lang/String;
    .restart local v10    # "port":I
    :catch_8
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v16, v5

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    .end local v9    # "ipaddr":Ljava/lang/String;
    .end local v10    # "port":I
    .restart local v20    # "port":I
    .restart local v21    # "ipaddr":Ljava/lang/String;
    goto :goto_6

    .line 325
    .end local v5    # "input":Ljava/io/FileInputStream;
    .end local v18    # "socket":Ljava/net/Socket;
    .end local v19    # "output":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .end local v21    # "ipaddr":Ljava/lang/String;
    .restart local v9    # "ipaddr":Ljava/lang/String;
    .restart local v10    # "port":I
    .local v11, "socket":Ljava/net/Socket;
    .restart local v12    # "output":Ljava/io/OutputStream;
    .local v16, "input":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object v5, v0

    .end local v9    # "ipaddr":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v11    # "socket":Ljava/net/Socket;
    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v18    # "socket":Ljava/net/Socket;
    .restart local v19    # "output":Ljava/io/OutputStream;
    .restart local v20    # "port":I
    .restart local v21    # "ipaddr":Ljava/lang/String;
    goto :goto_9

    .line 319
    .end local v18    # "socket":Ljava/net/Socket;
    .end local v19    # "output":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .end local v21    # "ipaddr":Ljava/lang/String;
    .restart local v9    # "ipaddr":Ljava/lang/String;
    .restart local v10    # "port":I
    .restart local v11    # "socket":Ljava/net/Socket;
    .restart local v12    # "output":Ljava/io/OutputStream;
    :catch_9
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    .end local v9    # "ipaddr":Ljava/lang/String;
    .end local v10    # "port":I
    .restart local v20    # "port":I
    .restart local v21    # "ipaddr":Ljava/lang/String;
    :goto_6
    move-object v5, v0

    .line 320
    .local v5, "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v0, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v7, "socket connect error!"

    invoke-static {v0, v7}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Lcom/mega/update/rpc/MegaConnector;->removeCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 323
    nop

    .line 325
    if-eqz v16, :cond_a

    .line 327
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 330
    goto :goto_7

    .line 328
    :catch_a
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 329
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_7
    if-eqz v11, :cond_c

    .line 334
    :try_start_c
    invoke-virtual {v11}, Ljava/net/Socket;->shutdownOutput()V

    .line 335
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 336
    :cond_b
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 339
    goto :goto_8

    .line 337
    :catch_b
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_8
    const/4 v3, 0x0

    return v3

    .line 325
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_7
    move-exception v0

    move-object v5, v0

    :goto_9
    if-eqz v16, :cond_d

    .line 327
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 330
    goto :goto_a

    .line 328
    :catch_c
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 329
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d
    :goto_a
    if-eqz v11, :cond_f

    .line 334
    :try_start_e
    invoke-virtual {v11}, Ljava/net/Socket;->shutdownOutput()V

    .line 335
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 336
    :cond_e
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 339
    goto :goto_b

    .line 337
    :catch_d
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :cond_f
    :goto_b
    throw v5

    .line 262
    .end local v11    # "socket":Ljava/net/Socket;
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v13    # "wapper":Lcom/mega/update/util/FileHelper$ValueResult;, "Lcom/mega/update/util/FileHelper$ValueResult<Ljava/util/ArrayList<Ljava/lang/Byte;>;>;"
    .end local v14    # "resCallback":Lcom/mega/update/rpc/MegaConnector$Callback;
    .end local v16    # "input":Ljava/io/FileInputStream;
    .end local v20    # "port":I
    .end local v21    # "ipaddr":Ljava/lang/String;
    :cond_10
    move-object v4, v7

    .line 263
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package request fail, code:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/mega/update/util/FileHelper$SocketResult;->result:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/mega/update/util/FileHelper$SocketResult;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "errMsg":Ljava/lang/String;
    sget-object v3, Lcom/mega/update/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v3, 0x0

    return v3
.end method
