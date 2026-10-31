.class public final Ln7/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final h:Ln7/c;


# instance fields
.field public final a:Ln7/o;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:[[Ljava/lang/Object;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/Boolean;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lc2/k;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lc2/k;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aput v1, v2, v3

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput v1, v2, v1

    .line 15
    .line 16
    const-class v1, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, [[Ljava/lang/Object;

    .line 23
    .line 24
    iput-object v1, v0, Lc2/k;->e:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 27
    .line 28
    iput-object v1, v0, Lc2/k;->g:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance v1, Ln7/c;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ln7/c;-><init>(Lc2/k;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Ln7/c;->h:Ln7/c;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Lc2/k;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lc2/k;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ln7/o;

    .line 7
    .line 8
    iput-object v0, p0, Ln7/c;->a:Ln7/o;

    .line 9
    .line 10
    iget-object v0, p1, Lc2/k;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object v0, p0, Ln7/c;->b:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    iget-object v0, p1, Lc2/k;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, [[Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v0, p0, Ln7/c;->c:[[Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, p1, Lc2/k;->g:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/List;

    .line 25
    .line 26
    iput-object v0, p0, Ln7/c;->d:Ljava/util/List;

    .line 27
    .line 28
    iget-object v0, p1, Lc2/k;->h:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    .line 32
    iput-object v0, p0, Ln7/c;->e:Ljava/lang/Boolean;

    .line 33
    .line 34
    iget-object v0, p1, Lc2/k;->f:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/lang/Integer;

    .line 37
    .line 38
    iput-object v0, p0, Ln7/c;->f:Ljava/lang/Integer;

    .line 39
    .line 40
    iget-object p1, p1, Lc2/k;->i:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/lang/Integer;

    .line 43
    .line 44
    iput-object p1, p0, Ln7/c;->g:Ljava/lang/Integer;

    .line 45
    .line 46
    return-void
.end method

.method public static b(Ln7/c;)Lc2/k;
    .registers 3

    .line 1
    new-instance v0, Lc2/k;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lc2/k;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Ln7/c;->a:Ln7/o;

    .line 8
    .line 9
    iput-object v1, v0, Lc2/k;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v1, p0, Ln7/c;->b:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    iput-object v1, v0, Lc2/k;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, p0, Ln7/c;->c:[[Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v1, v0, Lc2/k;->e:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v1, p0, Ln7/c;->d:Ljava/util/List;

    .line 20
    .line 21
    iput-object v1, v0, Lc2/k;->g:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, p0, Ln7/c;->e:Ljava/lang/Boolean;

    .line 24
    .line 25
    iput-object v1, v0, Lc2/k;->h:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v1, p0, Ln7/c;->f:Ljava/lang/Integer;

    .line 28
    .line 29
    iput-object v1, v0, Lc2/k;->f:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object p0, p0, Ln7/c;->g:Ljava/lang/Integer;

    .line 32
    .line 33
    iput-object p0, v0, Lc2/k;->i:Ljava/lang/Object;

    .line 34
    .line 35
    return-object v0
.end method


# virtual methods
.method public final a(La9/w;)Ljava/lang/Object;
    .registers 6

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_7
    iget-object v2, p0, Ln7/c;->c:[[Ljava/lang/Object;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v1, v3, :cond_1f

    .line 12
    .line 13
    aget-object v3, v2, v1

    .line 14
    .line 15
    aget-object v3, v3, v0

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1c

    .line 22
    .line 23
    aget-object p1, v2, v1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aget-object p1, p1, v0

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_7

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final c(La9/w;Ljava/lang/Object;)Ln7/c;
    .registers 12

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_b
    iget-object v3, p0, Ln7/c;->c:[[Ljava/lang/Object;

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    const/4 v5, -0x1

    .line 16
    if-ge v2, v4, :cond_1f

    .line 17
    .line 18
    aget-object v4, v3, v2

    .line 19
    .line 20
    aget-object v4, v4, v1

    .line 21
    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1c

    .line 27
    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    move v2, v5

    .line 33
    :goto_20
    array-length v4, v3

    .line 34
    const/4 v6, 0x1

    .line 35
    if-ne v2, v5, :cond_26

    .line 36
    .line 37
    move v7, v6

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v7, v1

    .line 40
    :goto_27
    add-int/2addr v4, v7

    .line 41
    const/4 v7, 0x2

    .line 42
    new-array v8, v7, [I

    .line 43
    .line 44
    aput v7, v8, v6

    .line 45
    .line 46
    aput v4, v8, v1

    .line 47
    .line 48
    const-class v4, Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, [[Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v4, v0, Lc2/k;->e:Ljava/lang/Object;

    .line 57
    .line 58
    array-length v6, v3

    .line 59
    invoke-static {v3, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lc2/k;->e:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, [[Ljava/lang/Object;

    .line 65
    .line 66
    if-ne v2, v5, :cond_4b

    .line 67
    .line 68
    array-length v2, v3

    .line 69
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    aput-object p1, v1, v2

    .line 74
    .line 75
    goto :goto_51

    .line 76
    :cond_4b
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    aput-object p1, v1, v2

    .line 81
    .line 82
    :goto_51
    new-instance p1, Ln7/c;

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ln7/c;-><init>(Lc2/k;)V

    .line 85
    .line 86
    .line 87
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "deadline"

    .line 6
    .line 7
    iget-object v2, p0, Ln7/c;->a:Ln7/o;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "authority"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "callCredentials"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Ln7/c;->b:Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    if-eqz v2, :cond_1f

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move-object v2, v1

    .line 33
    :goto_20
    const-string v3, "executor"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "compressorName"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Ln7/c;->c:[[Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "customOptions"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    iget-object v2, p0, Ln7/c;->e:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const-string v2, "waitForReady"

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->d(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    const-string v1, "maxInboundMessageSize"

    .line 68
    .line 69
    iget-object v2, p0, Ln7/c;->f:Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "maxOutboundMessageSize"

    .line 75
    .line 76
    iget-object v2, p0, Ln7/c;->g:Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "streamTracerFactories"

    .line 82
    .line 83
    iget-object v2, p0, Ln7/c;->d:Ljava/util/List;

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method
