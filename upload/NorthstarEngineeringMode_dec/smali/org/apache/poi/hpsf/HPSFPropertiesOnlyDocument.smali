.class public Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;
.super Lorg/apache/poi/POIDocument;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method private write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    .line 19
    new-instance v1, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    .line 20
    new-instance p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    .line 21
    invoke-static {v1, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem()V

    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 1

    .line 5
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->create(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_0

    .line 10
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    .line 11
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 12
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 13
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
