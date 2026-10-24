.class public final Lk/a;
.super Landroidx/appcompat/view/menu/e;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lk/a;->d:I

    iput-object p2, p0, Lk/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    iget v0, p0, Lk/a;->d:I

    iget-object p0, p0, Lk/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lk/b;

    invoke-virtual {p0}, Lk/j;->clear()V

    return-void

    :goto_0
    check-cast p0, Lk/c;

    invoke-virtual {p0}, Lk/c;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(II)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk/a;->d:I

    iget-object p0, p0, Lk/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lk/b;

    iget-object p0, p0, Lk/j;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0

    :goto_0
    check-cast p0, Lk/c;

    iget-object p0, p0, Lk/c;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Lk/b;
    .locals 1

    iget v0, p0, Lk/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lk/a;->e:Ljava/lang/Object;

    check-cast p0, Lk/b;

    return-object p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lk/a;->d:I

    iget-object p0, p0, Lk/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lk/b;

    iget p0, p0, Lk/j;->c:I

    return p0

    :goto_0
    check-cast p0, Lk/c;

    iget p0, p0, Lk/c;->c:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lk/a;->d:I

    iget-object p0, p0, Lk/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lk/b;

    invoke-virtual {p0, p1}, Lk/j;->e(Ljava/lang/Object;)I

    move-result p0

    return p0

    :goto_0
    check-cast p0, Lk/c;

    invoke-virtual {p0, p1}, Lk/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lk/a;->d:I

    iget-object p0, p0, Lk/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lk/b;

    invoke-virtual {p0, p1}, Lk/j;->g(Ljava/lang/Object;)I

    move-result p0

    return p0

    :goto_0
    check-cast p0, Lk/c;

    invoke-virtual {p0, p1}, Lk/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lk/a;->d:I

    iget-object p0, p0, Lk/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lk/b;

    invoke-virtual {p0, p1, p2}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    check-cast p0, Lk/c;

    invoke-virtual {p0, p1}, Lk/c;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(I)V
    .locals 1

    iget v0, p0, Lk/a;->d:I

    iget-object p0, p0, Lk/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lk/b;

    invoke-virtual {p0, p1}, Lk/j;->i(I)Ljava/lang/Object;

    return-void

    :goto_0
    check-cast p0, Lk/c;

    invoke-virtual {p0, p1}, Lk/c;->e(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lk/a;->e:Ljava/lang/Object;

    check-cast p0, Lk/b;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lk/j;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
