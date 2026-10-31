.class public final Lo7/i1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/bumptech/glide/manager/t;


# direct methods
.method public synthetic constructor <init>(Lcom/bumptech/glide/manager/t;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo7/i1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/i1;->c:Lcom/bumptech/glide/manager/t;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lo7/i1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/i1;->c:Lcom/bumptech/glide/manager/t;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lo7/k1;

    .line 11
    .line 12
    iget-object v1, v1, Lo7/k1;->s:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lo7/g1;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lo7/i1;->c:Lcom/bumptech/glide/manager/t;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lo7/k1;

    .line 26
    .line 27
    iget-object v0, v0, Lo7/k1;->w:Ln7/k;

    .line 28
    .line 29
    iget-object v0, v0, Ln7/k;->a:Ln7/j;

    .line 30
    .line 31
    sget-object v1, Ln7/j;->f:Ln7/j;

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lo7/i1;->c:Lcom/bumptech/glide/manager/t;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lo7/k1;

    .line 40
    .line 41
    iget-object v0, v0, Lo7/k1;->s:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lo7/i1;->c:Lcom/bumptech/glide/manager/t;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lo7/k1;

    .line 54
    .line 55
    iget-object v1, v0, Lo7/k1;->k:Ln7/k1;

    .line 56
    .line 57
    new-instance v2, Lo7/f1;

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    invoke-direct {v2, v0, v3}, Lo7/f1;-><init>(Lo7/k1;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lo7/i1;->c:Lcom/bumptech/glide/manager/t;

    .line 68
    .line 69
    iget-object v1, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Lo7/k1;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    iput-object v2, v1, Lo7/k1;->n:Lo7/r0;

    .line 75
    .line 76
    iget-object v3, v1, Lo7/k1;->x:Ln7/f1;

    .line 77
    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    iget-object v0, v1, Lo7/k1;->v:Lo7/g1;

    .line 81
    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    .line 87
    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    .line 88
    .line 89
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lo7/i1;->c:Lcom/bumptech/glide/manager/t;

    .line 93
    .line 94
    iget-object v1, v0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Lo7/g1;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lo7/k1;

    .line 101
    .line 102
    iget-object v0, v0, Lo7/k1;->x:Ln7/f1;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lo7/u0;->a(Ln7/f1;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    iget-object v3, v1, Lo7/k1;->u:Lo7/g1;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lo7/g1;

    .line 113
    .line 114
    if-ne v3, v0, :cond_3

    .line 115
    .line 116
    iput-object v0, v1, Lo7/k1;->v:Lo7/g1;

    .line 117
    .line 118
    iget-object v0, p0, Lo7/i1;->c:Lcom/bumptech/glide/manager/t;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lo7/k1;

    .line 123
    .line 124
    iput-object v2, v0, Lo7/k1;->u:Lo7/g1;

    .line 125
    .line 126
    sget-object v1, Ln7/j;->c:Ln7/j;

    .line 127
    .line 128
    invoke-static {v0, v1}, Lo7/k1;->e(Lo7/k1;Ln7/j;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_1
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
