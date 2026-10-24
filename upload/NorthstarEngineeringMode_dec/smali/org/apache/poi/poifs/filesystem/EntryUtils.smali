.class public final Lorg/apache/poi/poifs/filesystem/EntryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;,
        Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;,
        Lorg/apache/poi/poifs/filesystem/EntryUtils$POIDelegate;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areDirectoriesIdentical(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)Z
    .locals 1

    new-instance v0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    new-instance p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static areDocumentsIdentical(Lorg/apache/poi/poifs/filesystem/DocumentEntry;Lorg/apache/poi/poifs/filesystem/DocumentEntry;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    new-instance p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_0
    throw p0
.end method

.method public static copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p0

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-static {v0, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_1
    return-void
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 2
    invoke-static {v0, p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    return-void
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;",
            "Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    new-instance p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    .line 7
    invoke-static {v0, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    return-void
.end method
