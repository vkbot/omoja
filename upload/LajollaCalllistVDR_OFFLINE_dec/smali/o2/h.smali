.class public final Lo2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ll2/a;


# instance fields
.field public final a:Ljava/util/Iterator;

.field public final synthetic b:Lo2/c;


# direct methods
.method public constructor <init>(Lo2/c;)V
    .locals 0

    iput-object p1, p0, Lo2/h;->b:Lo2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lo2/c;->c:Ljava/lang/Object;

    check-cast p1, Lo2/d;

    invoke-interface {p1}, Lo2/d;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lo2/h;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lo2/h;->a:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo2/h;->b:Lo2/c;

    iget-object v0, v0, Lo2/c;->b:Lk2/l;

    iget-object p0, p0, Lo2/h;->a:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lk2/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
