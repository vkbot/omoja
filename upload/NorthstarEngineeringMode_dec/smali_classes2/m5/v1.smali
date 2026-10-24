.class public final Lm5/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/n$a;


# instance fields
.field public final a:Lj5/n;

.field public final b:Lm5/h;

.field public c:Z

.field public d:Z

.field public final e:Lm5/h;

.field public f:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lm5/h;Lo5/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm5/h;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lm5/v1;->a:Lj5/n;

    iput-object p1, p0, Lm5/v1;->b:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->r0()Lm5/h;

    move-result-object p2

    iput-object p2, p0, Lm5/v1;->e:Lm5/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm5/v1;->c:Z

    invoke-virtual {p1}, Lm5/h;->g0()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lm5/v1;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lm5/h;->c0()Z

    iput-object v0, p0, Lm5/v1;->b:Lm5/h;

    iput-object v0, p0, Lm5/v1;->a:Lj5/n;

    invoke-virtual {p2}, Lm5/h;->h0()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lm5/v1;->b:Lm5/h;

    invoke-virtual {p2}, Lm5/h;->c0()Z

    iput-object v0, p0, Lm5/v1;->b:Lm5/h;

    iput-object v0, p0, Lm5/v1;->a:Lj5/n;

    iget-object p0, p0, Lm5/v1;->e:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->h0()V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Inappropriate location to validate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final D()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm5/v1;->k(I)V

    iget-object v1, p0, Lm5/v1;->b:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->D()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lm5/h;->Z()Z

    invoke-virtual {v1}, Lm5/h;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lm5/v1;->t()V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lm5/v1;->e()V

    :goto_0
    invoke-virtual {v1}, Lm5/h;->Z()Z

    invoke-virtual {v1}, Lm5/h;->B()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lm5/h;->M()I

    move-result v2

    const/4 v4, -0x2

    if-eq v2, v4, :cond_5

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected kind: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lm5/h;->M()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lm5/h;->s0()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lm5/v1;->k(I)V

    invoke-virtual {p0}, Lm5/v1;->e()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lm5/v1;->t()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lm5/v1;->k(I)V

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p0, v3}, Lm5/v1;->k(I)V

    return-void
.end method

.method public final J(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lm5/v1;->b:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lm5/w1;->B0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lm5/v1;->b:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->t0()Z

    move-result v1

    iget-object v2, p0, Lm5/v1;->a:Lj5/n;

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lm5/h;->c:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->s0()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-static {v1}, Lm5/z0;->z(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    move-object v3, v2

    check-cast v3, Lo5/a;

    invoke-virtual {v3, v1, p0}, Lo5/a;->e(ILj5/n$a;)V

    :cond_1
    invoke-virtual {v0}, Lm5/h;->u0()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm5/h;->v0(Z)Z

    :cond_2
    const/4 v0, 0x5

    check-cast v2, Lo5/a;

    invoke-virtual {v2, v0, p0}, Lo5/a;->e(ILj5/n$a;)V

    return-void
.end method

.method public final k(I)V
    .locals 3

    iget-boolean v0, p0, Lm5/v1;->c:Z

    iget-object v1, p0, Lm5/v1;->a:Lj5/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    move-object v2, v1

    check-cast v2, Lo5/a;

    invoke-virtual {v2, v0, p0}, Lo5/a;->e(ILj5/n$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm5/v1;->c:Z

    :cond_0
    check-cast v1, Lo5/a;

    invoke-virtual {v1, p1, p0}, Lo5/a;->e(ILj5/n$a;)V

    return-void
.end method

.method public final t()V
    .locals 7

    iget-boolean v0, p0, Lm5/v1;->c:Z

    iget-object v1, p0, Lm5/v1;->b:Lm5/h;

    iget-object v2, p0, Lm5/v1;->e:Lm5/h;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lm5/v1;->d:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/v1;->f:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lm5/v1;->f:Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lm5/v1;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v5

    iget v6, v2, Lm5/h;->r:I

    iget v2, v2, Lm5/h;->s:I

    invoke-static {v0, v5, v6, v2}, Lm5/f;->d(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    iput-boolean v4, p0, Lm5/v1;->d:Z

    :cond_1
    iget-object p0, p0, Lm5/v1;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lm5/h;->r:I

    iget v1, v1, Lm5/h;->s:I

    invoke-static {p0, v0, v2, v1}, Lm5/f;->d(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm5/v1;->c:Z

    iput-boolean v0, p0, Lm5/v1;->d:Z

    invoke-virtual {v2, v1}, Lm5/h;->W(Lm5/h;)V

    :goto_1
    return-void
.end method

.method public final x()Ljavax/xml/namespace/QName;
    .locals 1

    iget-object p0, p0, Lm5/v1;->b:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    :goto_0
    return-object p0
.end method
