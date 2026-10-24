.class public Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;
.super Ljava/lang/Object;
.source "NativeFtpFile.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpFile;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private final file:Ljava/io/File;

.field private final fileName:Ljava/lang/String;

.field private final user:Lorg/apache/ftpserver/ftplet/User;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "user"    # Lorg/apache/ftpserver/ftplet/User;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-class v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    .line 65
    if-eqz p1, :cond_3

    .line 68
    if-eqz p2, :cond_2

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 79
    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    .line 81
    iput-object p3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    .line 82
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileName must be an absolut path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileName can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileName can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createInputStream(J)Ljava/io/InputStream;
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 384
    .local v0, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 388
    new-instance v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$3;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$3;-><init>(Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;Ljava/io/FileDescriptor;Ljava/io/RandomAccessFile;)V

    return-object v1

    .line 379
    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No read permission : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createOutputStream(J)Ljava/io/OutputStream;
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    .local v0, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 359
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 363
    new-instance v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$2;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$2;-><init>(Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;Ljava/io/FileDescriptor;Ljava/io/RandomAccessFile;)V

    return-object v1

    .line 353
    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No write permission : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()Z
    .locals 2

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "retVal":Z
    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 264
    :cond_0
    return v0
.end method

.method public doesExist()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 403
    instance-of v0, p1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    if-eqz v0, :cond_0

    .line 407
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "thisCanonicalPath":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object v1, v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    .line 409
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .local v1, "otherCanonicalPath":Ljava/lang/String;
    nop

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 410
    .end local v0    # "thisCanonicalPath":Ljava/lang/String;
    .end local v1    # "otherCanonicalPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get the canonical path"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 4

    .line 90
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    .line 91
    .local v0, "fullName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 92
    .local v1, "filelen":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 93
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 170
    const-string v0, "group"

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkCount()I
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .line 105
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    return-object v1

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    .line 111
    .local v0, "shortName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 112
    .local v1, "filelen":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 113
    const/4 v2, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 118
    .local v2, "slashIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 119
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_2
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    .line 163
    const-string v0, "user"

    return-object v0
.end method

.method public getPhysicalFile()Ljava/io/File;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public bridge synthetic getPhysicalFile()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getPhysicalFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 156
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 423
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public isDirectory()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isReadable()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public isRemovable()Z
    .locals 6

    .line 227
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 228
    return v1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "fullName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    new-instance v3, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    invoke-direct {v3, v0}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v2

    if-nez v2, :cond_1

    .line 239
    return v1

    .line 242
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 244
    .local v2, "indexOfSlash":I
    if-nez v2, :cond_2

    .line 245
    const-string v1, "/"

    .local v1, "parentFullName":Ljava/lang/String;
    goto :goto_0

    .line 247
    .end local v1    # "parentFullName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 251
    .restart local v1    # "parentFullName":Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object v4, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    .line 252
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    invoke-direct {v3, v1, v4, v5}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    .line 253
    .local v3, "parentObject":Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;
    invoke-virtual {v3}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isWritable()Z

    move-result v4

    return v4
.end method

.method public isWritable()Z
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking authorization for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Not authorized"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Checking if file exists"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking can write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0

    .line 217
    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Authorized"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public listFiles()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/FtpFile;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 312
    return-object v1

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 317
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 318
    return-object v1

    .line 322
    :cond_1
    new-instance v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$1;

    invoke-direct {v1, p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$1;-><init>(Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 329
    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "virtualFileStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_2
    array-length v2, v0

    new-array v2, v2, [Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 336
    .local v2, "virtualFiles":[Lorg/apache/ftpserver/ftplet/FtpFile;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 337
    aget-object v4, v0, v3

    .line 338
    .local v4, "fileObj":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "fileName":Ljava/lang/String;
    new-instance v6, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object v7, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    invoke-direct {v6, v5, v4, v7}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    aput-object v6, v2, v3

    .line 336
    .end local v4    # "fileObj":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    .end local v3    # "i":I
    :cond_3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public mkdir()Z
    .locals 2

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "retVal":Z
    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 295
    :cond_0
    return v0
.end method

.method public move(Lorg/apache/ftpserver/ftplet/FtpFile;)Z
    .locals 3
    .param p1, "dest"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "retVal":Z
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    move-object v1, p1

    check-cast v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object v1, v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    .line 275
    .local v1, "destFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :cond_0
    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 284
    .end local v1    # "destFile":Ljava/io/File;
    :cond_1
    :goto_0
    return v0
.end method

.method public setLastModified(J)Z
    .locals 1
    .param p1, "time"    # J

    .line 191
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    return v0
.end method
