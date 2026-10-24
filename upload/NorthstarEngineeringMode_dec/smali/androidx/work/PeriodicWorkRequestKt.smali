.class public final Landroidx/work/PeriodicWorkRequestKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final PeriodicWorkRequestBuilder(JLjava/util/concurrent/TimeUnit;)Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Landroidx/work/ListenableWorker;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/work/PeriodicWorkRequest$Builder;"
        }
    .end annotation

    const-string/jumbo p0, "repeatIntervalTimeUnit"

    invoke-static {p2, p0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final PeriodicWorkRequestBuilder(JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Landroidx/work/ListenableWorker;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/work/PeriodicWorkRequest$Builder;"
        }
    .end annotation

    const-string/jumbo p0, "repeatIntervalTimeUnit"

    invoke-static {p2, p0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "flexTimeIntervalUnit"

    invoke-static {p5, p0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final PeriodicWorkRequestBuilder(Ljava/time/Duration;)Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Landroidx/work/ListenableWorker;",
            ">(",
            "Ljava/time/Duration;",
            ")",
            "Landroidx/work/PeriodicWorkRequest$Builder;"
        }
    .end annotation

    const-string/jumbo v0, "repeatInterval"

    invoke-static {p0, v0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final PeriodicWorkRequestBuilder(Ljava/time/Duration;Ljava/time/Duration;)Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Landroidx/work/ListenableWorker;",
            ">(",
            "Ljava/time/Duration;",
            "Ljava/time/Duration;",
            ")",
            "Landroidx/work/PeriodicWorkRequest$Builder;"
        }
    .end annotation

    const-string/jumbo v0, "repeatInterval"

    invoke-static {p0, v0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "flexTimeInterval"

    invoke-static {p1, p0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
