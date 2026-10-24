.class public abstract Lm5/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;
.implements Ljavax/xml/namespace/NamespaceContext;
.implements Ljavax/xml/stream/Location;


# instance fields
.field public final a:Lm5/z0;

.field public final b:J


# direct methods
.method public constructor <init>(Lm5/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lm5/h;->a:Lm5/z0;

    iput-object p1, p0, Lm5/v0;->a:Lm5/z0;

    iget-wide v0, p1, Lm5/z0;->k:J

    iput-wide v0, p0, Lm5/v0;->b:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-wide v0, p0, Lm5/v0;->b:J

    iget-object p0, p0, Lm5/v0;->a:Lm5/z0;

    iget-wide v2, p0, Lm5/z0;->k:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Document changed while streaming"

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract b()Lm5/h;
.end method

.method public final getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lm5/v0;->a()V

    invoke-virtual {p0}, Lm5/v0;->b()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p0}, Lm5/h;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm5/h;->v0(Z)Z

    :cond_0
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lm5/w1;->B0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lm5/h;->c0()Z

    return-object p1
.end method

.method public final getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lm5/v0;->a()V

    invoke-virtual {p0}, Lm5/v0;->b()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p0}, Lm5/h;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lm5/h;->v0(Z)Z

    :cond_0
    invoke-virtual {p0}, Lm5/h;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lm5/h;->v(Z)Lm5/w1;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lm5/w1;->F0(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lm5/h;->c0()Z

    return-object p1
.end method

.method public final getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lm5/v0;->a()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1}, Lm5/v0;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
