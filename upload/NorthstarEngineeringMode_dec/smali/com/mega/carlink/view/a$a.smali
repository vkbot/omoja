.class public final Lcom/mega/carlink/view/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carlink/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/mega/carlink/view/a;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/mega/carlink/view/a;->b:Lcom/mega/carlink/view/a;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mega/carlink/view/a;->b:Lcom/mega/carlink/view/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mega/carlink/view/a;

    invoke-direct {v0, p1}, Lcom/mega/carlink/view/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mega/carlink/view/a;->b:Lcom/mega/carlink/view/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method
