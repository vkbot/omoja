.class public final Lj5/d$c;
.super Lj5/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final b:Lj5/d$g;

.field public final c:[Lr5/f;

.field public final d:[Z

.field public final e:Lj5/s;

.field public final synthetic f:Lj5/d;


# direct methods
.method public constructor <init>(Lj5/d;Lj5/d$g;Lj5/n$a;Li5/c0;)V
    .locals 4

    iput-object p1, p0, Lj5/d$c;->f:Lj5/d;

    invoke-direct {p0, p1}, Lj5/d$a;-><init>(Lj5/d;)V

    iput-object p2, p0, Lj5/d$c;->b:Lj5/d$g;

    iget-object p2, p2, Lj5/d$g;->b:Li5/v;

    invoke-interface {p2}, Li5/v;->p0()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Lr5/f;

    iput-object v1, p0, Lj5/d$c;->c:[Lr5/f;

    new-array v1, v0, [Z

    iput-object v1, p0, Lj5/d$c;->d:[Z

    new-instance v1, Lj5/s;

    invoke-direct {v1, v0}, Lj5/s;-><init>(I)V

    iput-object v1, p0, Lj5/d$c;->e:Lj5/s;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lj5/d$c;->c:[Lr5/f;

    new-instance v3, Lr5/f;

    invoke-direct {v3}, Lr5/f;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lj5/d$c;->c:[Lr5/f;

    aget-object v2, v2, v1

    invoke-interface {p2, v1}, Li5/v;->y0(I)Lr5/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr5/f;->f(Lr5/b;)V

    iget-object v2, p0, Lj5/d$c;->c:[Lr5/f;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lr5/f;->g()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-static {p4}, Lj5/d;->c(Li5/c0;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Identity constraint field must have simple content"

    invoke-static {p1, p3, v2}, Lj5/d;->b(Lj5/d;Lj5/n$a;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lj5/d$c;->d:[Z

    aput-boolean v3, v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lj5/n$a;Ljavax/xml/namespace/QName;Li5/c0;Ljava/lang/String;)V
    .locals 4

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lj5/d$c;->c:[Lr5/f;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lr5/f;->c(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {p3, p4}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lj5/d$c;->e:Lj5/s;

    invoke-virtual {v2, v0, v1}, Lj5/s;->a(ILi5/i0;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple instances of field with xpath: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj5/d$c;->b:Lj5/d$g;

    iget-object v2, v2, Lj5/d$g;->b:Li5/v;

    invoke-interface {v2}, Li5/v;->p0()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    const-string v3, "\' for a selector"

    invoke-static {v1, v2, v3}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/d$c;->f:Lj5/d;

    invoke-static {v2, p1, v1}, Lj5/d;->b(Lj5/d;Lj5/n$a;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b(Lj5/n$a;Li5/c0;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lj5/d$c;->c:[Lr5/f;

    array-length v3, v2

    iget-object v4, p0, Lj5/d$c;->d:[Z

    const-string v5, "Identity constraint field must have simple content"

    iget-object v6, p0, Lj5/d$c;->f:Lj5/d;

    if-ge v1, v3, :cond_1

    aget-boolean v2, v4, v1

    if-eqz v2, :cond_0

    invoke-static {v6, p1, v5}, Lj5/d;->b(Lj5/d;Lj5/n$a;Ljava/lang/String;)V

    aput-boolean v0, v4, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length p0, v2

    if-ge v0, p0, :cond_4

    aget-object p0, v2, v0

    move-object v1, p1

    check-cast v1, Lm5/v1;

    invoke-virtual {v1}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lr5/f;->d(Ljavax/xml/namespace/QName;)I

    move-result p0

    const/4 v3, 0x1

    and-int/2addr p0, v3

    if-eqz p0, :cond_3

    invoke-static {p2}, Lj5/d;->c(Li5/c0;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v6, v1, v5}, Lj5/d;->b(Lj5/d;Lj5/n$a;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    aput-boolean v3, v4, v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lj5/d$c;->d:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lj5/d$c;->c:[Lr5/f;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lr5/f;->e()V

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lj5/n$a;)V
    .locals 5

    iget-object v0, p0, Lj5/d$c;->b:Lj5/d$g;

    iget-object v1, v0, Lj5/d$g;->b:Li5/v;

    invoke-interface {v1}, Li5/v;->J()I

    move-result v1

    iget-object v2, p0, Lj5/d$c;->e:Lj5/s;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Lj5/s;->b()I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Key "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lj5/d$g;->b:Li5/v;

    invoke-interface {v3}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v3}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is missing field with xpath: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lj5/d$g;->b:Li5/v;

    invoke-interface {v0}, Li5/v;->p0()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lj5/s;->b()I

    move-result v2

    aget-object v0, v0, v2

    const-string v2, "\'"

    invoke-static {v1, v0, v2}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lj5/d$c;->f:Lj5/d;

    invoke-static {p0, p1, v0}, Lj5/d;->b(Lj5/d;Lj5/n$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lj5/d$g;->b:Li5/v;

    invoke-interface {p0}, Li5/v;->J()I

    move-result v1

    iget-object v3, v0, Lj5/d$g;->c:Ljava/util/LinkedHashSet;

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Li5/v;->J()I

    move-result v1

    const/4 v3, 0x3

    iget-object v0, v0, Lj5/d$g;->e:Lj5/d;

    if-ne v1, v3, :cond_2

    invoke-interface {p0}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-static {p0}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "cvc-identity-constraint.4.1"

    invoke-static {v0, p1, v1, p0}, Lj5/d;->a(Lj5/d;Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-static {p0}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "cvc-identity-constraint.4.2.2"

    invoke-static {v0, p1, v1, p0}, Lj5/d;->a(Lj5/d;Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final e(Lj5/n$a;Li5/c0;Ljava/lang/String;Z)V
    .locals 4

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lj5/d$c;->c:[Lr5/f;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lj5/d$c;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lj5/d$c;->f:Lj5/d;

    if-nez p4, :cond_4

    invoke-static {p2}, Lj5/d;->c(Li5/c0;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    move-object v2, p2

    :goto_1
    invoke-interface {v2}, Li5/c0;->f0()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object v2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface {v2, p3}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lj5/d$c;->e:Lj5/s;

    invoke-virtual {v3, v0, v2}, Lj5/s;->a(ILi5/i0;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Multiple instances of field with xpath: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lj5/d$c;->b:Lj5/d$g;

    iget-object v3, v3, Lj5/d$g;->b:Li5/v;

    invoke-interface {v3}, Li5/v;->p0()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for a selector"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lj5/d;->b(Lj5/d;Lj5/n$a;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_3
    const-string p0, "Identity constraint field must have simple content"

    invoke-static {v1, p1, p0}, Lj5/d;->b(Lj5/d;Lj5/n$a;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
