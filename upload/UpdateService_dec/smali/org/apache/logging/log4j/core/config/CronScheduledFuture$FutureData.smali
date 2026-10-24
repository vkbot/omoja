.class Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;
.super Ljava/lang/Object;
.source "CronScheduledFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/CronScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureData"
.end annotation


# instance fields
.field private final runDate:Ljava/util/Date;

.field private final scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/config/CronScheduledFuture;Ljava/util/concurrent/ScheduledFuture;Ljava/util/Date;)V
    .locals 0
    .param p3, "runDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "future",
            "runDate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>.FutureData;"
    .local p2, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->this$0:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 90
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->runDate:Ljava/util/Date;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    .line 83
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->runDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    .line 83
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method
