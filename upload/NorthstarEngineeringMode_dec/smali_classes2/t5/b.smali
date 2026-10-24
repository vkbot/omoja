.class public final Lt5/b;
.super Lr5/f;
.source "SourceFile"

# interfaces
.implements Lr5/d;


# instance fields
.field public final d:J

.field public e:Lm5/h;


# direct methods
.method public constructor <init>(Lr5/b;Lm5/h;)V
    .locals 5

    invoke-direct {p0}, Lr5/f;-><init>()V

    iget-object v0, p2, Lm5/h;->a:Lm5/z0;

    iget-wide v0, v0, Lm5/z0;->k:J

    iput-wide v0, p0, Lt5/b;->d:J

    invoke-virtual {p2, p0}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->g0()V

    invoke-virtual {p0, p1}, Lr5/f;->f(Lr5/b;)V

    invoke-virtual {p0}, Lr5/f;->g()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p2, Lm5/h;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->m:Lm5/h$b;

    invoke-virtual {v0, p2}, Lm5/h$b;->a(Lm5/h;)I

    move-result v0

    iget-object v1, p2, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->m:Lm5/h$b;

    iget v2, p2, Lm5/h;->m:I

    iget-object v3, v1, Lm5/h$b;->e:[I

    iget-object v1, v1, Lm5/h$b;->f:[I

    const/4 v4, -0x1

    invoke-static {v2, v4, v3, v1, v0}, Lm5/h$b;->b(II[I[II)I

    move-result v0

    iput v0, p2, Lm5/h;->m:I

    iget v0, p2, Lm5/h;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lm5/h;->p:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lt5/b;->h(ILm5/h;)V

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lt5/b;->e:Lm5/h;

    invoke-static {p1}, Lm5/z0;->K(Lm5/h;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lt5/b;->b()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lm5/h;)Z
    .locals 5

    iget-object v0, p0, Lt5/b;->e:Lm5/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    iget-wide v0, v0, Lm5/z0;->k:J

    iget-wide v2, p0, Lt5/b;->d:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string p1, "Document changed during select"

    invoke-direct {p0, p1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v0, p1, Lm5/h;->p:I

    :cond_2
    iget-object v1, p0, Lt5/b;->e:Lm5/h;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lm5/h;->G()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->B()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lt5/b;->b()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lr5/f;->e()V

    iget-object v1, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->Z()Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->F()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lt5/b;->e:Lm5/h;

    iget-object v1, v1, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v1}, Lr5/f;->d(Ljavax/xml/namespace/QName;)I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_5

    iget-object v3, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {p1, v3}, Lm5/h;->a(Lm5/h;)V

    :cond_5
    invoke-virtual {p0, v1, p1}, Lt5/b;->h(ILm5/h;)V

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lt5/b;->e:Lm5/h;

    invoke-static {v1}, Lm5/z0;->K(Lm5/h;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_6
    invoke-virtual {p0}, Lr5/f;->e()V

    iget-object v1, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->q0()Z

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->Z()Z

    iget-object v1, p0, Lt5/b;->e:Lm5/h;

    iget v3, v1, Lm5/h;->c:I

    const/4 v4, -0x1

    if-eqz v3, :cond_8

    if-eq v3, v4, :cond_8

    goto :goto_1

    :cond_8
    iget-object v1, v1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->z0()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, -0x2

    if-eq v1, v3, :cond_9

    if-eq v1, v2, :cond_9

    if-ne v1, v4, :cond_7

    :cond_9
    :goto_2
    iget v1, p1, Lm5/h;->p:I

    if-eq v0, v1, :cond_2

    return v2

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lt5/b;->e:Lm5/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm5/h;->h0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt5/b;->e:Lm5/h;

    :cond_0
    return-void
.end method

.method public final h(ILm5/h;)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->t0()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lt5/b;->e:Lm5/h;

    iget-object p1, p1, Lm5/h;->b:Lm5/w1;

    iget-object p1, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lr5/f;->c(Ljavax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {p2, p1}, Lm5/h;->a(Lm5/h;)V

    :cond_1
    iget-object p1, p0, Lt5/b;->e:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->u0()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lt5/b;->e:Lm5/h;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lm5/h;->v0(Z)Z

    :cond_2
    return-void
.end method
