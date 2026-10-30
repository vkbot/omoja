.class public Lorg/apache/commons/io/output/TeeWriter;
.super Lorg/apache/commons/io/output/ProxyCollectionWriter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyCollectionWriter;-><init>(Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Writer;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyCollectionWriter;-><init>([Ljava/io/Writer;)V

    return-void
.end method
