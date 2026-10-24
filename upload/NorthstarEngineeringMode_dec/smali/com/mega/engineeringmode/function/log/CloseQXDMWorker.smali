.class public final Lcom/mega/engineeringmode/function/log/CloseQXDMWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field public final a:Lf3/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    new-instance p1, Lf3/d;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lf3/d;-><init>(I)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/log/CloseQXDMWorker;->a:Lf3/d;

    return-void
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 4

    const-string v0, "CloseQXDMWorker"

    const-string v1, "closeQxdmLogRecord"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/log/CloseQXDMWorker;->a:Lf3/d;

    invoke-virtual {v0}, Lf3/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln2/i;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "QXDM_LOG_KEY"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "QXDMLog end"

    invoke-static {p0, v2, v1}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    const-string/jumbo v0, "{\n            Result.success()\n        }"

    invoke-static {p0, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    const-string/jumbo v0, "{\n            Result.failure()\n        }"

    invoke-static {p0, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
