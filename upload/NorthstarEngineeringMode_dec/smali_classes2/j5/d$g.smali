.class public Lj5/d$g;
.super Lj5/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final b:Li5/v;

.field public final c:Ljava/util/LinkedHashSet;

.field public final d:Lr5/f;

.field public final synthetic e:Lj5/d;


# direct methods
.method public constructor <init>(Lj5/d;Li5/v;Lj5/n$a;Li5/c0;)V
    .locals 1

    iput-object p1, p0, Lj5/d$g;->e:Lj5/d;

    invoke-direct {p0, p1}, Lj5/d$a;-><init>(Lj5/d;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lj5/d$g;->c:Ljava/util/LinkedHashSet;

    iput-object p2, p0, Lj5/d$g;->b:Li5/v;

    new-instance v0, Lr5/f;

    invoke-direct {v0}, Lr5/f;-><init>()V

    iput-object v0, p0, Lj5/d$g;->d:Lr5/f;

    invoke-interface {p2}, Li5/v;->E0()Lr5/b;

    move-result-object p2

    invoke-virtual {v0, p2}, Lr5/f;->f(Lr5/b;)V

    invoke-virtual {v0}, Lr5/f;->g()I

    move-result p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p2, Lj5/d$c;

    invoke-direct {p2, p1, p0, p3, p4}, Lj5/d$c;-><init>(Lj5/d;Lj5/d$g;Lj5/n$a;Li5/c0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lj5/n$a;Ljavax/xml/namespace/QName;Li5/c0;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Lj5/n$a;Li5/c0;)V
    .locals 2

    iget-object v0, p0, Lj5/d$g;->d:Lr5/f;

    check-cast p1, Lm5/v1;

    invoke-virtual {p1}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr5/f;->d(Ljavax/xml/namespace/QName;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lj5/d$c;

    iget-object v1, p0, Lj5/d$g;->e:Lj5/d;

    invoke-direct {v0, v1, p0, p1, p2}, Lj5/d$c;-><init>(Lj5/d;Lj5/d$g;Lj5/n$a;Li5/c0;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lj5/d$g;->d:Lr5/f;

    invoke-virtual {p0}, Lr5/f;->e()V

    return-void
.end method

.method public d(Lj5/n$a;)V
    .locals 3

    iget-object p1, p0, Lj5/d$a;->a:Lj5/d$a;

    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lj5/d$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lj5/d$f;

    iget-object v1, v0, Lj5/d$g;->b:Li5/v;

    invoke-interface {v1}, Li5/v;->j0()Li5/v;

    move-result-object v1

    iget-object v2, p0, Lj5/d$g;->b:Li5/v;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lj5/d$g;->c:Ljava/util/LinkedHashSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lj5/d$f;->f(Ljava/util/LinkedHashSet;Z)V

    :cond_0
    iget-object p1, p1, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Lj5/n$a;Li5/c0;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
