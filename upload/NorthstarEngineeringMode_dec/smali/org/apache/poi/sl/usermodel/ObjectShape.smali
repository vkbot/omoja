.class public interface abstract Lorg/apache/poi/sl/usermodel/ObjectShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shape;
.implements Lorg/apache/poi/sl/usermodel/PlaceableShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;+",
        "Lorg/apache/poi/sl/usermodel/TextRun;",
        ">;>",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;",
        "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
        "TS;TP;>;"
    }
.end annotation


# virtual methods
.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getObjectData()Lorg/apache/poi/sl/usermodel/ObjectData;
.end method

.method public abstract getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;
.end method

.method public abstract getProgId()Ljava/lang/String;
.end method

.method public readObjectData()Ljava/io/InputStream;
    .locals 9

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ObjectShape;->getProgId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->lookup(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    move-result-object v0

    sget v1, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v1

    :try_start_0
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ObjectShape;->readObjectDataRaw()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v2, v3, :cond_6

    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v2, p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x5

    :try_start_2
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->getMetaData()Lorg/apache/poi/sl/usermodel/ObjectMetaData;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getOleEntry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v6, 0x0

    aput-object v0, v4, v6

    const-string v0, "Package"

    const/4 v7, 0x1

    aput-object v0, v4, v7

    const-string v0, "Contents"

    const/4 v7, 0x2

    aput-object v0, v4, v7

    const-string v0, "CONTENTS"

    const/4 v7, 0x3

    aput-object v0, v4, v7

    const-string v0, "CONTENTSV30"

    const/4 v7, 0x4

    aput-object v0, v4, v7

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    :goto_1
    if-ge v6, v3, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v0, v7}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v5, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_2
    if-nez v5, :cond_3

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v5}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v4

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v3

    :try_start_a
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v2

    :try_start_b
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v3

    :cond_6
    invoke-static {p0, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    :goto_7
    invoke-virtual {v1}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz p0, :cond_7

    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p0

    goto :goto_b

    :cond_7
    :goto_8
    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->close()V

    return-object v0

    :goto_9
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception v2

    if-eqz p0, :cond_8

    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception p0

    :try_start_f
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_a
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :goto_b
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception v0

    :try_start_11
    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Ole object hasn\'t been initialized or provided in the source xml. use updateObjectData() first or check the corresponding slideXXX.xml"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readObjectDataRaw()Ljava/io/InputStream;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ObjectShape;->getObjectData()Lorg/apache/poi/sl/usermodel/ObjectData;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ObjectData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public abstract updateObjectData(Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;Lorg/apache/poi/sl/usermodel/ObjectMetaData;)Ljava/io/OutputStream;
.end method
