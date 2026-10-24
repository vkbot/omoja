.class public Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "AbstractIoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/service/AbstractIoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ServiceOperationFuture"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 551
    return-void
.end method


# virtual methods
.method public final getException()Ljava/lang/Exception;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0

    .line 570
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isDone()Z
    .locals 2

    .line 558
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setDone()V
    .locals 1

    .line 562
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method public final setException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 574
    if-eqz p1, :cond_0

    .line 578
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)Z

    .line 579
    return-void

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
