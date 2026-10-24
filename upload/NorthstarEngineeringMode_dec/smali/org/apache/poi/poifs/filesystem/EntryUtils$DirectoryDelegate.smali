.class Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/EntryUtils$POIDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/EntryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryDelegate"
.end annotation


# instance fields
.field final dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/EntryUtils$POIDelegate;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->toDelegate(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/EntryUtils$POIDelegate;

    move-result-object p0

    return-object p0
.end method

.method private entries()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/poifs/filesystem/EntryUtils$POIDelegate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lg5/l;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lg5/l;-><init>(I)V

    new-instance v1, Lorg/apache/poi/poifs/filesystem/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static toDelegate(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/EntryUtils$POIDelegate;
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v2}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntryCount()I

    move-result v0

    iget-object v2, p1, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntryCount()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    iget-object v2, p1, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->entries()Ljava/util/Map;

    move-result-object p0

    invoke-direct {p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->entries()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
