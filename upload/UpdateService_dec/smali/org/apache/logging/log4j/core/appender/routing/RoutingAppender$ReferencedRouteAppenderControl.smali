.class final Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$ReferencedRouteAppenderControl;
.super Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;
.source "RoutingAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReferencedRouteAppenderControl"
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/Appender;)V
    .locals 0
    .param p1, "appender"    # Lorg/apache/logging/log4j/core/Appender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appender"
        }
    .end annotation

    .line 485
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;)V

    .line 486
    return-void
.end method


# virtual methods
.method checkout()V
    .locals 0

    .line 491
    return-void
.end method

.method release()V
    .locals 0

    .line 496
    return-void
.end method
