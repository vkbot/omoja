.class public final Lcom/bumptech/glide/l;
.super Ly/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public A:Lcom/bumptech/glide/l;

.field public final B:Z

.field public C:Z

.field public D:Z

.field public final s:Landroid/content/Context;

.field public final t:Lcom/bumptech/glide/p;

.field public final u:Ljava/lang/Class;

.field public final v:Lcom/bumptech/glide/e;

.field public w:Lcom/bumptech/glide/a;

.field public x:Ljava/lang/Object;

.field public y:Ljava/util/ArrayList;

.field public z:Lcom/bumptech/glide/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ly/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ly/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lj/m;->c:Lj/m;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ly/a;->d(Lj/m;)Ly/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ly/e;

    .line 13
    .line 14
    invoke-virtual {v0}, Ly/a;->k()Ly/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ly/e;

    .line 19
    .line 20
    invoke-virtual {v0}, Ly/a;->o()Ly/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ly/e;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/p;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ly/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/l;->B:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/l;->t:Lcom/bumptech/glide/p;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/l;->u:Ljava/lang/Class;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/l;->s:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p4, p2, Lcom/bumptech/glide/p;->b:Lcom/bumptech/glide/b;

    .line 14
    .line 15
    iget-object p4, p4, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 16
    .line 17
    iget-object p4, p4, Lcom/bumptech/glide/e;->f:Landroidx/collection/ArrayMap;

    .line 18
    .line 19
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/bumptech/glide/a;

    .line 24
    .line 25
    if-nez v0, :cond_41

    .line 26
    .line 27
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    :cond_22
    :goto_22
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_41

    .line 40
    .line 41
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Class;

    .line 52
    .line 53
    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_22

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/bumptech/glide/a;

    .line 64
    .line 65
    goto :goto_22

    .line 66
    :cond_41
    if-nez v0, :cond_45

    .line 67
    .line 68
    sget-object v0, Lcom/bumptech/glide/e;->k:Lcom/bumptech/glide/a;

    .line 69
    .line 70
    :cond_45
    iput-object v0, p0, Lcom/bumptech/glide/l;->w:Lcom/bumptech/glide/a;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/bumptech/glide/l;->v:Lcom/bumptech/glide/e;

    .line 75
    .line 76
    iget-object p1, p2, Lcom/bumptech/glide/p;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_66

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    if-nez p3, :cond_61

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->t()Lcom/bumptech/glide/l;

    .line 95
    .line 96
    .line 97
    goto :goto_51

    .line 98
    :cond_61
    invoke-static {}, Ln0/b;->a()V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x0

    .line 102
    throw p1

    .line 103
    :cond_66
    monitor-enter p2

    .line 104
    :try_start_67
    iget-object p1, p2, Lcom/bumptech/glide/p;->k:Ly/e;
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_6e

    .line 105
    .line 106
    monitor-exit p2

    .line 107
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->u(Ly/a;)Lcom/bumptech/glide/l;

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catchall_6e
    move-exception p1

    .line 112
    :try_start_6f
    monitor-exit p2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    .line 113
    throw p1
.end method


# virtual methods
.method public final bridge synthetic a(Ly/a;)Ly/a;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->u(Ly/a;)Lcom/bumptech/glide/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final bridge synthetic b()Ly/a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/l;

    .line 2
    .line 3
    if-eqz v0, :cond_56

    .line 4
    .line 5
    check-cast p1, Lcom/bumptech/glide/l;

    .line 6
    .line 7
    invoke-super {p0, p1}, Ly/a;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_56

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/l;->u:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/bumptech/glide/l;->u:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_56

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/l;->w:Lcom/bumptech/glide/a;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/bumptech/glide/l;->w:Lcom/bumptech/glide/a;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_56

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/l;->x:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/bumptech/glide/l;->x:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_56

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/l;->y:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/bumptech/glide/l;->y:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_56

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 54
    .line 55
    iget-object v1, p1, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_56

    .line 62
    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/l;->A:Lcom/bumptech/glide/l;

    .line 64
    .line 65
    iget-object v1, p1, Lcom/bumptech/glide/l;->A:Lcom/bumptech/glide/l;

    .line 66
    .line 67
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_56

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/bumptech/glide/l;->B:Z

    .line 74
    .line 75
    iget-boolean v1, p1, Lcom/bumptech/glide/l;->B:Z

    .line 76
    .line 77
    if-ne v0, v1, :cond_56

    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/bumptech/glide/l;->C:Z

    .line 80
    .line 81
    iget-boolean p1, p1, Lcom/bumptech/glide/l;->C:Z

    .line 82
    .line 83
    if-ne v0, p1, :cond_56

    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_56
    const/4 p1, 0x0

    .line 88
    return p1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    invoke-super {p0}, Ly/a;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/l;->u:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/l;->w:Lcom/bumptech/glide/a;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/l;->x:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/bumptech/glide/l;->y:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/l;->A:Lcom/bumptech/glide/l;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-boolean v1, p0, Lcom/bumptech/glide/l;->B:Z

    .line 47
    .line 48
    invoke-static {v1, v0}, Lc0/p;->g(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-boolean v1, p0, Lcom/bumptech/glide/l;->C:Z

    .line 53
    .line 54
    invoke-static {v1, v0}, Lc0/p;->g(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public final t()Lcom/bumptech/glide/l;
    .registers 2

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/l;->t()Lcom/bumptech/glide/l;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-virtual {p0}, Ly/a;->l()V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final u(Ly/a;)Lcom/bumptech/glide/l;
    .registers 2

    .line 1
    invoke-static {p1}, Lc0/g;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Ly/a;->a(Ly/a;)Ly/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/bumptech/glide/l;

    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;Lz/d;Ly/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/h;IILy/a;)Ly/c;
    .registers 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    move-object/from16 v7, p8

    .line 8
    .line 9
    iget-object v3, v0, Lcom/bumptech/glide/l;->A:Lcom/bumptech/glide/l;

    .line 10
    .line 11
    if-eqz v3, :cond_17

    .line 12
    .line 13
    new-instance v3, Ly/b;

    .line 14
    .line 15
    move-object/from16 v4, p3

    .line 16
    .line 17
    invoke-direct {v3, v2, v4}, Ly/b;-><init>(Ljava/lang/Object;Ly/d;)V

    .line 18
    .line 19
    .line 20
    move-object v13, v3

    .line 21
    move-object/from16 v16, v13

    .line 22
    .line 23
    goto :goto_1d

    .line 24
    :cond_17
    move-object/from16 v4, p3

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    move-object/from16 v16, v3

    .line 28
    .line 29
    move-object v13, v4

    .line 30
    :goto_1d
    iget-object v3, v0, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 31
    .line 32
    if-eqz v3, :cond_cd

    .line 33
    .line 34
    iget-boolean v4, v0, Lcom/bumptech/glide/l;->D:Z

    .line 35
    .line 36
    if-nez v4, :cond_c7

    .line 37
    .line 38
    iget-object v4, v3, Lcom/bumptech/glide/l;->w:Lcom/bumptech/glide/a;

    .line 39
    .line 40
    iget-boolean v5, v3, Lcom/bumptech/glide/l;->B:Z

    .line 41
    .line 42
    if-eqz v5, :cond_2e

    .line 43
    .line 44
    move-object/from16 v17, v1

    .line 45
    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    move-object/from16 v17, v4

    .line 48
    .line 49
    :goto_30
    const/16 v4, 0x8

    .line 50
    .line 51
    iget v3, v3, Ly/a;->b:I

    .line 52
    .line 53
    invoke-static {v3, v4}, Ly/a;->g(II)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v4, 0x1

    .line 58
    if-eqz v3, :cond_42

    .line 59
    .line 60
    iget-object v3, v0, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 61
    .line 62
    iget-object v3, v3, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 63
    .line 64
    :goto_3f
    move-object/from16 v18, v3

    .line 65
    .line 66
    goto :goto_62

    .line 67
    :cond_42
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_5f

    .line 72
    .line 73
    if-eq v3, v4, :cond_5f

    .line 74
    .line 75
    const/4 v5, 0x2

    .line 76
    if-eq v3, v5, :cond_5c

    .line 77
    .line 78
    const/4 v5, 0x3

    .line 79
    if-ne v3, v5, :cond_53

    .line 80
    .line 81
    sget-object v3, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/h;

    .line 82
    .line 83
    goto :goto_3f

    .line 84
    :cond_53
    const-string v1, "unknown priority: "

    .line 85
    .line 86
    iget-object v2, v0, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 87
    .line 88
    invoke-static {v2, v1}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_5a
    const/4 v1, 0x0

    .line 92
    return-object v1

    .line 93
    :cond_5c
    sget-object v3, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/h;

    .line 94
    .line 95
    goto :goto_3f

    .line 96
    :cond_5f
    sget-object v3, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/h;

    .line 97
    .line 98
    goto :goto_3f

    .line 99
    :goto_62
    iget-object v3, v0, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 100
    .line 101
    iget v5, v3, Ly/a;->i:I

    .line 102
    .line 103
    iget v3, v3, Ly/a;->h:I

    .line 104
    .line 105
    invoke-static/range {p6 .. p7}, Lc0/p;->i(II)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_7e

    .line 110
    .line 111
    iget-object v6, v0, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 112
    .line 113
    iget v8, v6, Ly/a;->i:I

    .line 114
    .line 115
    iget v6, v6, Ly/a;->h:I

    .line 116
    .line 117
    invoke-static {v8, v6}, Lc0/p;->i(II)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-nez v6, :cond_7e

    .line 122
    .line 123
    iget v5, v7, Ly/a;->i:I

    .line 124
    .line 125
    iget v3, v7, Ly/a;->h:I

    .line 126
    .line 127
    :cond_7e
    move/from16 v19, v3

    .line 128
    .line 129
    move/from16 v20, v5

    .line 130
    .line 131
    new-instance v3, Ly/g;

    .line 132
    .line 133
    invoke-direct {v3, v2, v13}, Ly/g;-><init>(Ljava/lang/Object;Ly/d;)V

    .line 134
    .line 135
    .line 136
    iget-object v2, v0, Lcom/bumptech/glide/l;->s:Landroid/content/Context;

    .line 137
    .line 138
    move-object v13, v3

    .line 139
    iget-object v3, v0, Lcom/bumptech/glide/l;->v:Lcom/bumptech/glide/e;

    .line 140
    .line 141
    iget-object v5, v0, Lcom/bumptech/glide/l;->x:Ljava/lang/Object;

    .line 142
    .line 143
    iget-object v6, v0, Lcom/bumptech/glide/l;->u:Ljava/lang/Class;

    .line 144
    .line 145
    iget-object v12, v0, Lcom/bumptech/glide/l;->y:Ljava/util/ArrayList;

    .line 146
    .line 147
    iget-object v14, v3, Lcom/bumptech/glide/e;->g:Lj/r;

    .line 148
    .line 149
    iget-object v15, v1, Lcom/bumptech/glide/a;->b:La0/a;

    .line 150
    .line 151
    new-instance v1, Ly/f;

    .line 152
    .line 153
    move-object/from16 v4, p1

    .line 154
    .line 155
    move-object/from16 v11, p2

    .line 156
    .line 157
    move-object/from16 v10, p5

    .line 158
    .line 159
    move/from16 v8, p6

    .line 160
    .line 161
    move/from16 v9, p7

    .line 162
    .line 163
    invoke-direct/range {v1 .. v15}, Ly/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ly/a;IILcom/bumptech/glide/h;Lz/d;Ljava/util/ArrayList;Ly/d;Lj/r;La0/a;)V

    .line 164
    .line 165
    .line 166
    move-object v10, v1

    .line 167
    const/4 v1, 0x1

    .line 168
    iput-boolean v1, v0, Lcom/bumptech/glide/l;->D:Z

    .line 169
    .line 170
    iget-object v1, v0, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 171
    .line 172
    move-object v9, v1

    .line 173
    move-object/from16 v2, p1

    .line 174
    .line 175
    move-object/from16 v3, p2

    .line 176
    .line 177
    move-object v4, v13

    .line 178
    move-object/from16 v5, v17

    .line 179
    .line 180
    move-object/from16 v6, v18

    .line 181
    .line 182
    move/from16 v8, v19

    .line 183
    .line 184
    move/from16 v7, v20

    .line 185
    .line 186
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/l;->v(Ljava/lang/Object;Lz/d;Ly/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/h;IILy/a;)Ly/c;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const/4 v2, 0x0

    .line 191
    iput-boolean v2, v0, Lcom/bumptech/glide/l;->D:Z

    .line 192
    .line 193
    iput-object v10, v13, Ly/g;->c:Ly/f;

    .line 194
    .line 195
    iput-object v1, v13, Ly/g;->d:Ly/c;

    .line 196
    .line 197
    move-object/from16 v7, p8

    .line 198
    .line 199
    goto :goto_ed

    .line 200
    :cond_c7
    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    .line 201
    .line 202
    invoke-static {v1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_5a

    .line 206
    :cond_cd
    iget-object v2, v0, Lcom/bumptech/glide/l;->s:Landroid/content/Context;

    .line 207
    .line 208
    iget-object v3, v0, Lcom/bumptech/glide/l;->v:Lcom/bumptech/glide/e;

    .line 209
    .line 210
    iget-object v5, v0, Lcom/bumptech/glide/l;->x:Ljava/lang/Object;

    .line 211
    .line 212
    iget-object v6, v0, Lcom/bumptech/glide/l;->u:Ljava/lang/Class;

    .line 213
    .line 214
    iget-object v12, v0, Lcom/bumptech/glide/l;->y:Ljava/util/ArrayList;

    .line 215
    .line 216
    iget-object v14, v3, Lcom/bumptech/glide/e;->g:Lj/r;

    .line 217
    .line 218
    iget-object v15, v1, Lcom/bumptech/glide/a;->b:La0/a;

    .line 219
    .line 220
    new-instance v1, Ly/f;

    .line 221
    .line 222
    move-object/from16 v4, p1

    .line 223
    .line 224
    move-object/from16 v11, p2

    .line 225
    .line 226
    move-object/from16 v10, p5

    .line 227
    .line 228
    move/from16 v8, p6

    .line 229
    .line 230
    move/from16 v9, p7

    .line 231
    .line 232
    move-object/from16 v7, p8

    .line 233
    .line 234
    invoke-direct/range {v1 .. v15}, Ly/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ly/a;IILcom/bumptech/glide/h;Lz/d;Ljava/util/ArrayList;Ly/d;Lj/r;La0/a;)V

    .line 235
    .line 236
    .line 237
    move-object v13, v1

    .line 238
    :goto_ed
    if-nez v16, :cond_f0

    .line 239
    .line 240
    return-object v13

    .line 241
    :cond_f0
    iget-object v1, v0, Lcom/bumptech/glide/l;->A:Lcom/bumptech/glide/l;

    .line 242
    .line 243
    iget v2, v1, Ly/a;->i:I

    .line 244
    .line 245
    iget v1, v1, Ly/a;->h:I

    .line 246
    .line 247
    invoke-static/range {p6 .. p7}, Lc0/p;->i(II)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_10c

    .line 252
    .line 253
    iget-object v3, v0, Lcom/bumptech/glide/l;->A:Lcom/bumptech/glide/l;

    .line 254
    .line 255
    iget v4, v3, Ly/a;->i:I

    .line 256
    .line 257
    iget v3, v3, Ly/a;->h:I

    .line 258
    .line 259
    invoke-static {v4, v3}, Lc0/p;->i(II)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-nez v3, :cond_10c

    .line 264
    .line 265
    iget v2, v7, Ly/a;->i:I

    .line 266
    .line 267
    iget v1, v7, Ly/a;->h:I

    .line 268
    .line 269
    :cond_10c
    move v8, v1

    .line 270
    move v7, v2

    .line 271
    iget-object v1, v0, Lcom/bumptech/glide/l;->A:Lcom/bumptech/glide/l;

    .line 272
    .line 273
    iget-object v5, v1, Lcom/bumptech/glide/l;->w:Lcom/bumptech/glide/a;

    .line 274
    .line 275
    iget-object v6, v1, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 276
    .line 277
    move-object v9, v1

    .line 278
    move-object/from16 v2, p1

    .line 279
    .line 280
    move-object/from16 v3, p2

    .line 281
    .line 282
    move-object/from16 v4, v16

    .line 283
    .line 284
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/l;->v(Ljava/lang/Object;Lz/d;Ly/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/h;IILy/a;)Ly/c;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iput-object v13, v4, Ly/b;->c:Ly/c;

    .line 289
    .line 290
    iput-object v1, v4, Ly/b;->d:Ly/c;

    .line 291
    .line 292
    return-object v4
.end method

.method public final w()Lcom/bumptech/glide/l;
    .registers 4

    .line 1
    invoke-super {p0}, Ly/a;->b()Ly/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/bumptech/glide/l;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/l;->w:Lcom/bumptech/glide/a;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bumptech/glide/a;->a()Lcom/bumptech/glide/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/bumptech/glide/l;->w:Lcom/bumptech/glide/a;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/bumptech/glide/l;->y:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v1, :cond_1b

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/bumptech/glide/l;->y:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lcom/bumptech/glide/l;->y:Ljava/util/ArrayList;

    .line 27
    .line 28
    :cond_1b
    iget-object v1, v0, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 29
    .line 30
    if-eqz v1, :cond_25

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/bumptech/glide/l;->z:Lcom/bumptech/glide/l;

    .line 37
    .line 38
    :cond_25
    iget-object v1, v0, Lcom/bumptech/glide/l;->A:Lcom/bumptech/glide/l;

    .line 39
    .line 40
    if-eqz v1, :cond_2f

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/bumptech/glide/l;->A:Lcom/bumptech/glide/l;

    .line 47
    .line 48
    :cond_2f
    return-object v0
.end method

.method public final x(Landroid/widget/ImageView;)V
    .registers 6

    .line 1
    invoke-static {}, Lc0/p;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lc0/g;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x800

    .line 8
    .line 9
    iget v1, p0, Ly/a;->b:I

    .line 10
    .line 11
    invoke-static {v1, v0}, Ly/a;->g(II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_6d

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_6d

    .line 22
    .line 23
    sget-object v0, Lcom/bumptech/glide/k;->a:[I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget v0, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    packed-switch v0, :pswitch_data_a0

    .line 37
    .line 38
    .line 39
    goto :goto_6d

    .line 40
    :pswitch_27
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v2, Lq/o;->c:Lq/o;

    .line 45
    .line 46
    new-instance v3, Lq/j;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Ly/a;->h(Lq/o;Lq/f;)Ly/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-boolean v1, v0, Ly/a;->q:Z

    .line 56
    .line 57
    goto :goto_6e

    .line 58
    :pswitch_39
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v2, Lq/o;->b:Lq/o;

    .line 63
    .line 64
    new-instance v3, Lq/v;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v3}, Ly/a;->h(Lq/o;Lq/f;)Ly/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-boolean v1, v0, Ly/a;->q:Z

    .line 74
    .line 75
    goto :goto_6e

    .line 76
    :pswitch_4b
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v2, Lq/o;->c:Lq/o;

    .line 81
    .line 82
    new-instance v3, Lq/j;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2, v3}, Ly/a;->h(Lq/o;Lq/f;)Ly/a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-boolean v1, v0, Ly/a;->q:Z

    .line 92
    .line 93
    goto :goto_6e

    .line 94
    :pswitch_5d
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sget-object v1, Lq/o;->d:Lq/o;

    .line 99
    .line 100
    new-instance v2, Lq/i;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Ly/a;->h(Lq/o;Lq/f;)Ly/a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    :goto_6d
    move-object v0, p0

    .line 111
    :goto_6e
    iget-object v1, p0, Lcom/bumptech/glide/l;->v:Lcom/bumptech/glide/e;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/bumptech/glide/e;->c:Lw7/c;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    const-class v1, Landroid/graphics/Bitmap;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/bumptech/glide/l;->u:Ljava/lang/Class;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_86

    .line 127
    .line 128
    new-instance v1, Lz/a;

    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    invoke-direct {v1, p1, v2}, Lz/a;-><init>(Landroid/widget/ImageView;I)V

    .line 132
    .line 133
    .line 134
    goto :goto_94

    .line 135
    :cond_86
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_98

    .line 142
    .line 143
    new-instance v1, Lz/a;

    .line 144
    .line 145
    const/4 v2, 0x1

    .line 146
    invoke-direct {v1, p1, v2}, Lz/a;-><init>(Landroid/widget/ImageView;I)V

    .line 147
    .line 148
    .line 149
    :goto_94
    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/l;->y(Lz/d;Ly/a;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_98
    const-string p1, "Unhandled class: "

    .line 154
    .line 155
    const-string v0, ", try .as*(Class).transcode(ResourceTranscoder)"

    .line 156
    .line 157
    invoke-static {v2, p1, v0}, Landroidx/navigation/b;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-void

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_27
    .end packed-switch
.end method

.method public final y(Lz/d;Ly/a;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lc0/g;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bumptech/glide/l;->C:Z

    .line 5
    .line 6
    if-eqz v0, :cond_81

    .line 7
    .line 8
    new-instance v2, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v5, p0, Lcom/bumptech/glide/l;->w:Lcom/bumptech/glide/a;

    .line 14
    .line 15
    iget-object v6, p2, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 16
    .line 17
    iget v7, p2, Ly/a;->i:I

    .line 18
    .line 19
    iget v8, p2, Ly/a;->h:I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v1, p0

    .line 23
    move-object v3, p1

    .line 24
    move-object v9, p2

    .line 25
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/l;->v(Ljava/lang/Object;Lz/d;Ly/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/h;IILy/a;)Ly/c;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v3}, Lz/d;->i()Ly/c;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p1, p2}, Ly/c;->k(Ly/c;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_40

    .line 38
    .line 39
    iget-boolean v0, v9, Ly/a;->g:Z

    .line 40
    .line 41
    if-nez v0, :cond_31

    .line 42
    .line 43
    invoke-interface {p2}, Ly/c;->j()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_31

    .line 48
    .line 49
    goto :goto_40

    .line 50
    :cond_31
    const-string p1, "Argument must not be null"

    .line 51
    .line 52
    invoke-static {p2, p1}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Ly/c;->isRunning()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3f

    .line 60
    .line 61
    invoke-interface {p2}, Ly/c;->i()V

    .line 62
    .line 63
    .line 64
    :cond_3f
    return-void

    .line 65
    :cond_40
    :goto_40
    iget-object p2, v1, Lcom/bumptech/glide/l;->t:Lcom/bumptech/glide/p;

    .line 66
    .line 67
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/p;->k(Lz/d;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v3, p1}, Lz/d;->h(Ly/c;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, v1, Lcom/bumptech/glide/l;->t:Lcom/bumptech/glide/p;

    .line 74
    .line 75
    monitor-enter p2

    .line 76
    :try_start_4b
    iget-object v0, p2, Lcom/bumptech/glide/p;->g:Lcom/bumptech/glide/manager/u;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/bumptech/glide/manager/u;->b:Ljava/util/Set;

    .line 79
    .line 80
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v0, p2, Lcom/bumptech/glide/p;->e:Lcom/bumptech/glide/manager/t;

    .line 84
    .line 85
    const-string v2, "RequestTracker"

    .line 86
    .line 87
    iget-object v3, v0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v3, Ljava/util/Set;

    .line 90
    .line 91
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-boolean v3, v0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 95
    .line 96
    if-nez v3, :cond_65

    .line 97
    .line 98
    invoke-interface {p1}, Ly/c;->i()V

    .line 99
    .line 100
    .line 101
    goto :goto_7b

    .line 102
    :cond_65
    invoke-interface {p1}, Ly/c;->clear()V

    .line 103
    .line 104
    .line 105
    const/4 v3, 0x2

    .line 106
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_74

    .line 111
    .line 112
    const-string v3, "Paused, delaying request"

    .line 113
    .line 114
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_74
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Ljava/util/HashSet;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catchall {:try_start_4b .. :try_end_7b} :catchall_7d

    .line 122
    .line 123
    .line 124
    :goto_7b
    monitor-exit p2

    .line 125
    return-void

    .line 126
    :catchall_7d
    move-exception v0

    .line 127
    move-object p1, v0

    .line 128
    :try_start_7f
    monitor-exit p2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7d

    .line 129
    throw p1

    .line 130
    :cond_81
    move-object v1, p0

    .line 131
    const-string p1, "You must call #load() before calling #into()"

    .line 132
    .line 133
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final z(Ljava/lang/Object;)Lcom/bumptech/glide/l;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->w()Lcom/bumptech/glide/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->z(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iput-object p1, p0, Lcom/bumptech/glide/l;->x:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/bumptech/glide/l;->C:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Ly/a;->l()V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method
