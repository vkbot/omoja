.class public final Lm5/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/p0;
.implements Lm5/z0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/y$a;
    }
.end annotation


# instance fields
.field public c:Lm5/h;

.field public r:Lr5/d;

.field public x:I

.field public y:Lm5/z0$a;


# direct methods
.method public constructor <init>(Lm5/h;)V
    .locals 5

    iget-object v0, p1, Lm5/h;->b:Lm5/w1;

    iget p1, p1, Lm5/h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, v0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->r()Lm5/h;

    move-result-object v1

    new-instance v2, Lm5/z0$f;

    iget-object v3, v1, Lm5/h;->a:Lm5/z0;

    iget-object v4, v3, Lm5/z0;->c:Ljava/lang/ref/ReferenceQueue;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v4, v3, Lm5/z0;->c:Ljava/lang/ref/ReferenceQueue;

    :cond_0
    iget-object v3, v3, Lm5/z0;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p0, v3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, v2, Lm5/z0$f;->a:Lm5/h;

    iput-object v2, v1, Lm5/h;->k:Lm5/z0$f;

    iput-object v1, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1, v0, p1}, Lm5/h;->Y(Lm5/w1;I)V

    const/4 p1, -0x1

    iput p1, p0, Lm5/y;->x:I

    return-void
.end method

.method public static i2(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lj5/p;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is not valid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A0()Ljava/lang/String;
    .locals 2

    new-instance v0, Lm5/q;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final A1()V
    .locals 2

    new-instance v0, Lm5/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lm5/v;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final B0()Li5/p0$a;
    .locals 1

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->M()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Li5/p0$a;->l:Li5/p0$a;

    return-object p0

    :pswitch_1
    sget-object p0, Li5/p0$a;->k:Li5/p0$a;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->L()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Li5/p0$a;->j:Li5/p0$a;

    goto :goto_0

    :cond_0
    sget-object p0, Li5/p0$a;->i:Li5/p0$a;

    :goto_0
    return-object p0

    :pswitch_3
    sget-object p0, Li5/p0$a;->f:Li5/p0$a;

    return-object p0

    :pswitch_4
    sget-object p0, Li5/p0$a;->d:Li5/p0$a;

    return-object p0

    :pswitch_5
    sget-object p0, Li5/p0$a;->h:Li5/p0$a;

    return-object p0

    :pswitch_6
    sget-object p0, Li5/p0$a;->e:Li5/p0$a;

    return-object p0

    :pswitch_7
    sget-object p0, Li5/p0$a;->g:Li5/p0$a;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final B1(Ljavax/xml/namespace/QName;)Z
    .locals 2

    new-instance v0, Lm5/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lm5/x;-><init>(Lm5/y;Ljavax/xml/namespace/QName;I)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final C()Li5/p0$a;
    .locals 2

    new-instance v0, Lm5/q;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/p0$a;

    return-object p0
.end method

.method public final C1(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lm5/n;

    invoke-direct {v0, p0, p1}, Lm5/n;-><init>(Lm5/y;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final D0(I)Z
    .locals 1

    new-instance v0, Lm5/o;

    invoke-direct {v0, p1, p0}, Lm5/o;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final E()Z
    .locals 2

    new-instance v0, Lm5/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lm5/i;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final E1(Lm5/y;)Z
    .locals 3

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v2, p1, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0, v2}, Lm5/w1;->Q(Lm5/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lm5/y;->U1(Lm5/y;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->r0()Lm5/h;

    move-result-object v0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object v2, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v2, v1}, Lm5/h;->T(Lm5/h;Z)V

    iget-object p0, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v0}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lm5/s;

    invoke-direct {v0, p0, p1, p2}, Lm5/s;-><init>(Lm5/y;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lm5/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lm5/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final I(Ljavax/xml/namespace/QName;)V
    .locals 2

    new-instance v0, Lq0/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p1}, Lq0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final I0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lorg/apache/poi/util/i;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/poi/util/i;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;I)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final I1(Li5/p0;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm5/y;->g2(Li5/p0;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public final J(Ljava/lang/String;Ljavax/xml/namespace/QName;)Z
    .locals 1

    new-instance v0, Lm5/l;

    invoke-direct {v0, p0, p2, p1}, Lm5/l;-><init>(Lm5/y;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final K(Li5/p0;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lm5/y;->g2(Li5/p0;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final K0(Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm5/y;->i2(Ljava/lang/String;)V

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lm5/h;->f(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v0, p1}, Lm5/y;->X1(Lm5/h;Ljava/lang/String;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "QName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final L0()Z
    .locals 2

    new-instance v0, Lm5/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lm5/i;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final M1()Z
    .locals 2

    new-instance v0, Lm5/q;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final O0(Ljavax/xml/namespace/QName;)V
    .locals 2

    new-instance v0, Ls0/h;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final O1(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;
    .locals 3

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    if-nez p1, :cond_0

    sget-object p1, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v0, Li5/z1$a;->i1:Li5/z1$a;

    iget-object v1, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Li5/z1$a;->h1:Li5/z1$a;

    iget-object p1, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v0

    if-eqz v0, :cond_5

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p1}, Lm5/w1;->k0()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p1}, Lm5/w1;->l0()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lm5/x0;

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->e0()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget v2, v1, Lm5/z0;->o:I

    iput v2, p0, Lm5/h;->r:I

    iget v1, v1, Lm5/z0;->p:I

    iput v1, p0, Lm5/h;->s:I

    invoke-direct {p1, p0}, Lm5/v0;-><init>(Lm5/h;)V

    iput-object v0, p1, Lm5/x0;->d:Ljava/lang/Object;

    iput-object p0, p1, Lm5/x0;->c:Lm5/h;

    goto :goto_3

    :cond_3
    new-instance p1, Lm5/w0;

    invoke-direct {p1, p0, v2}, Lm5/w0;-><init>(Lm5/h;Z)V

    goto :goto_3

    :cond_4
    new-instance p1, Lm5/w0;

    invoke-direct {p1, p0, v1}, Lm5/w0;-><init>(Lm5/h;Z)V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance p1, Lm5/x0;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0}, Lm5/v0;-><init>(Lm5/h;)V

    iput-object v0, p1, Lm5/x0;->d:Ljava/lang/Object;

    iput-object p0, p1, Lm5/x0;->c:Lm5/h;

    :goto_3
    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget-boolean v0, v0, Lm5/z0;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Lm5/u0;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    invoke-direct {v0, p0, p1}, Lm5/s0;-><init>(Lm5/z0;Lm5/v0;)V

    goto :goto_4

    :cond_6
    new-instance v0, Lm5/t0;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    invoke-direct {v0, p0, p1}, Lm5/s0;-><init>(Lm5/z0;Lm5/v0;)V

    :goto_4
    return-object v0
.end method

.method public final P0()Li5/p0$a;
    .locals 2

    new-instance v0, Lm5/i;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lm5/i;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/p0$a;

    return-object p0
.end method

.method public final P1(Ljava/io/OutputStream;Li5/z1;)V
    .locals 3

    if-eqz p1, :cond_1

    new-instance v0, Lm5/g1$e;

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-direct {v0, p0, p2}, Lm5/g1$e;-><init>(Lm5/h;Li5/z1;)V

    const/16 p0, 0x2000

    const/4 p2, 0x1

    :try_start_0
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_0

    iput-boolean p2, v0, Lm5/g1$e;->r:Z

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, p0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    iput-boolean p2, v0, Lm5/g1$e;->r:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null OutputStream specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Q1(Ljava/lang/String;Li5/z1;)V
    .locals 1

    iget-object v0, p0, Lm5/y;->r:Lr5/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr5/d;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm5/y;->r:Lr5/d;

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->d()V

    const/4 v0, -0x1

    iput v0, p0, Lm5/y;->x:I

    invoke-static {p1, p2}, Lr5/g;->a(Ljava/lang/String;Li5/z1;)Lr5/a;

    move-result-object p1

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-interface {p1, v0, p2}, Lr5/a;->a(Lm5/h;Li5/z1;)Lr5/d;

    move-result-object p1

    iput-object p1, p0, Lm5/y;->r:Lr5/d;

    iget-object p1, p0, Lm5/y;->c:Lm5/h;

    iget-object p1, p1, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lm5/y;->y:Lm5/z0$a;

    if-nez p2, :cond_2

    iget-object p2, p1, Lm5/z0;->j:Lm5/z0$a;

    if-nez p2, :cond_1

    iput-object p0, p0, Lm5/y;->y:Lm5/z0$a;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lm5/y;->y:Lm5/z0$a;

    :goto_0
    iput-object p0, p1, Lm5/z0;->j:Lm5/z0$a;

    :cond_2
    return-void
.end method

.method public final R1(ILjavax/xml/namespace/QName;)Z
    .locals 5

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    sget-object v0, Lm5/z0;->z:Le5/g;

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lm5/h;->g0()V

    :goto_0
    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lm5/h;->b0()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm5/h;->q0()Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v3, p0, Lm5/h;->b:Lm5/w1;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4, p1}, Lm5/z0;->o(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)Lm5/w1;

    move-result-object p1

    invoke-virtual {p0}, Lm5/h;->c0()Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lm5/h;->c0()Z

    :cond_3
    :goto_1
    return v0
.end method

.method public final S()Z
    .locals 2

    new-instance v0, Lm5/p;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final S0(Ljavax/xml/namespace/QName;)V
    .locals 1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm5/y;->i2(Ljava/lang/String;)V

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm5/h;->i(Ljavax/xml/namespace/QName;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lm5/y;->X1(Lm5/h;Ljava/lang/String;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    return-void
.end method

.method public final S1()Li5/p0$a;
    .locals 4

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->J()Z

    move-result v0

    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->e0()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Li5/p0$a;->c:Li5/p0$a;

    return-object p0

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0, v2}, Lm5/h;->v0(Z)Z

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->M()I

    move-result v1

    const/4 v3, -0x4

    if-eq v1, v3, :cond_5

    const/4 v3, -0x5

    if-eq v1, v3, :cond_5

    const/4 v3, -0x3

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->E()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->t0()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lm5/h;->u0()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lm5/y;->S1()Li5/p0$a;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0, v2}, Lm5/h;->v0(Z)Z

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lm5/y;->B0()Li5/p0$a;

    move-result-object p0

    return-object p0
.end method

.method public final T1(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    iget v2, v1, Lm5/h;->p:I

    if-lt p1, v2, :cond_2

    iget-object v2, p0, Lm5/y;->r:Lr5/d;

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-interface {v2, v1}, Lr5/d;->a(Lm5/h;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lm5/y;->r:Lr5/d;

    invoke-interface {p1}, Lr5/d;->b()V

    const/4 p1, 0x0

    iput-object p1, p0, Lm5/y;->r:Lr5/d;

    return v0

    :cond_2
    iput p1, p0, Lm5/y;->x:I

    iget-object p0, v1, Lm5/h;->a:Lm5/z0;

    iget-object p0, p0, Lm5/z0;->m:Lm5/h$b;

    invoke-virtual {v1, p1}, Lm5/h;->j0(I)I

    move-result p1

    iget-object v0, p0, Lm5/h$b;->d:[Lm5/h;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    iget-object v0, p0, Lm5/h$b;->b:[Lm5/w1;

    aget-object v0, v0, p1

    iget-object p0, p0, Lm5/h$b;->c:[I

    aget p0, p0, p1

    invoke-virtual {v1, v0, p0}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lm5/h;->W(Lm5/h;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final U()Z
    .locals 2

    new-instance v0, Lm5/q;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final U1(Lm5/y;)Z
    .locals 1

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->g0()V

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->c0()Z

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p1, v0}, Lm5/y;->W1(Lm5/h;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->c0()Z

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->c0()Z

    throw p1
.end method

.method public final V(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lm5/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lm5/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final V1(Li5/p0;)Lm5/y;
    .locals 2

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    instance-of p0, p1, Lm5/y;

    if-eqz p0, :cond_1

    check-cast p1, Lm5/y;

    iget-object p0, p1, Lm5/y;->c:Lm5/h;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Other cursor has been disposed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incompatible cursors: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Other cursor is <null>"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This cursor has been disposed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final W0()Li5/p0$a;
    .locals 2

    new-instance v0, Lm5/p;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/p0$a;

    return-object p0
.end method

.method public final W1(Lm5/h;)V
    .locals 6

    invoke-virtual {p1}, Lm5/h;->M()I

    move-result p1

    if-ltz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->M()I

    move-result v1

    if-eq v1, v0, :cond_6

    const-string v2, "Can only insert attributes before other attributes or after containers."

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    iget-object v4, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v4}, Lm5/h;->g0()V

    iget-object v4, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v4}, Lm5/h;->e0()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lm5/h;->D()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lm5/h;->v0(Z)Z

    :goto_0
    iget-object v4, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v4}, Lm5/h;->M()I

    move-result v4

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->c0()Z

    const/4 p0, 0x2

    if-eq v4, p0, :cond_3

    if-eq v4, v0, :cond_3

    const/4 p0, -0x3

    if-ne v4, p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-ne v1, v3, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t insert before the start of the document."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t move/copy/insert a whole document."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t move/copy/insert an end token."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lmega/car/hardware/property/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1, p2}, Lmega/car/hardware/property/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final X0()Z
    .locals 2

    new-instance v0, Lm5/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final X1(Lm5/h;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lm5/h;->Z()Z

    invoke-virtual {p1, p2}, Lm5/h;->A(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lm5/h;->v0(Z)Z

    :cond_0
    invoke-virtual {p0, p1}, Lm5/y;->W1(Lm5/h;)V

    iget-object p2, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p1, p2}, Lm5/h;->R(Lm5/h;)V

    iget-object p1, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->s0()V

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->b0()Z

    return-void
.end method

.method public final Y1()Z
    .locals 1

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    iget-boolean p0, p0, Lm5/z0;->a:Z

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This cursor has been disposed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Z()Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    new-instance v0, Lm5/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public final Z0(Ljavax/xml/namespace/QName;)Z
    .locals 2

    new-instance v0, Lm5/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lm5/x;-><init>(Lm5/y;Ljavax/xml/namespace/QName;I)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lm5/y;->Y1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lm5/y;->b2(Ljava/util/function/Supplier;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lm5/y;->b2(Ljava/util/function/Supplier;Z)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a1()Z
    .locals 2

    new-instance v0, Lm5/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final a2(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lm5/y;->Y1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lm5/y;->c2(Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lm5/y;->c2(Ljava/lang/Runnable;Z)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b2(Ljava/util/function/Supplier;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;Z)TT;"
        }
    .end annotation

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lm5/z0;->l()V

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lm5/z0;->m()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lm5/z0;->m()V

    :cond_2
    throw p1
.end method

.method public final c2(Ljava/lang/Runnable;Z)V
    .locals 0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lm5/z0;->l()V

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lm5/z0;->m()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lm5/z0;->m()V

    :cond_2
    throw p1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    if-eqz v0, :cond_0

    new-instance v0, Ls0/b;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d2(Lm5/k;)V
    .locals 4

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->l()V

    :try_start_0
    iget-object v0, p1, Lm5/k;->a:Lm5/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lm5/g1$i;

    iget-object v0, v0, Lm5/y;->c:Lm5/h;

    iget-object v2, p1, Lm5/k;->d:Li5/z1;

    iget-object v3, p1, Lm5/k;->b:Lorg/xml/sax/ContentHandler;

    iget-object p1, p1, Lm5/k;->c:Lorg/xml/sax/ext/LexicalHandler;

    invoke-direct {v1, v0, v2, v3, p1}, Lm5/g1$i;-><init>(Lm5/h;Li5/z1;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public final dispose()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lm5/y;->close()V

    return-void
.end method

.method public final documentProperties()Li5/t0;
    .locals 2

    new-instance v0, Lm5/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lm5/i;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/t0;

    return-object p0
.end method

.method public final dump()V
    .locals 2

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e0()Z
    .locals 2

    new-instance v0, Lm5/p;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final e2(Lm5/y$a;)V
    .locals 1

    invoke-virtual {p0}, Lm5/y;->Y1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->l()V

    :try_start_0
    invoke-interface {p1}, Lm5/y$a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lm5/z0;->m()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Lm5/y$a;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lm5/z0;->m()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final f()Li5/p0$b;
    .locals 3

    new-instance v0, Lm5/w;

    const/4 v1, 0x1

    const-class v2, Li5/o1;

    invoke-direct {v0, v1, p0, v2}, Lm5/w;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/p0$b;

    return-object p0
.end method

.method public final f0(Li5/p0;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lm5/y;->g2(Li5/p0;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f2(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lm5/y;->Y1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lm5/y;->b2(Ljava/util/function/Supplier;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lm5/y;->b2(Ljava/util/function/Supplier;Z)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g()Z
    .locals 2

    new-instance v0, Lm5/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lm5/i;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final g0(Ljavax/xml/namespace/QName;)Z
    .locals 2

    new-instance v0, Lm5/x;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lm5/x;-><init>(Lm5/y;Ljavax/xml/namespace/QName;I)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final g2(Li5/p0;I)I
    .locals 4

    invoke-virtual {p0, p1}, Lm5/y;->V1(Li5/p0;)Lm5/y;

    move-result-object p1

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    iget-object v1, p1, Lm5/y;->c:Lm5/h;

    iget-object v1, v1, Lm5/h;->a:Lm5/z0;

    if-ne v0, v1, :cond_0

    new-instance v0, Lm5/u;

    invoke-direct {v0, p0, p1, p2}, Lm5/u;-><init>(Lm5/y;Lm5/y;I)V

    invoke-virtual {p0, v0}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    iget-boolean v2, v0, Lm5/z0;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v0, v1, Lm5/z0;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, v3}, Lm5/y;->h2(Lm5/y;II)I

    move-result p0

    return p0

    :cond_1
    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lm5/y;->h2(Lm5/y;II)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-boolean v2, v1, Lm5/z0;->a:Z

    if-eqz v2, :cond_3

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lm5/y;->h2(Lm5/y;II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :try_start_2
    invoke-static {}, Lj5/c;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v2, 0x1

    :try_start_3
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {}, Lj5/c;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {p0, p1, p2, v3}, Lm5/y;->h2(Lm5/y;II)I

    move-result p0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return p0

    :catchall_2
    move-exception p0

    goto :goto_1

    :catchall_3
    move-exception p0

    goto :goto_0

    :catchall_4
    move-exception p0

    move v3, v2

    :goto_0
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    :catchall_5
    move-exception p0

    move v3, v2

    :goto_1
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_7
    move-exception p0

    move v3, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move v3, v2

    :goto_2
    :try_start_b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_3
    if-eqz v3, :cond_4

    invoke-static {}, Lj5/c;->b()V

    :cond_4
    throw p0
.end method

.method public final getDomNode()Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lm5/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 2

    new-instance v0, Lm5/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lm5/i;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lm5/t;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lm5/t;-><init>(Lm5/y;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h0()Ljava/lang/String;
    .locals 2

    new-instance v0, Lm5/p;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final h2(Lm5/y;II)I
    .locals 4

    const-string v0, "Unknown operation: "

    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    iget-object v1, v1, Lm5/h;->a:Lm5/z0;

    iget-object v2, p1, Lm5/y;->c:Lm5/h;

    iget-object v2, v2, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->l()V

    if-eq v2, v1, :cond_0

    invoke-virtual {v2}, Lm5/z0;->l()V

    :cond_0
    if-eqz p2, :cond_a

    const/4 v3, 0x1

    if-eq p2, v3, :cond_9

    const/4 v3, 0x2

    if-eq p2, v3, :cond_8

    const/4 v3, 0x3

    if-eq p2, v3, :cond_7

    const/4 v3, 0x4

    if-eq p2, v3, :cond_2

    const/4 v3, 0x5

    if-ne p2, v3, :cond_1

    :try_start_0
    invoke-virtual {p0, p3, p1}, Lm5/y;->o(ILm5/y;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v2}, Lm5/z0;->n(Lm5/z0;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p2, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p2}, Lm5/h;->c()I

    move-result p2

    if-lez p2, :cond_6

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    if-ltz p3, :cond_4

    if-le p3, p2, :cond_5

    :cond_4
    move p3, p2

    :cond_5
    iget-object p2, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p1, p2}, Lm5/y;->W1(Lm5/h;)V

    iget-object p2, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p2, p3, v0}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    iget-object p1, p1, Lm5/y;->c:Lm5/h;

    iget-object p2, p0, Lm5/y;->c:Lm5/h;

    iget p2, p2, Lm5/h;->s:I

    invoke-virtual {p1, p2}, Lm5/h;->a0(I)V

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget p0, p0, Lm5/h;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lm5/z0;->n(Lm5/z0;)V

    return p0

    :cond_7
    :try_start_2
    invoke-virtual {p0, p1}, Lm5/y;->z0(Lm5/y;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v2}, Lm5/z0;->n(Lm5/z0;)V

    return p0

    :cond_8
    :try_start_3
    invoke-virtual {p0, p1}, Lm5/y;->E1(Lm5/y;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1, v2}, Lm5/z0;->n(Lm5/z0;)V

    return p0

    :cond_9
    :try_start_4
    invoke-virtual {p0, p1}, Lm5/y;->y0(Lm5/y;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1, v2}, Lm5/z0;->n(Lm5/z0;)V

    return v3

    :cond_a
    :try_start_5
    invoke-virtual {p0, p1}, Lm5/y;->j1(Lm5/y;)Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v1, v2}, Lm5/z0;->n(Lm5/z0;)V

    return p0

    :goto_2
    invoke-virtual {v1, v2}, Lm5/z0;->n(Lm5/z0;)V

    throw p0
.end method

.method public final j0()V
    .locals 3

    new-instance v0, Lm5/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lm5/v;-><init>(ILm5/y;)V

    invoke-virtual {p0}, Lm5/y;->Y1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lm5/y;->c2(Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    iget-object v1, v1, Lm5/h;->a:Lm5/z0;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lm5/y;->c2(Ljava/lang/Runnable;Z)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j1(Lm5/y;)Z
    .locals 10

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p1, v0}, Lm5/y;->W1(Lm5/h;)V

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->J()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->c()I

    move-result v0

    iget-object v3, p0, Lm5/y;->c:Lm5/h;

    iget-object v4, p1, Lm5/y;->c:Lm5/h;

    const/4 v8, 0x1

    iget-object v5, v3, Lm5/h;->b:Lm5/w1;

    iget v6, v3, Lm5/h;->c:I

    iget-object v7, v4, Lm5/h;->b:Lm5/w1;

    iget v9, v4, Lm5/h;->c:I

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move v6, v9

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Lm5/w1;->n0(ILm5/w1;IIZ)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object v1, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v0, v1}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    iget-object p0, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v0}, Lm5/h;->a0(I)V

    return v2

    :cond_1
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v3, p1, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0, v3}, Lm5/w1;->Q(Lm5/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->r0()Lm5/h;

    move-result-object v0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object v1, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v1}, Lm5/h;->R(Lm5/h;)V

    iget-object p0, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v0}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    return v2
.end method

.method public final k()Z
    .locals 2

    new-instance v0, Lm5/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lm5/i;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final k0()Z
    .locals 2

    new-instance v0, Lm5/q;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final k1()Z
    .locals 2

    new-instance v0, Lm5/q;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final l()Z
    .locals 8

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget v2, v0, Lm5/h;->c:I

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    if-lt v2, v5, :cond_1

    iget-object v3, v0, Lm5/h;->b:Lm5/w1;

    iget v3, v3, Lm5/w1;->o:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lm5/h;->b:Lm5/w1;

    iget-object v2, v2, Lm5/w1;->f:Lm5/w1;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, v0, Lm5/h;->b:Lm5/w1;

    :goto_1
    if-nez v2, :cond_4

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0, v1}, Lm5/h;->v(Z)Lm5/w1;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->m()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw v0

    :cond_4
    :goto_2
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    sget-object v0, Lm5/z0;->z:Le5/g;

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v3, p0, Lm5/h;->c:I

    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    invoke-virtual {p0, v2, v1}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {p0}, Lm5/h;->Z()Z

    goto :goto_3

    :cond_5
    if-ne v6, v4, :cond_6

    invoke-virtual {p0}, Lm5/h;->q0()Z

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v2

    if-ltz v2, :cond_9

    if-ne v2, v4, :cond_7

    move v1, v5

    goto :goto_4

    :cond_7
    if-lez v2, :cond_8

    invoke-virtual {p0}, Lm5/h;->s0()V

    :cond_8
    invoke-virtual {p0}, Lm5/h;->Z()Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v0, v3}, Lm5/h;->Y(Lm5/w1;I)V

    :goto_4
    return v1
.end method

.method public final l0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lq0/b;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p1}, Lq0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    .locals 2

    new-instance v0, Lmega/car/hardware/property/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1, p1}, Lmega/car/hardware/property/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m0()Li5/p0$a;
    .locals 2

    new-instance v0, Lm5/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/p0$a;

    return-object p0
.end method

.method public final monitor()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lm5/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lm5/i;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final newCursor()Li5/p0;
    .locals 2

    new-instance v0, Lm5/i;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lm5/i;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/p0;

    return-object p0
.end method

.method public final newDomNode(Li5/z1;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lm5/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lm5/m;-><init>(Lm5/y;Li5/z1;I)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final newInputStream(Li5/z1;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lm5/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lm5/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public final newReader(Li5/z1;)Ljava/io/Reader;
    .locals 2

    new-instance v0, Lm5/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lm5/m;-><init>(Lm5/y;Li5/z1;I)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Reader;

    return-object p0
.end method

.method public final newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 2

    .line 1
    new-instance v0, Lm5/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/XMLStreamReader;

    return-object p0
.end method

.method public final newXMLStreamReader(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;
    .locals 2

    .line 2
    new-instance v0, Lm5/r;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lm5/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/XMLStreamReader;

    return-object p0
.end method

.method public final o(ILm5/y;)I
    .locals 3

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->c()I

    move-result v0

    if-lez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    :cond_1
    move p1, v0

    :cond_2
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p2, v0}, Lm5/y;->W1(Lm5/h;)V

    iget-object v0, p2, Lm5/y;->c:Lm5/h;

    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1, p1}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    iget v2, v1, Lm5/h;->r:I

    iget v1, v1, Lm5/h;->s:I

    invoke-virtual {v0, v2, v1, p1}, Lm5/h;->z(IILjava/lang/Object;)V

    iget-object p1, p2, Lm5/y;->c:Lm5/h;

    iget-object p2, p0, Lm5/y;->c:Lm5/h;

    iget p2, p2, Lm5/h;->s:I

    invoke-virtual {p1, p2}, Lm5/h;->a0(I)V

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget p0, p0, Lm5/h;->s:I

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o0()Z
    .locals 2

    new-instance v0, Lm5/p;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final q1()Z
    .locals 2

    new-instance v0, Lm5/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final s0()Li5/p0$b;
    .locals 3

    new-instance v0, Lm5/j;

    const/4 v1, 0x1

    const-class v2, Li5/o1;

    invoke-direct {v0, v1, p0, v2}, Lm5/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/p0$b;

    return-object p0
.end method

.method public final save(Ljava/io/File;Li5/z1;)V
    .locals 2

    .line 7
    new-instance v0, Lc2/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1, p2}, Lc2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->e2(Lm5/y$a;)V

    return-void
.end method

.method public final save(Ljava/io/OutputStream;Li5/z1;)V
    .locals 2

    .line 8
    new-instance v0, Lorg/apache/poi/ss/formula/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/apache/poi/ss/formula/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->e2(Lm5/y$a;)V

    return-void
.end method

.method public final save(Ljava/io/Writer;Li5/z1;)V
    .locals 1

    .line 9
    new-instance v0, Lm5/y0;

    invoke-direct {v0, p0, p1, p2}, Lm5/y0;-><init>(Lm5/y;Ljava/io/Writer;Li5/z1;)V

    invoke-virtual {p0, v0}, Lm5/y;->e2(Lm5/y$a;)V

    return-void
.end method

.method public final save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Li5/z1;)V
    .locals 1

    .line 1
    new-instance v0, Lm5/k;

    invoke-direct {v0, p0, p1, p2, p3}, Lm5/k;-><init>(Lm5/y;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Li5/z1;)V

    .line 2
    invoke-virtual {p0}, Lm5/y;->Y1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lm5/y;->d2(Lm5/k;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lm5/y;->c:Lm5/h;

    .line 4
    iget-object p1, p1, Lm5/h;->a:Lm5/z0;

    monitor-enter p1

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Lm5/y;->d2(Lm5/k;)V

    .line 6
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final selectPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ls0/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0, p1}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final selectPath(Ljava/lang/String;Li5/z1;)V
    .locals 2

    .line 2
    new-instance v0, Lm5/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lm5/t;-><init>(Lm5/y;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u()Z
    .locals 2

    new-instance v0, Lm5/q;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final u0()I
    .locals 2

    new-instance v0, Lm5/p;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lm5/p;-><init>(ILm5/y;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final v0(Li5/p0;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lm5/y;->V1(Li5/p0;)Lm5/y;

    move-result-object p1

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    iget-object v1, p1, Lm5/y;->c:Lm5/h;

    iget-object v1, v1, Lm5/h;->a:Lm5/z0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Lm5/w;

    invoke-direct {v0, v2, p0, p1}, Lm5/w;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final x0(Ljavax/xml/namespace/QName;)V
    .locals 2

    new-instance v0, Landroidx/constraintlayout/motion/widget/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lm5/y;->a2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final xmlText(Li5/z1;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lm5/m;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lm5/m;-><init>(Lm5/y;Li5/z1;I)V

    invoke-virtual {p0, v0}, Lm5/y;->Z1(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final y0(Lm5/y;)V
    .locals 4

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p1, v0}, Lm5/y;->W1(Lm5/h;)V

    iget-object v0, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->r0()Lm5/h;

    move-result-object v0

    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lm5/y;->c:Lm5/h;

    iget-object v2, p0, Lm5/y;->c:Lm5/h;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget v3, p0, Lm5/h;->r:I

    iget p0, p0, Lm5/h;->s:I

    invoke-virtual {v1, v3, p0, v2}, Lm5/h;->z(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object v1, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v1}, Lm5/h;->e(Lm5/h;)V

    :goto_0
    iget-object p0, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v0}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    return-void
.end method

.method public final z0(Lm5/y;)Z
    .locals 3

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v2, p1, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0, v2}, Lm5/w1;->Q(Lm5/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lm5/y;->U1(Lm5/y;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v0}, Lm5/h;->e(Lm5/h;)V

    iget-object p0, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->r0()Lm5/h;

    move-result-object p0

    iget-object v2, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0, v2, v1}, Lm5/h;->T(Lm5/h;Z)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    iget-object p1, p1, Lm5/y;->c:Lm5/h;

    invoke-virtual {p1, p0}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {p0}, Lm5/h;->h0()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method
