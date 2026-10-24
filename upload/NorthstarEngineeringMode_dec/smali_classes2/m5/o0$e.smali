.class public abstract Lm5/o0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field public final a:Lm5/o0$a;

.field public final b:Lm5/z0;

.field public c:J

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm5/o0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm5/o0$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/o0$e;->a:Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p1

    iput-object p1, p0, Lm5/o0$e;->b:Lm5/z0;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm5/o0$e;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lm5/o0$a;)V
    .locals 2

    invoke-static {p1}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lm5/o0$e;->c(Lm5/o0$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/o0$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1}, Lm5/o0$e;->a(Lm5/o0$a;)V

    :cond_1
    invoke-static {p1}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 5

    iget-wide v0, p0, Lm5/o0$e;->c:J

    iget-object v2, p0, Lm5/o0$e;->b:Lm5/z0;

    iget-wide v3, v2, Lm5/z0;->k:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide v3, p0, Lm5/o0$e;->c:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm5/o0$e;->d:Ljava/util/ArrayList;

    new-instance v0, Lorg/apache/poi/ddf/c;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-static {v2, p0, v0}, Lm5/o0;->W(Lm5/z0;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public abstract c(Lm5/o0$a;)Z
.end method

.method public final getLength()I
    .locals 0

    invoke-virtual {p0}, Lm5/o0$e;->b()V

    iget-object p0, p0, Lm5/o0$e;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final item(I)Lorg/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lm5/o0$e;->b()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Lm5/o0$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm5/o0$e;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
