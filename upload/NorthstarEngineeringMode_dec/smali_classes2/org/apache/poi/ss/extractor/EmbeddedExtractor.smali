.class public Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/ss/extractor/EmbeddedExtractor;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTENT_TYPE_BYTES:Ljava/lang/String; = "binary/octet-stream"

.field private static final CONTENT_TYPE_DOC:Ljava/lang/String; = "application/msword"

.field private static final CONTENT_TYPE_PDF:Ljava/lang/String; = "application/pdf"

.field private static final CONTENT_TYPE_XLS:Ljava/lang/String; = "application/vnd.ms-excel"

.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static final LOG:La5/d;

.field private static MAX_RECORD_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->LOG:La5/d;

    const v0, 0xf4240

    sput v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000([BI[B)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->indexOf([BI[B)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100()I
    .locals 1

    sget v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private static computeFailure([B)[I
    .locals 5

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    :goto_1
    if-lez v1, :cond_0

    aget-byte v3, p0, v1

    aget-byte v4, p0, v2

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    goto :goto_1

    :cond_0
    aget-byte v3, p0, v1

    aget-byte v4, p0, v2

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-static {v1, v2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    :try_start_0
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private static indexOf([BI[B)I
    .locals 5

    invoke-static {p2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->computeFailure([B)[I

    move-result-object v0

    array-length v1, p0

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge p1, v3, :cond_4

    :goto_1
    if-lez v1, :cond_1

    aget-byte v3, p2, v1

    aget-byte v4, p0, p1

    if-eq v3, v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    goto :goto_1

    :cond_1
    aget-byte v3, p2, v1

    aget-byte v4, p0, p1

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    array-length v3, p2

    if-ne v1, v3, :cond_3

    array-length p0, p2

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public canExtract(Lorg/apache/poi/ss/usermodel/Picture;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 4

    .line 2
    sget p0, Lorg/apache/commons/io/output/j;->c:I

    .line 3
    new-instance p0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {p0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    const/16 v0, 0x4e20

    .line 4
    invoke-virtual {p0, v0}, Lj4/d;->j(I)V

    invoke-virtual {p0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object p0

    .line 5
    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 7
    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    .line 8
    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedData;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v2

    const-string v3, "binary/octet-stream"

    .line 10
    invoke-direct {v1, p1, v2, v3}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 12
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    .line 13
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 14
    :goto_1
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    .line 15
    :try_start_7
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
.end method

.method public extract(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public extractAll(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/extractor/EmbeddedData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractAll(Lorg/apache/poi/ss/usermodel/ShapeContainer;Ljava/util/List;)V

    return-object v0
.end method

.method public extractAll(Lorg/apache/poi/ss/usermodel/ShapeContainer;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/ShapeContainer<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/extractor/EmbeddedData;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Shape;

    .line 6
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ObjectData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 7
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ObjectData;

    .line 8
    :try_start_0
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ObjectData;->hasDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ObjectData;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractOne(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    .line 10
    :cond_0
    new-instance v3, Lorg/apache/poi/ss/extractor/EmbeddedData;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ObjectData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ObjectData;->getObjectData()[B

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ObjectData;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_2

    :goto_1
    sget-object v3, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->LOG:La5/d;

    .line 11
    invoke-interface {v3}, La5/d;->g()La5/b;

    move-result-object v3

    invoke-interface {v3, v1}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v1

    const-string v3, "Entry not found / readable - ignoring OLE embedding"

    invoke-interface {v1, v3}, La5/b;->f(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/Picture;

    if-eqz v1, :cond_2

    .line 13
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/Picture;

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractOne(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v2

    goto :goto_2

    .line 14
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ShapeContainer;

    if-eqz v1, :cond_3

    .line 15
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ShapeContainer;

    invoke-virtual {p0, v1, p2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractAll(Lorg/apache/poi/ss/usermodel/ShapeContainer;Ljava/util/List;)V

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setShape(Lorg/apache/poi/ss/usermodel/Shape;)V

    .line 17
    invoke-virtual {v2}, Lorg/apache/poi/ss/extractor/EmbeddedData;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const/16 v3, 0x2e

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    :goto_3
    const-string v3, ".bin"

    :goto_4
    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "MBD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "Root Entry"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    :cond_7
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Shape;->getShapeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 21
    invoke-static {v1, v3}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "picture_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    .line 26
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public extractOne(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    .line 2
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public extractOne(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->canExtract(Lorg/apache/poi/ss/usermodel/Picture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extract(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/extractor/EmbeddedExtractor;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x5

    new-array p0, p0, [Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    new-instance v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;

    invoke-direct {v0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    new-instance v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;

    invoke-direct {v0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p0, v1

    new-instance v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;

    invoke-direct {v0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;-><init>()V

    const/4 v1, 0x2

    aput-object v0, p0, v1

    new-instance v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;

    invoke-direct {v0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;-><init>()V

    const/4 v1, 0x3

    aput-object v0, p0, v1

    new-instance v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;

    invoke-direct {v0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;-><init>()V

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
