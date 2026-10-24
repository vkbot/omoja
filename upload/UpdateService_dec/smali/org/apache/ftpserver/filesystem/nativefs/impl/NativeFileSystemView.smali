.class public Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;
.super Ljava/lang/Object;
.source "NativeFileSystemView.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FileSystemView;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private final caseInsensitive:Z

.field private currDir:Ljava/lang/String;

.field private rootDir:Ljava/lang/String;

.field private final user:Lorg/apache/ftpserver/ftplet/User;


# direct methods
.method protected constructor <init>(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 1
    .param p1, "user"    # Lorg/apache/ftpserver/ftplet/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;-><init>(Lorg/apache/ftpserver/ftplet/User;Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/ftplet/User;Z)V
    .locals 4
    .param p1, "user"    # Lorg/apache/ftpserver/ftplet/User;
    .param p2, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;

    .line 44
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->LOG:Lorg/slf4j/Logger;

    .line 72
    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iput-boolean p2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->caseInsensitive:Z

    .line 83
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "rootDir":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->appendSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Native filesystem view created for user \"{}\" with root \"{}\""

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    iput-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    .line 93
    const-string v1, "/"

    iput-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    .line 94
    return-void

    .line 76
    .end local v0    # "rootDir":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User home directory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private appendSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    :cond_0
    return-object p1
.end method

.method private normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "defaultPath"    # Ljava/lang/String;

    .line 310
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 311
    :cond_0
    move-object p1, p2

    .line 314
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->appendSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->prependSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 316
    return-object p1
.end method

.method private normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pathName"    # Ljava/lang/String;

    .line 300
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "normalizedPathName":Ljava/lang/String;
    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 302
    return-object v0
.end method

.method private prependSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :cond_0
    return-object p1
.end method

.method private trimTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    return-object p1
.end method


# virtual methods
.method public changeWorkingDirectory(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->caseInsensitive:Z

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->getPhysicalName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "dirObj":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const/4 v1, 0x0

    return v1

    .line 148
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_1
    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    .line 154
    return v2
.end method

.method public dispose()V
    .locals 0

    .line 168
    return-void
.end method

.method public getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->caseInsensitive:Z

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->getPhysicalName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "physicalName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "fileObj":Ljava/io/File;
    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "userFileName":Ljava/lang/String;
    new-instance v3, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object v4, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    invoke-direct {v3, v2, v1, v4}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    return-object v3
.end method

.method public getHomeDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 4

    .line 101
    new-instance v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    const-string v3, "/"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    return-object v0
.end method

.method protected getPhysicalName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "rootDir"    # Ljava/lang/String;
    .param p2, "currDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "caseInsensitive"    # Z

    .line 189
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "normalizedRootDir":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->appendSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-direct {p0, p3}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "normalizedFileName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "/"

    const/4 v5, 0x1

    const/16 v6, 0x2f

    if-eq v3, v6, :cond_0

    .line 200
    invoke-direct {p0, p2, v4}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "normalizedCurrDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "result":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    .line 208
    .restart local v3    # "result":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->trimTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v7

    .line 213
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 214
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "tok":Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 219
    :cond_1
    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 221
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 222
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 223
    .local v8, "slashIndex":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 224
    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 226
    .end local v8    # "slashIndex":I
    :cond_2
    goto :goto_2

    .line 227
    :cond_3
    const-string v8, "~"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 229
    invoke-direct {p0, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->trimTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    goto :goto_1

    .line 234
    :cond_4
    if-eqz p4, :cond_5

    .line 236
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;

    invoke-direct {v9, v7, v5}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;-><init>(Ljava/lang/String;Z)V

    .line 237
    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 239
    .local v8, "matches":[Ljava/io/File;
    if-eqz v8, :cond_5

    array-length v9, v8

    if-lez v9, :cond_5

    .line 241
    aget-object v9, v8, v2

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 245
    .end local v8    # "matches":[Ljava/io/File;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .end local v7    # "tok":Ljava/lang/String;
    :cond_6
    :goto_2
    goto :goto_1

    .line 251
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_8

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    :cond_8
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 257
    move-object v3, v0

    .line 260
    :cond_9
    return-object v3
.end method

.method public getWorkingDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 5

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "fileObj":Lorg/apache/ftpserver/ftplet/FtpFile;
    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    move-object v0, v1

    goto :goto_0

    .line 112
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object v3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    move-object v0, v2

    .line 116
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v0
.end method

.method public isRandomAccessible()Z
    .locals 1

    .line 161
    const/4 v0, 0x1

    return v0
.end method
