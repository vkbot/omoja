.class Lorg/apache/logging/log4j/core/net/ssl/FilePasswordProvider;
.super Ljava/lang/Object;
.source "FilePasswordProvider.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;


# instance fields
.field private final passwordPath:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "passwordFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "passwordFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/file/NoSuchFileException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/net/ssl/FilePasswordProvider;->passwordPath:Ljava/nio/file/Path;

    .line 58
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PasswordFile \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPassword()[C
    .locals 6

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "bytes":[B
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/ssl/FilePasswordProvider;->passwordPath:Ljava/nio/file/Path;

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    move-object v0, v2

    .line 68
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 69
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 70
    .local v3, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    new-array v4, v4, [C

    .line 71
    .local v4, "result":[C
    array-length v5, v4

    invoke-virtual {v3, v4, v1, v5}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 72
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 73
    array-length v5, v4

    new-array v5, v5, [C

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    nop

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 74
    :cond_0
    return-object v4

    .line 78
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "decoded":Ljava/nio/CharBuffer;
    .end local v4    # "result":[C
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read password from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/net/ssl/FilePasswordProvider;->passwordPath:Ljava/nio/file/Path;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "bytes":[B
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/FilePasswordProvider;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bytes":[B
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/FilePasswordProvider;
    :goto_0
    if-eqz v0, :cond_1

    .line 79
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_1
    throw v2
.end method
