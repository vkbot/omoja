.class public Lorg/apache/poi/poifs/filesystem/DirectoryNode;
.super Lorg/apache/poi/poifs/filesystem/EntryNode;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/poifs/filesystem/EntryNode;",
        "Lorg/apache/poi/poifs/filesystem/DirectoryEntry;",
        "Lorg/apache/poi/poifs/dev/POIFSViewable;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/poifs/filesystem/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final _byUCName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final _byname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final _entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final _filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

.field private final _path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/poifs/filesystem/EntryNode;-><init>(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    if-nez p3, :cond_0

    new-instance p2, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    iget-object p3, p3, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;[Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildren()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_1

    check-cast p2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    new-instance p3, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {p3, p2, v0, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    goto :goto_2

    :cond_1
    new-instance p3, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    check-cast p2, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {p3, p2, p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    :goto_2
    iget-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {p3}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    invoke-interface {p3}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public changeName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/EntryNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lorg/apache/poi/poifs/property/DirectoryProperty;->changeName(Lorg/apache/poi/poifs/property/Property;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 3

    new-instance v0, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1, v0, v2, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 2

    .line 9
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p0

    return-object p0
.end method

.method public createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 2

    .line 8
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p0

    return-object p0
.end method

.method public createDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 4
    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->addDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->isDocumentEntry()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 4
    new-instance p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a DocumentEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createOrUpdateDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-direct {p1, p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->replaceContents(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public deleteEntry(Lorg/apache/poi/poifs/filesystem/EntryNode;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->deleteChild(Lorg/apache/poi/poifs/property/Property;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return v0
.end method

.method public getEntries()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    const-string v1, "Workbook"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    const-string v1, "PowerPoint Document"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    const-string v1, "VisioDocument"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The document is really a VSD file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "no such entry: \""

    const-string v2, "\", had: "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The document is really a PPT file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The document is really a XLS file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method

.method public getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    const-string v1, "Workbook"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    const-string v1, "PowerPoint Document"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    const-string v1, "VisioDocument"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The document is really a VSD file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "no such entry: \""

    const-string v2, "\", had: "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The document is really a PPT file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The document is really a XLS file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method

.method public getEntryCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getEntryNames()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    return-object p0
.end method

.method public getPath()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    return-object p0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStorageClsid()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/Property;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    return-object p0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public hasEntry(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasEntryCaseInsensitive(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byUCName:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeleteOK()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isDirectoryEntry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntries()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public preferArray()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/Property;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
