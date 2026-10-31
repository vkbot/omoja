.class public final Lh8/l0;
.super Lh8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final d:I

.field public final e:Z

.field public final f:Lw7/c;


# direct methods
.method public constructor <init>(Lh8/l;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lh8/a;-><init>(Lx7/b;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh8/l0;->d:I

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lh8/l0;->e:Z

    .line 8
    .line 9
    sget-object p1, Ld8/b;->c:Lw7/c;

    .line 10
    .line 11
    iput-object p1, p0, Lh8/l0;->f:Lw7/c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final e(Lx7/d;)V
    .registers 6

    .line 1
    new-instance v0, Lh8/k0;

    .line 2
    .line 3
    iget-boolean v1, p0, Lh8/l0;->e:Z

    .line 4
    .line 5
    iget-object v2, p0, Lh8/l0;->f:Lw7/c;

    .line 6
    .line 7
    iget v3, p0, Lh8/l0;->d:I

    .line 8
    .line 9
    invoke-direct {v0, p1, v3, v1, v2}, Lh8/k0;-><init>(Lx7/d;IZLw7/c;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lh8/a;->c:Lx7/b;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lx7/b;->d(Lx7/d;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
