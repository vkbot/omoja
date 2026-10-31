.class public final Lh8/a0;
.super Lh8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic d:I

.field public final e:I

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh8/w;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lh8/a0;->d:I

    .line 18
    invoke-direct {p0, p1}, Lh8/a;-><init>(Lx7/b;)V

    .line 19
    sget-object p1, Ld8/b;->a:Lc5/e;

    iput-object p1, p0, Lh8/a0;->f:Ljava/lang/Object;

    .line 20
    iput p2, p0, Lh8/a0;->e:I

    return-void
.end method

.method public constructor <init>(Lx7/b;Lb8/c;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lh8/a0;->d:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lh8/a;-><init>(Lx7/b;)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lh8/a0;->f:Ljava/lang/Object;

    .line 8
    .line 9
    const p1, 0x7fffffff

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lh8/a0;->e:I

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lx7/b;Lx7/k;I)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lh8/a0;->d:I

    .line 15
    invoke-direct {p0, p1}, Lh8/a;-><init>(Lx7/b;)V

    .line 16
    iput-object p2, p0, Lh8/a0;->f:Ljava/lang/Object;

    .line 17
    iput p3, p0, Lh8/a0;->e:I

    return-void
.end method


# virtual methods
.method public final e(Lx7/d;)V
    .registers 6

    .line 1
    iget v0, p0, Lh8/a0;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_78

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh8/a0;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx7/k;

    .line 9
    .line 10
    invoke-virtual {v0}, Lx7/k;->a()Lx7/j;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, p1, Le8/a;

    .line 15
    .line 16
    iget v2, p0, Lh8/a0;->e:I

    .line 17
    .line 18
    iget-object v3, p0, Lh8/a;->c:Lx7/b;

    .line 19
    .line 20
    if-eqz v1, :cond_20

    .line 21
    .line 22
    new-instance v1, Lh8/i0;

    .line 23
    .line 24
    check-cast p1, Le8/a;

    .line 25
    .line 26
    invoke-direct {v1, p1, v0, v2}, Lh8/i0;-><init>(Le8/a;Lx7/j;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Lx7/b;->d(Lx7/d;)V

    .line 30
    .line 31
    .line 32
    goto :goto_28

    .line 33
    :cond_20
    new-instance v1, Lh8/j0;

    .line 34
    .line 35
    invoke-direct {v1, p1, v0, v2}, Lh8/j0;-><init>(Lx7/d;Lx7/j;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Lx7/b;->d(Lx7/d;)V

    .line 39
    .line 40
    .line 41
    :goto_28
    return-void

    .line 42
    :pswitch_29
    iget-object v0, p0, Lh8/a0;->f:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lc5/e;

    .line 45
    .line 46
    iget-object v1, p0, Lh8/a;->c:Lx7/b;

    .line 47
    .line 48
    instance-of v2, v1, Ljava/util/concurrent/Callable;

    .line 49
    .line 50
    if-eqz v2, :cond_5c

    .line 51
    .line 52
    :try_start_33
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_54

    .line 58
    if-nez v1, :cond_3f

    .line 59
    .line 60
    invoke-static {p1}, Lo8/d;->a(Lx7/d;)V

    .line 61
    .line 62
    .line 63
    goto :goto_66

    .line 64
    :cond_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    check-cast v1, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_4c

    .line 73
    invoke-static {p1, v0}, Lh8/l;->f(Lx7/d;Ljava/util/Iterator;)V

    .line 74
    .line 75
    .line 76
    goto :goto_66

    .line 77
    :catchall_4c
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, p1}, Lo8/d;->b(Ljava/lang/Throwable;Lx7/d;)V

    .line 82
    .line 83
    .line 84
    goto :goto_66

    .line 85
    :catchall_54
    move-exception v0

    .line 86
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, p1}, Lo8/d;->b(Ljava/lang/Throwable;Lx7/d;)V

    .line 90
    .line 91
    .line 92
    goto :goto_66

    .line 93
    :cond_5c
    new-instance v2, Lh8/b0;

    .line 94
    .line 95
    iget v3, p0, Lh8/a0;->e:I

    .line 96
    .line 97
    invoke-direct {v2, p1, v0, v3}, Lh8/b0;-><init>(Lx7/d;Lc5/e;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lx7/b;->d(Lx7/d;)V

    .line 101
    .line 102
    .line 103
    :goto_66
    return-void

    .line 104
    :pswitch_67
    new-instance v0, Lh8/z;

    .line 105
    .line 106
    iget-object v1, p0, Lh8/a0;->f:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Lb8/c;

    .line 109
    .line 110
    iget v2, p0, Lh8/a0;->e:I

    .line 111
    .line 112
    invoke-direct {v0, p1, v1, v2}, Lh8/z;-><init>(Lx7/d;Lb8/c;I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lh8/a;->c:Lx7/b;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lx7/b;->d(Lx7/d;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_67
        :pswitch_29
    .end packed-switch
.end method
