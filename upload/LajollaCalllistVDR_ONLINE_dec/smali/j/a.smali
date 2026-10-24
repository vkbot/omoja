.class public final Lj/a;
.super Landroidx/appcompat/view/menu/e;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj/a;->d:I

    iput-object p2, p0, Lj/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget v0, p0, Lj/a;->d:I

    iget-object v1, p0, Lj/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lj/b;

    invoke-virtual {v1}, Lj/j;->clear()V

    return-void

    :goto_0
    check-cast v1, Lj/c;

    invoke-virtual {v1}, Lj/c;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(II)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj/a;->d:I

    iget-object v1, p0, Lj/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lj/b;

    iget-object v0, v1, Lj/j;->c:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1

    :goto_0
    check-cast v1, Lj/c;

    iget-object p2, v1, Lj/c;->c:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Lj/b;
    .locals 2

    iget v0, p0, Lj/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lj/a;->e:Ljava/lang/Object;

    check-cast v0, Lj/b;

    return-object v0

    :goto_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 2

    iget v0, p0, Lj/a;->d:I

    iget-object v1, p0, Lj/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lj/b;

    iget v0, v1, Lj/j;->d:I

    return v0

    :goto_0
    check-cast v1, Lj/c;

    iget v0, v1, Lj/c;->d:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lj/a;->d:I

    iget-object v1, p0, Lj/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lj/b;

    invoke-virtual {v1, p1}, Lj/j;->e(Ljava/lang/Object;)I

    move-result p1

    return p1

    :goto_0
    check-cast v1, Lj/c;

    invoke-virtual {v1, p1}, Lj/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lj/a;->d:I

    iget-object v1, p0, Lj/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lj/b;

    invoke-virtual {v1, p1}, Lj/j;->g(Ljava/lang/Object;)I

    move-result p1

    return p1

    :goto_0
    check-cast v1, Lj/c;

    invoke-virtual {v1, p1}, Lj/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lj/a;->d:I

    iget-object v1, p0, Lj/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lj/b;

    invoke-virtual {v1, p1, p2}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    check-cast v1, Lj/c;

    invoke-virtual {v1, p1}, Lj/c;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(I)V
    .locals 2

    iget v0, p0, Lj/a;->d:I

    iget-object v1, p0, Lj/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lj/b;

    invoke-virtual {v1, p1}, Lj/j;->i(I)Ljava/lang/Object;

    return-void

    :goto_0
    check-cast v1, Lj/c;

    invoke-virtual {v1, p1}, Lj/c;->e(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lj/a;->e:Ljava/lang/Object;

    check-cast v0, Lj/b;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, v0, Lj/j;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :goto_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
