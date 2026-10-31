.class public final Lj4/l;
.super Lj4/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final transient e:Lj4/n;

.field public final transient f:Lj4/m;


# direct methods
.method public constructor <init>(Lj4/n;Lj4/m;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj4/l;->e:Lj4/n;

    .line 5
    .line 6
    iput-object p2, p0, Lj4/l;->f:Lj4/m;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lj4/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lj4/l;->f:Lj4/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lj4/l;->e:Lj4/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj4/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public final d(I[Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lj4/l;->f:Lj4/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lj4/e;->d(I[Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final h()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget-object v0, p0, Lj4/l;->f:Lj4/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lj4/e;->j(I)Lj4/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lj4/l;->e:Lj4/n;

    .line 2
    .line 3
    iget v0, v0, Lj4/n;->g:I

    .line 4
    .line 5
    return v0
.end method
