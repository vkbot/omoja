.class public abstract Li9/u;
.super Li9/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Le9/b;


# direct methods
.method public constructor <init>(Le9/b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li9/u;->a:Le9/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lh9/b;Ljava/lang/Object;)V
    .registers 9

    .line 1
    invoke-virtual {p0, p2}, Li9/a;->h(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p1, v1, v0}, Lh9/f;->beginCollection(Lg9/e;I)Lh9/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p2}, Li9/a;->g(Ljava/lang/Object;)Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    if-ge v2, v0, :cond_23

    .line 19
    .line 20
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, p0, Li9/u;->a:Le9/b;

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-interface {p1, v3, v2, v4, v5}, Lh9/d;->encodeSerializableElement(Lg9/e;ILe9/h;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_11

    .line 36
    :cond_23
    invoke-interface {p1, v1}, Lh9/d;->endStructure(Lg9/e;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final j(Lh9/c;Ljava/lang/Object;II)V
    .registers 7

    .line 1
    if-ltz p4, :cond_e

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_3
    if-ge v0, p4, :cond_d

    .line 5
    .line 6
    add-int v1, p3, v0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1, p2}, Li9/u;->k(Lh9/c;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_d
    return-void

    .line 15
    :cond_e
    const-string p1, "Size must be known in advance when using READ_ALL"

    .line 16
    .line 17
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public k(Lh9/c;ILjava/lang/Object;)V
    .registers 7

    .line 1
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Li9/u;->a:Le9/b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v0, p2, v1, v2}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p3, p1}, Li9/u;->n(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public abstract n(ILjava/lang/Object;Ljava/lang/Object;)V
.end method
