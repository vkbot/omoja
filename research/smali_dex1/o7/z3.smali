.class public final Lo7/z3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/Collection;

.field public final d:Ljava/util/Collection;

.field public final e:I

.field public final f:Lo7/c4;

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/z3;->b:Ljava/util/List;

    .line 5
    .line 6
    const-string v0, "drainedSubstreams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lo7/z3;->c:Ljava/util/Collection;

    .line 12
    .line 13
    iput-object p4, p0, Lo7/z3;->f:Lo7/c4;

    .line 14
    .line 15
    iput-object p3, p0, Lo7/z3;->d:Ljava/util/Collection;

    .line 16
    .line 17
    iput-boolean p5, p0, Lo7/z3;->g:Z

    .line 18
    .line 19
    iput-boolean p6, p0, Lo7/z3;->a:Z

    .line 20
    .line 21
    iput-boolean p7, p0, Lo7/z3;->h:Z

    .line 22
    .line 23
    iput p8, p0, Lo7/z3;->e:I

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    const/4 p7, 0x1

    .line 27
    if-eqz p6, :cond_21

    .line 28
    .line 29
    if-nez p1, :cond_1f

    .line 30
    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    move p1, p3

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    :goto_21
    move p1, p7

    .line 35
    :goto_22
    const-string p8, "passThrough should imply buffer is null"

    .line 36
    .line 37
    invoke-static {p1, p8}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz p6, :cond_2e

    .line 41
    .line 42
    if-eqz p4, :cond_2c

    .line 43
    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    move p1, p3

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    :goto_2e
    move p1, p7

    .line 48
    :goto_2f
    const-string p8, "passThrough should imply winningSubstream != null"

    .line 49
    .line 50
    invoke-static {p1, p8}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eqz p6, :cond_4f

    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-ne p1, p7, :cond_42

    .line 60
    .line 61
    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_4f

    .line 66
    .line 67
    :cond_42
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_4d

    .line 72
    .line 73
    iget-boolean p1, p4, Lo7/c4;->b:Z

    .line 74
    .line 75
    if-eqz p1, :cond_4d

    .line 76
    .line 77
    goto :goto_4f

    .line 78
    :cond_4d
    move p1, p3

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    :goto_4f
    move p1, p7

    .line 81
    :goto_50
    const-string p2, "passThrough should imply winningSubstream is drained"

    .line 82
    .line 83
    invoke-static {p1, p2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    if-eqz p5, :cond_59

    .line 87
    .line 88
    if-eqz p4, :cond_5a

    .line 89
    .line 90
    :cond_59
    move p3, p7

    .line 91
    :cond_5a
    const-string p1, "cancelled should imply committed"

    .line 92
    .line 93
    invoke-static {p3, p1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final a(Lo7/c4;)Lo7/z3;
    .registers 13

    .line 1
    iget-boolean v0, p0, Lo7/z3;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "hedging frozen"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lo7/z3;->f:Lo7/c4;

    .line 11
    .line 12
    if-nez v0, :cond_f

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    const-string v2, "already committed"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lo7/z3;->d:Ljava/util/Collection;

    .line 23
    .line 24
    if-nez v0, :cond_1f

    .line 25
    .line 26
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_1d
    move-object v5, p1

    .line 31
    goto :goto_2c

    .line 32
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_1d

    .line 45
    :goto_2c
    iget p1, p0, Lo7/z3;->e:I

    .line 46
    .line 47
    add-int/lit8 v10, p1, 0x1

    .line 48
    .line 49
    new-instance v2, Lo7/z3;

    .line 50
    .line 51
    iget-boolean v8, p0, Lo7/z3;->a:Z

    .line 52
    .line 53
    iget-boolean v9, p0, Lo7/z3;->h:Z

    .line 54
    .line 55
    iget-object v3, p0, Lo7/z3;->b:Ljava/util/List;

    .line 56
    .line 57
    iget-object v4, p0, Lo7/z3;->c:Ljava/util/Collection;

    .line 58
    .line 59
    iget-object v6, p0, Lo7/z3;->f:Lo7/c4;

    .line 60
    .line 61
    iget-boolean v7, p0, Lo7/z3;->g:Z

    .line 62
    .line 63
    invoke-direct/range {v2 .. v10}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 64
    .line 65
    .line 66
    return-object v2
.end method

.method public final b(Lo7/c4;)Lo7/z3;
    .registers 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/z3;->d:Ljava/util/Collection;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    new-instance v2, Lo7/z3;

    .line 16
    .line 17
    iget-boolean v9, p0, Lo7/z3;->h:Z

    .line 18
    .line 19
    iget v10, p0, Lo7/z3;->e:I

    .line 20
    .line 21
    iget-object v3, p0, Lo7/z3;->b:Ljava/util/List;

    .line 22
    .line 23
    iget-object v4, p0, Lo7/z3;->c:Ljava/util/Collection;

    .line 24
    .line 25
    iget-object v6, p0, Lo7/z3;->f:Lo7/c4;

    .line 26
    .line 27
    iget-boolean v7, p0, Lo7/z3;->g:Z

    .line 28
    .line 29
    iget-boolean v8, p0, Lo7/z3;->a:Z

    .line 30
    .line 31
    invoke-direct/range {v2 .. v10}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 32
    .line 33
    .line 34
    return-object v2
.end method

.method public final c(Lo7/c4;Lo7/c4;)Lo7/z3;
    .registers 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/z3;->d:Ljava/util/Collection;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    new-instance v2, Lo7/z3;

    .line 19
    .line 20
    iget-boolean v9, p0, Lo7/z3;->h:Z

    .line 21
    .line 22
    iget v10, p0, Lo7/z3;->e:I

    .line 23
    .line 24
    iget-object v3, p0, Lo7/z3;->b:Ljava/util/List;

    .line 25
    .line 26
    iget-object v4, p0, Lo7/z3;->c:Ljava/util/Collection;

    .line 27
    .line 28
    iget-object v6, p0, Lo7/z3;->f:Lo7/c4;

    .line 29
    .line 30
    iget-boolean v7, p0, Lo7/z3;->g:Z

    .line 31
    .line 32
    iget-boolean v8, p0, Lo7/z3;->a:Z

    .line 33
    .line 34
    invoke-direct/range {v2 .. v10}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public final d(Lo7/c4;)Lo7/z3;
    .registers 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lo7/c4;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lo7/z3;->c:Ljava/util/Collection;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2b

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v2, Lo7/z3;

    .line 25
    .line 26
    iget-boolean v9, p0, Lo7/z3;->h:Z

    .line 27
    .line 28
    iget v10, p0, Lo7/z3;->e:I

    .line 29
    .line 30
    iget-object v3, p0, Lo7/z3;->b:Ljava/util/List;

    .line 31
    .line 32
    iget-object v5, p0, Lo7/z3;->d:Ljava/util/Collection;

    .line 33
    .line 34
    iget-object v6, p0, Lo7/z3;->f:Lo7/c4;

    .line 35
    .line 36
    iget-boolean v7, p0, Lo7/z3;->g:Z

    .line 37
    .line 38
    iget-boolean v8, p0, Lo7/z3;->a:Z

    .line 39
    .line 40
    invoke-direct/range {v2 .. v10}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_2b
    return-object p0
.end method

.method public final e(Lo7/c4;)Lo7/z3;
    .registers 14

    .line 1
    iget-boolean v0, p0, Lo7/z3;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "Already passThrough"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p1, Lo7/c4;->b:Z

    .line 11
    .line 12
    iget-object v2, p0, Lo7/z3;->c:Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v0, :cond_11

    .line 15
    .line 16
    :goto_f
    move-object v5, v2

    .line 17
    goto :goto_29

    .line 18
    :cond_11
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1c

    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_f

    .line 29
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_f

    .line 42
    :goto_29
    const/4 v0, 0x0

    .line 43
    iget-object v2, p0, Lo7/z3;->f:Lo7/c4;

    .line 44
    .line 45
    if-eqz v2, :cond_30

    .line 46
    .line 47
    move v9, v1

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v9, v0

    .line 50
    :goto_31
    if-eqz v9, :cond_3f

    .line 51
    .line 52
    if-ne v2, p1, :cond_36

    .line 53
    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v1, v0

    .line 56
    :goto_37
    const-string p1, "Another RPC attempt has already committed"

    .line 57
    .line 58
    invoke-static {v1, p1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    :goto_3d
    move-object v4, p1

    .line 63
    goto :goto_42

    .line 64
    :cond_3f
    iget-object p1, p0, Lo7/z3;->b:Ljava/util/List;

    .line 65
    .line 66
    goto :goto_3d

    .line 67
    :goto_42
    new-instance v3, Lo7/z3;

    .line 68
    .line 69
    iget-boolean v10, p0, Lo7/z3;->h:Z

    .line 70
    .line 71
    iget v11, p0, Lo7/z3;->e:I

    .line 72
    .line 73
    iget-object v6, p0, Lo7/z3;->d:Ljava/util/Collection;

    .line 74
    .line 75
    iget-object v7, p0, Lo7/z3;->f:Lo7/c4;

    .line 76
    .line 77
    iget-boolean v8, p0, Lo7/z3;->g:Z

    .line 78
    .line 79
    invoke-direct/range {v3 .. v11}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 80
    .line 81
    .line 82
    return-object v3
.end method
