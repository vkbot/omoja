.class public Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;
.super Ljava/lang/Object;
.source "NativeFileSystemFactory.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FileSystemFactory;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private caseInsensitive:Z

.field private createHome:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;

    .line 40
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->LOG:Lorg/slf4j/Logger;

    .line 39
    return-void
.end method


# virtual methods
.method public createFileSystemView(Lorg/apache/ftpserver/ftplet/User;)Lorg/apache/ftpserver/ftplet/FileSystemView;
    .locals 5
    .param p1, "user"    # Lorg/apache/ftpserver/ftplet/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 85
    monitor-enter p1

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->createHome:Z

    if-eqz v0, :cond_2

    .line 88
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "homeDirStr":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "homeDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create user home :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 96
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create user home :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;
    .end local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    throw v2

    .line 91
    .restart local p0    # "this":Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;
    .restart local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    :cond_1
    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a directory :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 92
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a directory :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;
    .end local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    throw v2

    .line 101
    .end local v0    # "homeDirStr":Ljava/lang/String;
    .end local v1    # "homeDir":Ljava/io/File;
    .restart local p0    # "this":Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;
    .restart local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    :cond_2
    :goto_0
    new-instance v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;

    iget-boolean v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->caseInsensitive:Z

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;-><init>(Lorg/apache/ftpserver/ftplet/User;Z)V

    .line 103
    .local v0, "fsView":Lorg/apache/ftpserver/ftplet/FileSystemView;
    monitor-exit p1

    return-object v0

    .line 104
    .end local v0    # "fsView":Lorg/apache/ftpserver/ftplet/FileSystemView;
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCaseInsensitive()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->caseInsensitive:Z

    return v0
.end method

.method public isCreateHome()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->createHome:Z

    return v0
.end method

.method public setCaseInsensitive(Z)V
    .locals 0
    .param p1, "caseInsensitive"    # Z

    .line 78
    iput-boolean p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->caseInsensitive:Z

    .line 79
    return-void
.end method

.method public setCreateHome(Z)V
    .locals 0
    .param p1, "createHome"    # Z

    .line 60
    iput-boolean p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->createHome:Z

    .line 61
    return-void
.end method
