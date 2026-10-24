.class public interface abstract Ln2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lb/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static a(JLn2/g;)Lb/b;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/b;",
            ">(J",
            "Ln2/g<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "can not get hal service."

    const/4 v1, 0x0

    const-string v2, "IHalSupplier"

    if-nez p2, :cond_0

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {p2}, Ln2/g;->get()Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v2, v0}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_2
    if-nez v3, :cond_2

    add-long v6, v4, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez p2, :cond_1

    :goto_3
    move-object v3, v1

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-interface {p2}, Ln2/g;->get()Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    move-result-object v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {v2, v0}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Sleep was interrupted"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    if-nez v3, :cond_3

    const-string p0, "Get Hal failed: Timeout."

    invoke-static {v2, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Success get Hal: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v3
.end method


# virtual methods
.method public abstract get()Lvendor/mega/tboxclient/V1_0/ITboxClientService;
.end method
