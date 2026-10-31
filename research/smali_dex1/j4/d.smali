.class public final Lj4/d;
.super Lj4/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lj4/e;


# direct methods
.method public constructor <init>(Lj4/e;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lj4/d;->f:Lj4/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lj4/d;->d:I

    .line 7
    .line 8
    iput p3, p0, Lj4/d;->e:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final e()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lj4/d;->f:Lj4/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj4/a;->e()[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final f()I
    .registers 3

    .line 1
    iget-object v0, p0, Lj4/d;->f:Lj4/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj4/a;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lj4/d;->d:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lj4/d;->e:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public final g()I
    .registers 3

    .line 1
    iget-object v0, p0, Lj4/d;->f:Lj4/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj4/a;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lj4/d;->d:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lj4/d;->e:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->h(II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lj4/d;->d:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    iget-object v0, p0, Lj4/d;->f:Lj4/e;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final h()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lj4/e;->j(I)Lj4/c;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final k(II)Lj4/e;
    .registers 4

    .line 1
    iget v0, p0, Lj4/d;->e:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lo4/b;->k(III)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lj4/d;->d:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    add-int/2addr p2, v0

    .line 10
    iget-object v0, p0, Lj4/d;->f:Lj4/e;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lj4/e;->k(II)Lj4/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lj4/e;->j(I)Lj4/c;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lj4/e;->j(I)Lj4/c;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lj4/d;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lj4/d;->k(II)Lj4/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
