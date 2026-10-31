.class public final Ld2/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lt4/b;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ld2/h;->b:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    new-array v2, v1, [B

    .line 17
    .line 18
    fill-array-data v2, :array_4c

    .line 19
    .line 20
    .line 21
    new-array v3, v1, [B

    .line 22
    .line 23
    fill-array-data v3, :array_54

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Ld2/h;->c:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v0, Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Ld2/h;->d:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Ld2/h;->e:Ljava/lang/Object;

    .line 52
    .line 53
    const/16 v0, 0x9

    .line 54
    .line 55
    new-array v0, v0, [B

    .line 56
    .line 57
    fill-array-data v0, :array_5c

    .line 58
    .line 59
    .line 60
    new-array v1, v1, [B

    .line 61
    .line 62
    fill-array-data v1, :array_66

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, -0x1

    .line 70
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 75
    .line 76
    return-void

    .line 77
    :array_4c
    .array-data 1
        -0x17t
        0x39t
        0x26t
        -0x58t
        0x74t
        0x10t
        -0x7et
        0x47t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_54
    .array-data 1
        -0x5ft
        0x71t
        0x1ct
        -0x3bt
        0x19t
        0x2at
        -0xft
        0x34t
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_5c
    .array-data 1
        0x74t
        0x33t
        0x3dt
        0x56t
        0x36t
        -0x7bt
        -0x55t
        0x1bt
        0x47t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    nop

    .line 103
    :array_66
    .array-data 1
        0x35t
        0x43t
        0x4dt
        0x1at
        0x59t
        -0x1et
        -0x34t
        0x7et
    .end array-data
.end method


# virtual methods
.method public a(Lt4/p;)Lt4/n;
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lt4/b;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lt4/b;->a(Lt4/p;)Lt4/n;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    const-string v0, "Attempting to request an undeclared dependency Deferred<"

    .line 21
    .line 22
    const-string v1, ">."

    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/ftp/a;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-static {p1}, Lt4/p;->a(Ljava/lang/Class;)Lt4/p;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_27

    .line 14
    .line 15
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lt4/b;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lt4/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Lb5/a;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1f

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1f
    new-instance p1, Lt4/q;

    .line 33
    .line 34
    check-cast v0, Lb5/a;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_27
    const-string v0, "Attempting to request an undeclared dependency "

    .line 41
    .line 42
    const-string v1, "."

    .line 43
    .line 44
    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/ftp/a;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public c(Ljava/lang/Class;)Lk5/b;
    .registers 2

    .line 1
    invoke-static {p1}, Lt4/p;->a(Ljava/lang/Class;)Lt4/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ld2/h;->g(Lt4/p;)Lk5/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d()Lt4/n;
    .registers 2

    .line 1
    const-class v0, Lf5/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lt4/p;->a(Ljava/lang/Class;)Lt4/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ld2/h;->a(Lt4/p;)Lt4/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e(Lt4/p;)Ljava/util/Set;
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lt4/b;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lt4/b;->e(Lt4/p;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    const-string v0, "Attempting to request an undeclared dependency Set<"

    .line 21
    .line 22
    const-string v1, ">."

    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/ftp/a;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public f(Lt4/p;)Lk5/b;
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/h;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lt4/b;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lt4/b;->f(Lt4/p;)Lk5/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    const-string v0, "Attempting to request an undeclared dependency Provider<Set<"

    .line 21
    .line 22
    const-string v1, ">>."

    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/ftp/a;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public g(Lt4/p;)Lk5/b;
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lt4/b;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lt4/b;->g(Lt4/p;)Lk5/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    const-string v0, "Attempting to request an undeclared dependency Provider<"

    .line 21
    .line 22
    const-string v1, ">."

    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/ftp/a;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public h(Lt4/p;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lt4/b;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lt4/b;->h(Lt4/p;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    const-string v0, "Attempting to request an undeclared dependency "

    .line 21
    .line 22
    const-string v1, "."

    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/ftp/a;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public i()V
    .registers 3

    .line 1
    iget-object v0, p0, Ld2/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 4
    .line 5
    if-eqz v0, :cond_14

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_14

    .line 12
    .line 13
    iget-object v0, p0, Ld2/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    const-string p1, "Property \"autoMetadata\" has not been set"

    .line 12
    .line 13
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public k(Lo0/f;IIII)V
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v1, Ld2/h;->b:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v8, v0

    .line 8
    check-cast v8, Landroid/view/WindowManager;

    .line 9
    .line 10
    iget-object v0, v1, Ld2/h;->f:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v9, v0

    .line 13
    check-cast v9, Ljava/util/HashMap;

    .line 14
    .line 15
    if-lez p4, :cond_87

    .line 16
    .line 17
    if-gtz p5, :cond_13

    .line 18
    .line 19
    goto :goto_87

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    move/from16 v2, p2

    .line 22
    .line 23
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    move/from16 v3, p3

    .line 28
    .line 29
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_47

    .line 38
    .line 39
    :try_start_26
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/view/View;

    .line 44
    .line 45
    invoke-static {v8, v4}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/view/View;

    .line 53
    .line 54
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/view/View;

    .line 65
    .line 66
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_47} :catch_47

    .line 70
    .line 71
    .line 72
    :catch_47
    :cond_47
    new-instance v6, Lo0/d;

    .line 73
    .line 74
    iget-object v4, v1, Ld2/h;->a:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Landroid/content/Context;

    .line 83
    .line 84
    invoke-direct {v6, v4, v7}, Lo0/d;-><init>(Landroid/content/Context;Lo0/f;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    .line 89
    .line 90
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    .line 91
    .line 92
    const/16 v14, 0x228

    .line 93
    .line 94
    const/4 v15, -0x3

    .line 95
    const/16 v13, 0x7f0

    .line 96
    .line 97
    move/from16 v11, p4

    .line 98
    .line 99
    move/from16 v12, p5

    .line 100
    .line 101
    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 102
    .line 103
    .line 104
    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 105
    .line 106
    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 107
    .line 108
    const v0, 0x800033

    .line 109
    .line 110
    .line 111
    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    new-array v2, v0, [F

    .line 115
    .line 116
    new-array v3, v0, [F

    .line 117
    .line 118
    new-array v4, v0, [F

    .line 119
    .line 120
    new-array v5, v0, [Landroid/view/VelocityTracker;

    .line 121
    .line 122
    new-instance v0, Lo0/b;

    .line 123
    .line 124
    invoke-direct/range {v0 .. v7}, Lo0/b;-><init>(Ld2/h;[F[F[F[Landroid/view/VelocityTracker;Lo0/d;Lo0/f;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v8, v6, v10}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_87
    :goto_87
    return-void
.end method

.method public l()Ld2/i;
    .registers 12

    .line 1
    iget-object v0, p0, Ld2/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    const-string v0, " transportName"

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-string v0, ""

    .line 11
    .line 12
    :goto_b
    iget-object v1, p0, Ld2/h;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ld2/l;

    .line 15
    .line 16
    if-nez v1, :cond_17

    .line 17
    .line 18
    const-string v1, " encodedPayload"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_17
    iget-object v1, p0, Ld2/h;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Long;

    .line 27
    .line 28
    if-nez v1, :cond_23

    .line 29
    .line 30
    const-string v1, " eventMillis"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_23
    iget-object v1, p0, Ld2/h;->e:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Long;

    .line 39
    .line 40
    if-nez v1, :cond_2f

    .line 41
    .line 42
    const-string v1, " uptimeMillis"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2f
    iget-object v1, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/util/HashMap;

    .line 51
    .line 52
    if-nez v1, :cond_3b

    .line 53
    .line 54
    const-string v1, " autoMetadata"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_6b

    .line 65
    .line 66
    new-instance v2, Ld2/i;

    .line 67
    .line 68
    iget-object v0, p0, Ld2/h;->a:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v3, v0

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 72
    .line 73
    iget-object v0, p0, Ld2/h;->b:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v4, v0

    .line 76
    check-cast v4, Ljava/lang/Integer;

    .line 77
    .line 78
    iget-object v0, p0, Ld2/h;->c:Ljava/lang/Object;

    .line 79
    .line 80
    move-object v5, v0

    .line 81
    check-cast v5, Ld2/l;

    .line 82
    .line 83
    iget-object v0, p0, Ld2/h;->d:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    iget-object v0, p0, Ld2/h;->e:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v10, v0

    .line 102
    check-cast v10, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-direct/range {v2 .. v10}, Ld2/i;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ld2/l;JJLjava/util/HashMap;)V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :cond_6b
    const-string v1, "Missing required properties:"

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    return-object v0
.end method

.method public m()V
    .registers 5

    .line 1
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_28

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/view/View;

    .line 30
    .line 31
    if-eqz v2, :cond_c

    .line 32
    .line 33
    iget-object v3, p0, Ld2/h;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Landroid/view/WindowManager;

    .line 36
    .line 37
    invoke-static {v3, v2}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    goto :goto_c

    .line 41
    :cond_28
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public n()Lf7/c;
    .registers 11

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Ld2/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0xb

    .line 12
    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    fill-array-data v2, :array_e6

    .line 16
    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    new-array v4, v3, [B

    .line 21
    .line 22
    fill-array-data v4, :array_f0

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v1, :cond_27

    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_27
    :try_start_27
    new-instance v1, Ljava/io/FileInputStream;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_cc

    .line 43
    .line 44
    .line 45
    :try_start_2c
    new-instance v4, Ljava/io/BufferedReader;

    .line 46
    .line 47
    new-instance v5, Ljava/io/InputStreamReader;

    .line 48
    .line 49
    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_ce

    .line 53
    .line 54
    .line 55
    :cond_36
    :goto_36
    :try_start_36
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-eqz v5, :cond_91

    .line 60
    .line 61
    const/16 v6, 0xa

    .line 62
    .line 63
    new-array v6, v6, [B

    .line 64
    .line 65
    fill-array-data v6, :array_f8

    .line 66
    .line 67
    .line 68
    new-array v7, v3, [B

    .line 69
    .line 70
    fill-array-data v7, :array_102

    .line 71
    .line 72
    .line 73
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_36

    .line 82
    .line 83
    const/4 v6, 0x1

    .line 84
    new-array v7, v6, [B

    .line 85
    .line 86
    const/16 v8, 0x7e

    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    aput-byte v8, v7, v9

    .line 90
    .line 91
    new-array v8, v3, [B

    .line 92
    .line 93
    fill-array-data v8, :array_10a

    .line 94
    .line 95
    .line 96
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    array-length v7, v5

    .line 105
    if-le v7, v6, :cond_36

    .line 106
    .line 107
    aget-object v5, v5, v6

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    new-array v7, v6, [B

    .line 114
    .line 115
    const/16 v8, -0x6f

    .line 116
    .line 117
    aput-byte v8, v7, v9

    .line 118
    .line 119
    new-array v8, v3, [B

    .line 120
    .line 121
    fill-array-data v8, :array_112

    .line 122
    .line 123
    .line 124
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    array-length v7, v5

    .line 133
    const/4 v8, 0x2

    .line 134
    if-ne v7, v8, :cond_36

    .line 135
    .line 136
    aget-object v7, v5, v9

    .line 137
    .line 138
    aget-object v5, v5, v6

    .line 139
    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_36 .. :try_end_8e} :catchall_8f

    .line 141
    .line 142
    .line 143
    goto :goto_36

    .line 144
    :catchall_8f
    move-exception v0

    .line 145
    goto :goto_d0

    .line 146
    :cond_91
    :try_start_91
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_ce

    .line 147
    .line 148
    .line 149
    :try_start_94
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_cc

    .line 150
    .line 151
    .line 152
    :try_start_97
    new-instance v1, Ljava/io/FileInputStream;

    .line 153
    .line 154
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9c} :catch_b1

    .line 155
    .line 156
    .line 157
    :try_start_9c
    new-instance v0, Ljava/io/BufferedReader;

    .line 158
    .line 159
    new-instance v3, Ljava/io/InputStreamReader;

    .line 160
    .line 161
    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_b3

    .line 165
    .line 166
    .line 167
    :try_start_a6
    invoke-static {v0}, Lf7/c;->a(Ljava/io/BufferedReader;)Lf7/c;

    .line 168
    .line 169
    .line 170
    move-result-object v3
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_b5

    .line 171
    :try_start_aa
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b3

    .line 172
    .line 173
    .line 174
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 175
    .line 176
    .line 177
    return-object v3

    .line 178
    :catch_b1
    move-exception v0

    .line 179
    goto :goto_c8

    .line 180
    :catchall_b3
    move-exception v0

    .line 181
    goto :goto_bf

    .line 182
    :catchall_b5
    move-exception v3

    .line 183
    :try_start_b6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    .line 184
    .line 185
    .line 186
    goto :goto_be

    .line 187
    :catchall_ba
    move-exception v0

    .line 188
    :try_start_bb
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    :goto_be
    throw v3
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_b3

    .line 192
    :goto_bf
    :try_start_bf
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    .line 193
    .line 194
    .line 195
    goto :goto_c7

    .line 196
    :catchall_c3
    move-exception v1

    .line 197
    :try_start_c4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    :goto_c7
    throw v0
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c8} :catch_b1

    .line 201
    :goto_c8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    return-object v2

    .line 205
    :catch_cc
    move-exception v0

    .line 206
    goto :goto_e2

    .line 207
    :catchall_ce
    move-exception v0

    .line 208
    goto :goto_d9

    .line 209
    :goto_d0
    :try_start_d0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d4

    .line 210
    .line 211
    .line 212
    goto :goto_d8

    .line 213
    :catchall_d4
    move-exception v3

    .line 214
    :try_start_d5
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    :goto_d8
    throw v0
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_ce

    .line 218
    :goto_d9
    :try_start_d9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    .line 219
    .line 220
    .line 221
    goto :goto_e1

    .line 222
    :catchall_dd
    move-exception v1

    .line 223
    :try_start_de
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    :goto_e1
    throw v0
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e2} :catch_cc

    .line 227
    :goto_e2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    .line 229
    .line 230
    return-object v2

    .line 231
    :array_e6
    .array-data 1
        -0x5bt
        -0x56t
        0x46t
        0x59t
        -0x66t
        -0x6t
        -0x56t
        -0x4dt
        -0x63t
        -0x7dt
        0x7ft
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_f0
    .array-data 1
        -0xet
        -0x13t
        0x19t
        0xft
        -0x36t
        -0x4ct
        -0x7ct
        -0x30t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_f8
    .array-data 1
        0x7et
        -0x39t
        -0x42t
        -0x2et
        -0x49t
        0x41t
        0x65t
        -0x25t
        0x1bt
        -0x6ct
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    nop

    .line 259
    :array_102
    .array-data 1
        0x3bt
        -0x57t
        -0x26t
        -0x5et
        -0x28t
        0x28t
        0xbt
        -0x51t
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_10a
    .array-data 1
        0x43t
        -0x38t
        0x7t
        -0x27t
        0x2bt
        -0x27t
        -0x79t
        -0x27t
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_112
    .array-data 1
        -0x55t
        0x7bt
        0x75t
        -0x74t
        -0x7t
        0x37t
        0x26t
        -0x75t
    .end array-data
.end method

.method public o()V
    .registers 6

    .line 1
    iget-object v0, p0, Ld2/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/example/navistart/TestSpaceActivity;

    .line 4
    .line 5
    if-eqz v0, :cond_24

    .line 6
    .line 7
    iget-object v0, p0, Ld2/h;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 18
    .line 19
    goto :goto_24

    .line 20
    :cond_13
    iget-object v0, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 23
    .line 24
    new-instance v1, La4/g;

    .line 25
    .line 26
    const/4 v2, 0x7

    .line 27
    invoke-direct {v1, v2, p0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v2, 0x12c

    .line 31
    .line 32
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    .line 34
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 35
    .line 36
    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method public p(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V
    .registers 8

    .line 1
    iget-object v0, p0, Ld2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    new-instance v1, Ljava/util/Date;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v2, v2, [B

    .line 21
    .line 22
    const/16 v3, 0x1f

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-byte v3, v2, v4

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    new-array v4, v3, [B

    .line 30
    .line 31
    fill-array-data v4, :array_78

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v4, v1, v0}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [B

    .line 39
    .line 40
    fill-array-data v0, :array_80

    .line 41
    .line 42
    .line 43
    new-array v2, v3, [B

    .line 44
    .line 45
    fill-array-data v2, :array_86

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2, v1, p1}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, 0x7

    .line 53
    new-array v0, v0, [B

    .line 54
    .line 55
    fill-array-data v0, :array_8e

    .line 56
    .line 57
    .line 58
    new-array v1, v3, [B

    .line 59
    .line 60
    fill-array-data v1, :array_96

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Ld2/h;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Ljava/util/LinkedList;

    .line 73
    .line 74
    monitor-enter v0

    .line 75
    :try_start_4a
    iget-object v1, p0, Ld2/h;->d:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Ljava/util/LinkedList;

    .line 78
    .line 79
    new-instance v2, Le0/j;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, v2, Le0/j;->a:Ljava/lang/String;

    .line 85
    .line 86
    iput-object p2, v2, Le0/j;->b:Lcom/example/navistart/cores/ColorText;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Ld2/h;->d:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Ljava/util/LinkedList;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/16 p2, 0x1f4

    .line 100
    .line 101
    if-le p1, p2, :cond_70

    .line 102
    .line 103
    iget-object p1, p0, Ld2/h;->d:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Ljava/util/LinkedList;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_70

    .line 111
    :catchall_6e
    move-exception p1

    .line 112
    goto :goto_75

    .line 113
    :cond_70
    :goto_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_4a .. :try_end_71} :catchall_6e

    .line 114
    invoke-virtual {p0}, Ld2/h;->o()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :goto_75
    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_6e

    .line 119
    throw p1

    .line 120
    nop

    .line 121
    :array_78
    .array-data 1
        0x44t
        -0x56t
        0x42t
        -0x79t
        -0x79t
        -0xet
        -0x3bt
        -0xet
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_80
    .array-data 1
        0x58t
        0x63t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_86
    .array-data 1
        0x5t
        0x43t
        0x6et
        -0x11t
        0x7et
        -0x63t
        0xct
        0x65t
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_8e
    .array-data 1
        0xdt
        0x3t
        0x12t
        -0x77t
        -0x5t
        0x55t
        -0x11t
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_96
    .array-data 1
        0x4ct
        0x73t
        0x62t
        -0x3bt
        -0x6ct
        0x32t
        -0x64t
        0x6et
    .end array-data
.end method

.method public q()V
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {p0}, Ld2/h;->n()Lf7/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Ld2/h;->e:Ljava/lang/Object;

    .line 10
    .line 11
    if-eqz v1, :cond_2d

    .line 12
    .line 13
    new-instance v1, Lcom/wireguard/android/backend/GoBackend;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/wireguard/android/backend/GoBackend;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Ld2/h;->d:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v1, Lr5/c;

    .line 21
    .line 22
    const/16 v2, 0x1b

    .line 23
    .line 24
    invoke-direct {v1, v2, p0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Ld2/h;->f:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x7f1304d5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/example/navistart/VJCT;->u(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_2b
    move-exception v0

    .line 45
    goto :goto_3c

    .line 46
    :cond_2d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const v1, 0x7f1304d4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/example/navistart/VJCT;->u(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_2b

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_3c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
