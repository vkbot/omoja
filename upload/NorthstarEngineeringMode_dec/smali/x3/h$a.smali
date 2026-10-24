.class public final Lx3/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public c:Ljava/lang/Runnable;

.field public final synthetic r:Lx3/h;


# direct methods
.method public constructor <init>(Lx3/h;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/h$a;->r:Lx3/h;

    iput-object p2, p0, Lx3/h$a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lx3/h$a;->c:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lh3/g;->c:Lh3/g;

    invoke-static {v2, v1}, Lv3/y;->a(Lh3/f;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lx3/h$a;->r:Lx3/h;

    invoke-virtual {v1}, Lx3/h;->B()Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iput-object v2, p0, Lx3/h$a;->c:Ljava/lang/Runnable;

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    iget-object v2, v1, Lx3/h;->x:Lv3/w;

    invoke-virtual {v2}, Lv3/w;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1, p0}, Lv3/w;->l(Lh3/f;Ljava/lang/Runnable;)V

    return-void
.end method
