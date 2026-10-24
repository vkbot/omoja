.class public Lorg/apache/poi/hpsf/PropertySetFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 6

    const/16 v0, 0x2d

    .line 6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 7
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v1

    .line 9
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v2

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 11
    invoke-virtual {v0, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    .line 12
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v4

    long-to-int v4, v4

    const v5, 0xfffe

    if-ne v1, v5, :cond_3

    if-nez v2, :cond_3

    if-ltz v4, :cond_3

    if-lez v4, :cond_0

    .line 13
    invoke-virtual {v0, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 15
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    if-lez v4, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/poi/hpsf/ClassID;

    .line 16
    sget-object v3, Lorg/apache/poi/hpsf/SummaryInformation;->FORMAT_ID:Lorg/apache/poi/hpsf/ClassID;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    new-instance v0, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_1
    if-lez v4, :cond_2

    .line 18
    sget-object v1, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->FORMAT_ID:[Lorg/apache/poi/hpsf/ClassID;

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 20
    :cond_2
    new-instance v0, Lorg/apache/poi/hpsf/PropertySet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 21
    :cond_3
    new-instance p0, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    const-string v0, "ByteOrder: "

    const-string v3, ", format: "

    const-string v5, ", sectionCount: "

    .line 22
    invoke-static {v0, v1, v3, v2, v5}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 1

    .line 1
    check-cast p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public static newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    new-instance v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>()V

    return-object v0
.end method

.method public static newSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    new-instance v0, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>()V

    return-object v0
.end method
