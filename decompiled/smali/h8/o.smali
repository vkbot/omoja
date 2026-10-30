.class public final Lh8/o;
.super Lh8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final d:Le0/g;

.field public final e:Lz3/f;

.field public final f:Lw7/c;

.field public final g:Lw7/c;


# direct methods
.method public constructor <init>(Lx7/b;Le0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh8/a;-><init>(Lx7/b;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lh8/o;->d:Le0/g;

    .line 5
    .line 6
    sget-object p1, Ld8/b;->d:Lz3/f;

    .line 7
    .line 8
    iput-object p1, p0, Lh8/o;->e:Lz3/f;

    .line 9
    .line 10
    sget-object p1, Ld8/b;->c:Lw7/c;

    .line 11
    .line 12
    iput-object p1, p0, Lh8/o;->f:Lw7/c;

    .line 13
    .line 14
    iput-object p1, p0, Lh8/o;->g:Lw7/c;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final e(Lx7/d;)V
    .locals 8

    .line 1
    instance-of v0, p1, Le8/a;

    .line 2
    .line 3
    iget-object v1, p0, Lh8/a;->c:Lx7/b;

    .line 4
    .line 5
    iget-object v4, p0, Lh8/o;->d:Le0/g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v2, Lh8/m;

    .line 10
    .line 11
    move-object v3, p1

    .line 12
    check-cast v3, Le8/a;

    .line 13
    .line 14
    iget-object v6, p0, Lh8/o;->f:Lw7/c;

    .line 15
    .line 16
    iget-object v7, p0, Lh8/o;->g:Lw7/c;

    .line 17
    .line 18
    iget-object v5, p0, Lh8/o;->e:Lz3/f;

    .line 19
    .line 20
    invoke-direct/range {v2 .. v7}, Lh8/m;-><init>(Le8/a;Le0/g;Lz3/f;Lw7/c;Lw7/c;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lx7/b;->d(Lx7/d;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v2, Lh8/n;

    .line 28
    .line 29
    iget-object v6, p0, Lh8/o;->f:Lw7/c;

    .line 30
    .line 31
    iget-object v7, p0, Lh8/o;->g:Lw7/c;

    .line 32
    .line 33
    iget-object v5, p0, Lh8/o;->e:Lz3/f;

    .line 34
    .line 35
    move-object v3, p1

    .line 36
    invoke-direct/range {v2 .. v7}, Lh8/n;-><init>(Lx7/d;Le0/g;Lz3/f;Lw7/c;Lw7/c;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lx7/b;->d(Lx7/d;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
