.class Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$CronTrigger;
.super Ljava/lang/Object;
.source "CronTriggeringPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CronTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$CronTrigger;->this$0:Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$1;

    .line 168
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$CronTrigger;-><init>(Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$CronTrigger;->this$0:Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->access$100(Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;)V

    .line 173
    return-void
.end method
