.class public Lorg/apache/poi/util/HexRead;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readData(Ljava/io/InputStream;I)[B
    .locals 7

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    move v3, v2

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v5, 0x30

    const/4 v6, -0x1

    if-gt v5, v4, :cond_1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    add-int/lit8 v4, v4, -0x30

    goto :goto_2

    :cond_1
    const/16 v5, 0x41

    if-gt v5, v4, :cond_2

    const/16 v5, 0x46

    if-gt v4, v5, :cond_2

    add-int/lit8 v4, v4, -0x37

    goto :goto_2

    :cond_2
    const/16 v5, 0x61

    if-gt v5, v4, :cond_3

    const/16 v5, 0x66

    if-gt v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x57

    goto :goto_2

    :cond_3
    const/16 v5, 0x23

    if-ne v5, v4, :cond_4

    .line 44
    invoke-static {p0}, Lorg/apache/poi/util/HexRead;->readToEOL(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    if-eq v6, v4, :cond_6

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    move v4, v6

    :goto_2
    if-eq v4, v6, :cond_0

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 45
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 46
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    .line 48
    :goto_4
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 49
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
.end method

.method public static readData(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 6

    .line 7
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    const/16 v4, 0xa

    if-eq v1, v4, :cond_3

    const/16 v4, 0xd

    if-eq v1, v4, :cond_3

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_2

    const/16 v5, 0x5d

    if-eq v1, v5, :cond_0

    if-eqz v3, :cond_4

    int-to-char v1, v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v4}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    .line 12
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 14
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 16
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Section \'"

    const-string v1, "\' not found"

    .line 17
    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :goto_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 20
    throw p1
.end method

.method public static readData(Ljava/lang/String;)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, -0x1

    .line 3
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 6
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static readData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 41
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFromString(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, -0x1

    invoke-static {v0, p0}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readToEOL(Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method
