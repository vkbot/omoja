.class public final Lq6/a;
.super Lq6/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lf6/a;I)V
    .registers 3

    .line 1
    iput p2, p0, Lq6/a;->d:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lo/b;-><init>(Lf6/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lo/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf6/a;

    .line 4
    .line 5
    iget v0, v0, Lf6/a;->c:I

    .line 6
    .line 7
    const/16 v1, 0x3c

    .line 8
    .line 9
    if-ne v0, v1, :cond_1f

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    invoke-virtual {p0, v0, v1}, Lq6/d;->b(Ljava/lang/StringBuilder;I)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x2d

    .line 21
    .line 22
    const/16 v2, 0xf

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1, v2}, Lq6/e;->f(Ljava/lang/StringBuilder;II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_1f
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 33
    .line 34
    throw v0
.end method

.method public final d(Ljava/lang/StringBuilder;I)V
    .registers 4

    .line 1
    iget v0, p0, Lq6/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2710

    .line 7
    .line 8
    if-ge p2, v0, :cond_f

    .line 9
    .line 10
    const-string p2, "(3202)"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    goto :goto_14

    .line 16
    :cond_f
    const-string p2, "(3203)"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :goto_14
    return-void

    .line 22
    :pswitch_15
    const-string p2, "(3103)"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method public final e(I)I
    .registers 3

    .line 1
    iget v0, p0, Lq6/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_e

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2710

    .line 7
    .line 8
    if-ge p1, v0, :cond_a

    .line 9
    .line 10
    goto :goto_c

    .line 11
    :cond_a
    add-int/lit16 p1, p1, -0x2710

    .line 12
    .line 13
    :goto_c
    :pswitch_c
    return p1

    .line 14
    nop

    .line 15
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method
