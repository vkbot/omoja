.class public final Li8/u;
.super Lx7/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Li8/u;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Li8/u;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lx7/h;)V
    .registers 5

    .line 1
    iget v0, p0, Li8/u;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_8c

    .line 4
    .line 5
    .line 6
    sget-object v0, Lc8/b;->b:Lc8/b;

    .line 7
    .line 8
    :try_start_7
    iget-object v1, p0, Li8/u;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_73

    .line 16
    :try_start_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_68

    .line 20
    if-nez v2, :cond_1c

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lx7/h;->a()V

    .line 26
    .line 27
    .line 28
    goto :goto_7d

    .line 29
    :cond_1c
    new-instance v0, Lj8/i;

    .line 30
    .line 31
    invoke-direct {v0, p1, v1}, Lj8/i;-><init>(Lx7/h;Ljava/util/Iterator;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 35
    .line 36
    .line 37
    iget-boolean p1, v0, Lj8/i;->e:Z

    .line 38
    .line 39
    if-nez p1, :cond_7d

    .line 40
    .line 41
    :cond_28
    iget-boolean p1, v0, Lj8/i;->d:Z

    .line 42
    .line 43
    if-eqz p1, :cond_2d

    .line 44
    .line 45
    goto :goto_7d

    .line 46
    :cond_2d
    :try_start_2d
    iget-object p1, v0, Lj8/i;->c:Ljava/util/Iterator;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "The iterator returned a null value"

    .line 53
    .line 54
    invoke-static {p1, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_5e

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lj8/i;->b:Lx7/h;

    .line 58
    .line 59
    invoke-interface {v1, p1}, Lx7/h;->e(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-boolean p1, v0, Lj8/i;->d:Z

    .line 63
    .line 64
    if-eqz p1, :cond_42

    .line 65
    .line 66
    goto :goto_7d

    .line 67
    :cond_42
    :try_start_42
    iget-object p1, v0, Lj8/i;->c:Ljava/util/Iterator;

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result p1
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_54

    .line 73
    if-nez p1, :cond_28

    .line 74
    .line 75
    iget-boolean p1, v0, Lj8/i;->d:Z

    .line 76
    .line 77
    if-nez p1, :cond_7d

    .line 78
    .line 79
    iget-object p1, v0, Lj8/i;->b:Lx7/h;

    .line 80
    .line 81
    invoke-interface {p1}, Lx7/h;->a()V

    .line 82
    .line 83
    .line 84
    goto :goto_7d

    .line 85
    :catchall_54
    move-exception p1

    .line 86
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v0, Lj8/i;->b:Lx7/h;

    .line 90
    .line 91
    invoke-interface {v0, p1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    goto :goto_7d

    .line 95
    :catchall_5e
    move-exception p1

    .line 96
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, Lj8/i;->b:Lx7/h;

    .line 100
    .line 101
    invoke-interface {v0, p1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    goto :goto_7d

    .line 105
    :catchall_68
    move-exception v1

    .line 106
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    goto :goto_7d

    .line 116
    :catchall_73
    move-exception v1

    .line 117
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :cond_7d
    :goto_7d
    return-void

    .line 127
    :pswitch_7e
    iget-object v0, p0, Li8/u;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lx7/e;

    .line 130
    .line 131
    new-instance v1, Li8/t;

    .line 132
    .line 133
    invoke-direct {v1, p1}, Li8/t;-><init>(Lx7/h;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lx7/e;->c(Lx7/f;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_7e
    .end packed-switch
.end method
