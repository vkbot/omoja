.class public final Lorg/apache/poi/ss/usermodel/WorkbookFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;,
        Lorg/apache/poi/ss/usermodel/WorkbookFactory$Singleton;
    }
.end annotation


# instance fields
.field private final provider:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/WorkbookProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->provider:Ljava/util/List;

    const-class p0, Lorg/apache/poi/ss/usermodel/WorkbookFactory;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-class v1, Lorg/apache/poi/ss/usermodel/WorkbookProvider;

    .line 5
    invoke-static {v1, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    new-instance v1, Lorg/apache/poi/extractor/e;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/extractor/e;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/WorkbookFactory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->lambda$create$1(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static addProvider(Lorg/apache/poi/ss/usermodel/WorkbookProvider;)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/ss/usermodel/WorkbookFactory$Singleton;->access$100()Lorg/apache/poi/ss/usermodel/WorkbookFactory;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->provider:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->lambda$create$0(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/io/File;Ljava/lang/String;ZLorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->lambda$create$4(Ljava/io/File;Ljava/lang/String;ZLorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 6

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 29
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    .line 30
    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v1, :cond_0

    .line 31
    new-instance v1, Lorg/apache/poi/ss/usermodel/c;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/poi/ss/usermodel/c;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    sget-object v2, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v2, :cond_4

    .line 33
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    .line 34
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v4

    const-string v5, "EncryptedPackage"

    .line 35
    invoke-virtual {v4, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Package"

    invoke-virtual {v4, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 37
    :cond_3
    new-instance v1, Lorg/apache/poi/ss/usermodel/d;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/poi/ss/usermodel/d;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0

    .line 38
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 39
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 40
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t open workbook - unsupported file type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_5
    new-instance p1, Lorg/apache/poi/EmptyFileException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EmptyFileException;-><init>(Ljava/io/File;)V

    throw p1

    .line 42
    :cond_6
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 3

    .line 11
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 13
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lt v1, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 15
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    .line 16
    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v1, v0, :cond_0

    .line 17
    new-instance p1, Lorg/apache/poi/ss/usermodel/e;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/usermodel/e;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    sget-object v2, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v2, v0, :cond_3

    .line 19
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v2, p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 20
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    const-string v2, "EncryptedPackage"

    .line 21
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Package"

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 22
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/usermodel/f;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/ss/usermodel/f;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0

    .line 23
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t open workbook - unsupported file type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_4
    new-instance p0, Lorg/apache/poi/EmptyFileException;

    invoke-direct {p0}, Lorg/apache/poi/EmptyFileException;-><init>()V

    throw p0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 2

    const-string v0, "EncryptedPackage"

    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Package"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v1, Lorg/apache/poi/ss/usermodel/h;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/ss/usermodel/h;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v1, Lorg/apache/poi/ss/usermodel/g;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/ss/usermodel/g;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    :goto_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/b;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/io/File;Ljava/lang/String;ZLorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->lambda$create$5(Ljava/io/File;Ljava/lang/String;ZLorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->lambda$create$3(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Class;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->lambda$removeProvider$6(Ljava/lang/Class;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/io/InputStream;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->lambda$create$2(Ljava/io/InputStream;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$0(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookProvider;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$1(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookProvider;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$2(Ljava/io/InputStream;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/WorkbookProvider;->create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$3(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookProvider;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$4(Ljava/io/File;Ljava/lang/String;ZLorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lorg/apache/poi/ss/usermodel/WorkbookProvider;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$5(Ljava/io/File;Ljava/lang/String;ZLorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lorg/apache/poi/ss/usermodel/WorkbookProvider;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$removeProvider$6(Ljava/lang/Class;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static removeProvider(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/ss/usermodel/WorkbookProvider;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/ss/usermodel/WorkbookFactory$Singleton;->access$100()Lorg/apache/poi/ss/usermodel/WorkbookFactory;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->provider:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/extractor/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/extractor/d;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private static wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 3

    invoke-static {}, Lorg/apache/poi/ss/usermodel/WorkbookFactory$Singleton;->access$100()Lorg/apache/poi/ss/usermodel/WorkbookFactory;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->provider:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/WorkbookProvider;

    invoke-interface {v1, p0}, Lorg/apache/poi/ss/usermodel/WorkbookProvider;->accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;->create(Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Your InputStream was neither an OLE2 stream, nor an OOXML stream or you haven\'t provide the poi-ooxml*.jar in the classpath/modulepath - FileMagic: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", having providers: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/poi/ss/usermodel/WorkbookFactory$Singleton;->access$100()Lorg/apache/poi/ss/usermodel/WorkbookFactory;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->provider:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
