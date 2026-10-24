.class public final Lj5/d$e;
.super Lj5/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/util/LinkedHashSet;

.field public final synthetic c:Lj5/d;


# direct methods
.method public constructor <init>(Lj5/d;)V
    .locals 0

    iput-object p1, p0, Lj5/d$e;->c:Lj5/d;

    invoke-direct {p0, p1}, Lj5/d$a;-><init>(Lj5/d;)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lj5/d$e;->b:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a(Lj5/n$a;Ljavax/xml/namespace/QName;Li5/c0;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p4, p3, p1}, Lj5/d$e;->f(Ljava/lang/String;Li5/c0;Lj5/n$a;)V

    return-void
.end method

.method public final b(Lj5/n$a;Li5/c0;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Lj5/n$a;)V
    .locals 0

    return-void
.end method

.method public final e(Lj5/n$a;Li5/c0;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3, p2, p1}, Lj5/d$e;->f(Ljava/lang/String;Li5/c0;Lj5/n$a;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Li5/c0;Lj5/n$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    invoke-interface {p2}, Li5/c0;->x0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Li5/i1;->P:Li5/c0;

    invoke-interface {v0, p2}, Li5/c0;->G0(Li5/c0;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lj5/s;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lj5/s;-><init>(I)V

    :try_start_0
    invoke-interface {v0, p1}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lj5/s;->a(ILi5/i0;)Z

    iget-object v0, p0, Lj5/d$e;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lj5/d$e;->c:Lj5/d;

    const-string p2, "cvc-id.2"

    invoke-static {p0, p3, p2, p1}, Lj5/d;->a(Lj5/d;Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method
