.class public final Lw2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lt2/a;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final synthetic c:Lw2/c;


# direct methods
.method public constructor <init>(Lw2/c;)V
    .locals 0

    iput-object p1, p0, Lw2/h;->c:Lw2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lw2/c;->c:Ljava/lang/Object;

    check-cast p1, Lw2/d;

    invoke-interface {p1}, Lw2/d;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lw2/h;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lw2/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw2/h;->c:Lw2/c;

    iget-object v0, v0, Lw2/c;->b:Ls2/l;

    iget-object v1, p0, Lw2/h;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ls2/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
