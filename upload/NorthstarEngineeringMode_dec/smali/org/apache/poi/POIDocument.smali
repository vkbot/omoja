.class public abstract Lorg/apache/poi/POIDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

.field private initialized:Z

.field private sInf:Lorg/apache/poi/hpsf/SummaryInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/POIDocument;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIDocument;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private readPropertySet(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    sget-object p1, Lorg/apache/poi/POIDocument;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    const-string/jumbo p2, "{} property set came back with wrong class - {}"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p2, p0}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sget-object p0, Lorg/apache/poi/POIDocument;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string/jumbo p1, "{} property set came back as null"

    invoke-interface {p0, v0, p1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lorg/apache/poi/POIDocument;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->h()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "can\'t retrieve property set"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1

    .line 3
    :try_start_0
    sget p0, Lorg/apache/commons/io/output/j;->c:I

    .line 4
    new-instance p0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {p0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/hpsf/WritingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    new-instance v0, Lorg/apache/poi/hpsf/PropertySet;

    invoke-direct {v0, p2}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 7
    invoke-virtual {v0, p0}, Lorg/apache/poi/hpsf/PropertySet;->write(Ljava/io/OutputStream;)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {p3, p2, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_0

    .line 10
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_0
    sget-object p2, Lorg/apache/poi/POIDocument;->LOG:La5/d;

    .line 11
    invoke-interface {p2}, La5/d;->f()La5/b;

    move-result-object p2

    const-string p3, "Wrote property set {} of size {}"

    invoke-virtual {p0}, Lorg/apache/commons/io/output/j;->size()I

    move-result v0

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1, p3, v0}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_4
    .catch Lorg/apache/poi/hpsf/WritingNotSupportedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catchall_1
    move-exception p3

    .line 13
    :try_start_5
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p2, :cond_1

    .line 14
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_7
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 15
    :goto_2
    :try_start_8
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p3

    .line 16
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p0

    :try_start_a
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p3
    :try_end_a
    .catch Lorg/apache/poi/hpsf/WritingNotSupportedException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    sget-object p0, Lorg/apache/poi/POIDocument;->LOG:La5/d;

    .line 17
    invoke-interface {p0}, La5/d;->h()La5/b;

    move-result-object p0

    const-string p2, "Couldn\'t write property set with name {} as not supported by HPSF yet"

    invoke-interface {p0, p1, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hpsf/PropertySet;",
            "Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    if-eqz p4, :cond_1

    .line 2
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public clearDirectory()V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->clearDirectory()V

    :cond_0
    return-void
.end method

.method public createInformationProperties()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/POIDocument;->readProperties(Z)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    :cond_2
    return-void
.end method

.method public getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object p0
.end method

.method public getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    return-object p0
.end method

.method public getEncryptedPropertyStreamName()Ljava/lang/String;
    .locals 0

    const-string p0, "encryption"

    return-object p0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p0

    return-object p0
.end method

.method public getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 7

    const-string v0, "Error "

    const-string v1, "can\'t find encrypted property stream \'"

    iget-object v2, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const/4 v3, 0x0

    const-string v4, "getting"

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->isDocPropsEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "getting encrypted"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v2, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    .line 6
    invoke-virtual {p2, v2, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, p0

    goto/16 :goto_6

    :catch_0
    move-exception p2

    move-object v3, p0

    :goto_0
    move-object v4, v5

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, p0

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :catch_2
    move-exception p2

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_5

    .line 8
    :cond_0
    :try_start_3
    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_4
    move-exception p2

    goto :goto_4

    :cond_1
    move-object p0, v3

    move-object v5, v4

    :goto_1
    if-eqz v2, :cond_5

    .line 9
    :try_start_4
    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p2, :cond_2

    goto :goto_7

    .line 10
    :cond_2
    :try_start_5
    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v4, "creating"

    .line 11
    invoke-static {p2}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p2, :cond_3

    .line 12
    :try_start_7
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_5
    move-exception p2

    move-object v3, p0

    goto :goto_4

    .line 13
    :cond_3
    :goto_2
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_2
    move-exception v1

    .line 14
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v2

    if-eqz p2, :cond_4

    .line 15
    :try_start_9
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p2

    :try_start_a
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 16
    :goto_4
    :try_start_b
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " property set with name "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 17
    :goto_5
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 18
    :goto_6
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    throw p1

    .line 20
    :cond_5
    :goto_7
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    return-object p0
.end method

.method public initDirectory()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public readProperties()V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/POIDocument;->readProperties(Z)V

    return-void
.end method

.method public readProperties(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    const-string v1, "\u0005DocumentSummaryInformation"

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/POIDocument;->readPropertySet(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    :cond_1
    const-class v0, Lorg/apache/poi/hpsf/SummaryInformation;

    const-string v1, "\u0005SummaryInformation"

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/POIDocument;->readPropertySet(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hpsf/SummaryInformation;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    return-void
.end method

.method public replaceDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    :cond_2
    :goto_0
    return-void
.end method

.method public validateInPlaceWritePossible()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->isInPlaceWriteable()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Opened read-only or via an InputStream, a Writeable File is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This is not the root Document, cannot save embedded resource in-place"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Newly created Document, cannot save in-place"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract write()V
.end method

.method public abstract write(Ljava/io/File;)V
.end method

.method public abstract write(Ljava/io/OutputStream;)V
.end method

.method public writeProperties()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    return-void
.end method

.method public writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    return-void
.end method

.method public writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u0005DocumentSummaryInformation"

    const-string v1, "\u0005SummaryInformation"

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v3

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->isDocPropsEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7
    :goto_1
    new-instance v4, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    if-eqz v2, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    move-object v5, p1

    .line 8
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v6

    invoke-direct {p0, v1, v6, v5, p2}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v6

    invoke-direct {p0, v0, v6, v5, p2}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    .line 11
    :cond_3
    :try_start_1
    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 14
    :cond_4
    :goto_3
    check-cast v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p1, p0, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->setSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catch_0
    move-exception p0

    .line 17
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :goto_4
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 19
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
.end method
