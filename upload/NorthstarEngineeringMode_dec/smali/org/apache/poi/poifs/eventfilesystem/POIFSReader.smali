.class public Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private notifyEmptyDirectories:Z

.field private final registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

.field private registryClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    invoke-direct {v0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->readEntry(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "at least one argument required: input filename(s)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    new-instance v3, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;

    invoke-direct {v3}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;-><init>()V

    new-instance v4, Lorg/apache/poi/poifs/eventfilesystem/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reading "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->read(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;)V
    .locals 9

    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/DirectoryProperty;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p3, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;[Ljava/lang/String;)V

    check-cast v1, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {p0, p1, v1, v3}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->processProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;)V

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    invoke-virtual {v4, p3, v2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->getListeners(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    move-object v6, v1

    check-cast v6, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v3, v6, p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    :cond_1
    new-instance v6, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v6, v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    :try_start_0
    new-instance v7, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/Property;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v8

    invoke-direct {v7, v6, p3, v2, v8}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;)V

    invoke-interface {v5, v7}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;->processPOIFSReaderEvent(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_2
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_5

    iget-boolean p1, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->notifyEmptyDirectories:Z

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    const-string p1, "."

    invoke-virtual {p0, p3, p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->getListeners(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    new-instance v0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/Property;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-direct {v0, v3, p3, v3, v1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;)V

    invoke-interface {p1, v0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;->processPOIFSReaderEvent(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.method private static readEntry(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->getPath()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->length()I

    move-result v4

    :goto_0
    const/16 v5, 0x2f

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->getComponent(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes read"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;)V
    .locals 2

    .line 6
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    .line 7
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->read(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 10
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

.method public read(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->read(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 4
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 5
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

.method public read(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getPropertyTable()Lorg/apache/poi/poifs/property/PropertyTable;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v0

    .line 13
    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->processProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;)V

    return-void
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    return-void
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registryClosed:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->registry:Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public setNotifyEmptyDirectories(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;->notifyEmptyDirectories:Z

    return-void
.end method
