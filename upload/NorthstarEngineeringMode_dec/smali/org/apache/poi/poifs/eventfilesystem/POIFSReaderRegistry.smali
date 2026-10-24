.class Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chosenDocumentDescriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private omnivorousListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectiveListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->selectiveListeners:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->lambda$registerListener$1(Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->lambda$registerListener$0(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private dropDocument(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$registerListener$0(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$registerListener$1(Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private removeSelectiveListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->selectiveListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->dropDocument(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getListeners(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->removeSelectiveListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V

    iget-object p0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    .line 13
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->selectiveListeners:Ljava/util/Map;

    .line 2
    new-instance v1, Lorg/apache/poi/poifs/eventfilesystem/b;

    .line 3
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;

    invoke-direct {v1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    .line 7
    new-instance p2, Lorg/apache/poi/poifs/eventfilesystem/c;

    .line 8
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-interface {p0, v1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
