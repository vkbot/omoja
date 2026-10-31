.class public final Lh8/l;
.super Lx7/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lh8/l;->c:I

    .line 2
    .line 3
    iput-object p2, p0, Lh8/l;->d:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static f(Lx7/d;Ljava/util/Iterator;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_25

    .line 5
    if-nez v0, :cond_a

    .line 6
    .line 7
    invoke-static {p0}, Lo8/d;->a(Lx7/d;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    instance-of v0, p0, Le8/a;

    .line 12
    .line 13
    if-eqz v0, :cond_1b

    .line 14
    .line 15
    new-instance v0, Lh8/d0;

    .line 16
    .line 17
    move-object v1, p0

    .line 18
    check-cast v1, Le8/a;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v1, p1, v2}, Lh8/d0;-><init>(Lx7/d;Ljava/util/Iterator;I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0}, Lx7/d;->f(Ln9/b;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance v0, Lh8/d0;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, p0, p1, v1}, Lh8/d0;-><init>(Lx7/d;Ljava/util/Iterator;I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0}, Lx7/d;->f(Ln9/b;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_25
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p0}, Lo8/d;->b(Ljava/lang/Throwable;Lx7/d;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final e(Lx7/d;)V
    .registers 6

    .line 1
    iget v0, p0, Lh8/l;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_9a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh8/l;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx7/e;

    .line 9
    .line 10
    new-instance v1, Li8/s;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lo8/c;-><init>(Lx7/d;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lx7/e;->c(Lx7/f;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_12
    iget-object v0, p0, Lh8/l;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lx7/g;

    .line 22
    .line 23
    new-instance v1, Lh8/e0;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lh8/e0;-><init>(Lx7/d;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lx7/g;->c(Lx7/h;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1f
    :try_start_1f
    iget-object v0, p0, Lh8/l;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lcom/google/protobuf/a0;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_2b

    .line 40
    invoke-static {p1, v0}, Lh8/l;->f(Lx7/d;Ljava/util/Iterator;)V

    .line 41
    .line 42
    .line 43
    goto :goto_32

    .line 44
    :catchall_2b
    move-exception v0

    .line 45
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1}, Lo8/d;->b(Ljava/lang/Throwable;Lx7/d;)V

    .line 49
    .line 50
    .line 51
    :goto_32
    return-void

    .line 52
    :pswitch_33
    iget-object v0, p0, Lh8/l;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, [Ljava/lang/Object;

    .line 55
    .line 56
    instance-of v1, p1, Le8/a;

    .line 57
    .line 58
    if-eqz v1, :cond_48

    .line 59
    .line 60
    new-instance v1, Lh8/c0;

    .line 61
    .line 62
    move-object v2, p1

    .line 63
    check-cast v2, Le8/a;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-direct {v1, v2, v0, v3}, Lh8/c0;-><init>(Lx7/d;[Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v1}, Lx7/d;->f(Ln9/b;)V

    .line 70
    .line 71
    .line 72
    goto :goto_51

    .line 73
    :cond_48
    new-instance v1, Lh8/c0;

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-direct {v1, p1, v0, v2}, Lh8/c0;-><init>(Lx7/d;[Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v1}, Lx7/d;->f(Ln9/b;)V

    .line 80
    .line 81
    .line 82
    :goto_51
    return-void

    .line 83
    :pswitch_52
    const/4 v0, 0x3

    .line 84
    invoke-static {v0}, Lcom/bumptech/glide/g;->c(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7b

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    if-eq v1, v2, :cond_75

    .line 92
    .line 93
    if-eq v1, v0, :cond_6f

    .line 94
    .line 95
    const/4 v0, 0x4

    .line 96
    if-eq v1, v0, :cond_69

    .line 97
    .line 98
    new-instance v0, Lh8/i;

    .line 99
    .line 100
    sget v1, Lx7/b;->b:I

    .line 101
    .line 102
    invoke-direct {v0, p1, v1}, Lh8/i;-><init>(Lx7/d;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_80

    .line 106
    :cond_69
    new-instance v0, Lh8/i;

    .line 107
    .line 108
    invoke-direct {v0, p1}, Lh8/i;-><init>(Lx7/d;)V

    .line 109
    .line 110
    .line 111
    goto :goto_80

    .line 112
    :cond_6f
    new-instance v0, Lh8/j;

    .line 113
    .line 114
    invoke-direct {v0, p1}, Lh8/h;-><init>(Lx7/d;)V

    .line 115
    .line 116
    .line 117
    goto :goto_80

    .line 118
    :cond_75
    new-instance v0, Lh8/j;

    .line 119
    .line 120
    invoke-direct {v0, p1}, Lh8/h;-><init>(Lx7/d;)V

    .line 121
    .line 122
    .line 123
    goto :goto_80

    .line 124
    :cond_7b
    new-instance v0, Lh8/k;

    .line 125
    .line 126
    invoke-direct {v0, p1}, Lh8/h;-><init>(Lx7/d;)V

    .line 127
    .line 128
    .line 129
    :goto_80
    invoke-interface {p1, v0}, Lx7/d;->f(Ln9/b;)V

    .line 130
    .line 131
    .line 132
    :try_start_83
    iget-object p1, p0, Lh8/l;->d:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Lx7/c;

    .line 135
    .line 136
    invoke-interface {p1}, Lx7/c;->d()V
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_8b

    .line 137
    .line 138
    .line 139
    goto :goto_98

    .line 140
    :catchall_8b
    move-exception p1

    .line 141
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p1}, Lh8/h;->f(Ljava/lang/Throwable;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_98

    .line 149
    .line 150
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :cond_98
    :goto_98
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_52
        :pswitch_33
        :pswitch_1f
        :pswitch_12
    .end packed-switch
.end method
