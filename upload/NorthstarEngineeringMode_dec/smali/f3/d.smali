.class public final Lf3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public c:Ln3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile r:Ljava/lang/Object;

.field public final x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    sget-object p1, Lcom/mega/engineeringmode/function/log/CloseQXDMWorker$a;->r:Lcom/mega/engineeringmode/function/log/CloseQXDMWorker$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/d;->c:Ln3/a;

    sget-object p1, Lf3/e;->a:Lf3/e;

    iput-object p1, p0, Lf3/d;->r:Ljava/lang/Object;

    iput-object p0, p0, Lf3/d;->x:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lf3/d;->r:Ljava/lang/Object;

    sget-object v1, Lf3/e;->a:Lf3/e;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lf3/d;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lf3/d;->r:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lf3/d;->c:Ln3/a;

    invoke-static {v1}, Lo3/h;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ln3/a;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lf3/d;->r:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lf3/d;->c:Ln3/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf3/d;->r:Ljava/lang/Object;

    sget-object v1, Lf3/e;->a:Lf3/e;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lf3/d;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0
.end method
