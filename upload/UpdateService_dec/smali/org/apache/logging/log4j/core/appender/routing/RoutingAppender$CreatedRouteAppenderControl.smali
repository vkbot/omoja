.class final Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;
.super Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;
.source "RoutingAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CreatedRouteAppenderControl"
.end annotation


# instance fields
.field private final depth:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile pendingDeletion:Z


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/Appender;)V
    .locals 1
    .param p1, "appender"    # Lorg/apache/logging/log4j/core/Appender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appender"
        }
    .end annotation

    .line 451
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;)V

    .line 448
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->depth:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 452
    return-void
.end method

.method static synthetic access$402(Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;
    .param p1, "x1"    # Z

    .line 445
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->pendingDeletion:Z

    return p1
.end method


# virtual methods
.method checkout()V
    .locals 2

    .line 456
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->pendingDeletion:Z

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "CreatedRouteAppenderControl.checkout invoked on a RouteAppenderControl that is pending deletion"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->depth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 461
    return-void
.end method

.method release()V
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->depth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 466
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->tryStopAppender()V

    .line 467
    return-void
.end method

.method tryStopAppender()V
    .locals 3

    .line 470
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->pendingDeletion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->depth:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const v2, -0x186a0

    .line 474
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->getAppender()Lorg/apache/logging/log4j/core/Appender;

    move-result-object v0

    .line 476
    .local v0, "appender":Lorg/apache/logging/log4j/core/Appender;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Stopping appender {}"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Appender;->stop()V

    .line 479
    .end local v0    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :cond_0
    return-void
.end method
