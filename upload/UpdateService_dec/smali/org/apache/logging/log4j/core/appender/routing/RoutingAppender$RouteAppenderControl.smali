.class abstract Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;
.super Lorg/apache/logging/log4j/core/config/AppenderControl;
.source "RoutingAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RouteAppenderControl"
.end annotation


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

    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/logging/log4j/core/config/AppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    .line 438
    return-void
.end method


# virtual methods
.method abstract checkout()V
.end method

.method abstract release()V
.end method
