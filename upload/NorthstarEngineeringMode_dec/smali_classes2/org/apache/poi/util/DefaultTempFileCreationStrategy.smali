.class public Lorg/apache/poi/util/DefaultTempFileCreationStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/TempFileCreationStrategy;


# static fields
.field public static final DELETE_FILES_ON_EXIT:Ljava/lang/String; = "poi.delete.tmp.files.on.exit"

.field public static final POIFILES:Ljava/lang/String; = "poifiles"


# instance fields
.field private volatile dir:Ljava/io/File;

.field private final dirLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dirLock:Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    return-void
.end method

.method private createPOIFilesDirectory()V
    .locals 5

    const-string v0, "Could not create temporary directory. \'"

    iget-object v1, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    if-nez v1, :cond_4

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dirLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "poifiles"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v2, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' exists but is not a directory."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-array v0, v4, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dirLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dirLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "System\'s temporary directory not defined - set the -Djava.io.tmpdir jvm property!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public createTempDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createPOIFilesDirectory()V

    iget-object p0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, p1, v0}, Ljava/nio/file/Files;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    return-object p0
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createPOIFilesDirectory()V

    iget-object p0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, p1, p2, v0}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    const-string p1, "poi.delete.tmp.files.on.exit"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    return-object p0
.end method
