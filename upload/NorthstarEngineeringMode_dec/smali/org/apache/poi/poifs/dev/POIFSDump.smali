.class public final Lorg/apache/poi/poifs/dev/POIFSDump;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 3
    instance-of v1, v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 5
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    .line 6
    :try_start_0
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 9
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_0

    .line 12
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw p1

    :catchall_3
    move-exception p0

    .line 13
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    .line 14
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 15
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    if-eqz v1, :cond_4

    .line 16
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 17
    new-instance v2, Ljava/io/File;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 19
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not create directory "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_3
    :goto_3
    invoke-static {v1, v2}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping unsupported POIFS entry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static dump(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;ILjava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p2

    .line 24
    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBigBlockSize()I

    move-result p0

    int-to-long p0, p0

    invoke-static {}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMaxRecordLength()I

    move-result v1

    invoke-static {p0, p1, v1}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p0

    .line 26
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    .line 28
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {p2, p0, p3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 30
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void

    .line 31
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_2

    .line 32
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    array-length v0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Must specify at least one file to dump"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v0, :cond_c

    aget-object v6, p0, v3

    const-string v7, "-dumprops"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "-dump-props"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "-dump-properties"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_8

    :cond_1
    const-string v7, "-dumpmini"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "-dump-mini"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "-dump-ministream"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "-dump-mini-stream"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_7

    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Dumping "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array v7, v2, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v7, v8}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v7

    :try_start_0
    new-instance v8, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v8, v7}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_dump"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-interface {v9}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_1
    invoke-static {v9, v6}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    if-eqz v4, :cond_5

    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getHeaderBlock()Lorg/apache/poi/poifs/storage/HeaderBlock;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v9

    const-string/jumbo v10, "properties"

    invoke-static {v8, v9, v10, v6}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;ILjava/lang/String;Ljava/io/File;)V

    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getPropertyTable()Lorg/apache/poi/poifs/property/PropertyTable;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_6

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "No Mini Stream in file"

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v10, "mini-stream"

    invoke-static {v8, v9, v10, v6}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;ILjava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_2
    :try_start_2
    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catchall_1
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v8}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz v7, :cond_8

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    throw v0

    :cond_9
    :goto_7
    move v5, v1

    goto :goto_9

    :cond_a
    :goto_8
    move v4, v1

    :cond_b
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
