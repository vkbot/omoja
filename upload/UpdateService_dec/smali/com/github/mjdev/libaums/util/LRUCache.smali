.class public Lcom/github/mjdev/libaums/util/LRUCache;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private cacheSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "cacheSize"    # I

    .line 10
    .local p0, "this":Lcom/github/mjdev/libaums/util/LRUCache;, "Lcom/github/mjdev/libaums/util/LRUCache<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 11
    iput p1, p0, Lcom/github/mjdev/libaums/util/LRUCache;->cacheSize:I

    .line 12
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/github/mjdev/libaums/util/LRUCache;, "Lcom/github/mjdev/libaums/util/LRUCache<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/util/LRUCache;->size()I

    move-result v0

    iget v1, p0, Lcom/github/mjdev/libaums/util/LRUCache;->cacheSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
