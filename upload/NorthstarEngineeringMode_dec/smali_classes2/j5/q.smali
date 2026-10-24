.class public final Lj5/q;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Li5/y0;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Li5/y0;",
            ">;"
        }
    .end annotation
.end field

.field public r:Li5/y0;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/y0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lj5/q;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a(Li5/y0;)Z
    .locals 1

    iget-object v0, p0, Lj5/q;->r:Li5/y0;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Li5/y0;->y:I

    if-nez v0, :cond_0

    iput-object p1, p0, Lj5/q;->r:Li5/y0;

    :cond_0
    iget-object p0, p0, Lj5/q;->c:Ljava/util/Collection;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Li5/y0;

    invoke-virtual {p0, p1}, Lj5/q;->a(Li5/y0;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Li5/y0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj5/q;->c:Ljava/util/Collection;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lj5/q;->c:Ljava/util/Collection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method
