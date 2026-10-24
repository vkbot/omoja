.class final Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;
.super Ljava/lang/Object;
.source "WatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/WatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigurationMonitor"
.end annotation


# instance fields
.field private volatile lastModifiedMillis:J

.field final synthetic this$0:Lorg/apache/logging/log4j/core/util/WatchManager;

.field private final watcher:Lorg/apache/logging/log4j/core/util/Watcher;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/util/WatchManager;JLorg/apache/logging/log4j/core/util/Watcher;)V
    .locals 0
    .param p2, "lastModifiedMillis"    # J
    .param p4, "watcher"    # Lorg/apache/logging/log4j/core/util/Watcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "lastModifiedMillis",
            "watcher"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->this$0:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p4, p0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->watcher:Lorg/apache/logging/log4j/core/util/Watcher;

    .line 55
    iput-wide p2, p0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->lastModifiedMillis:J

    .line 56
    return-void
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;

    .line 49
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->lastModifiedMillis:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;
    .param p1, "x1"    # J

    .line 49
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->lastModifiedMillis:J

    return-wide p1
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;
    .param p1, "x1"    # J

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->setLastModifiedMillis(J)V

    return-void
.end method

.method private setLastModifiedMillis(J)V
    .locals 0
    .param p1, "lastModifiedMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "lastModifiedMillis"
        }
    .end annotation

    .line 63
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->lastModifiedMillis:J

    .line 64
    return-void
.end method


# virtual methods
.method public getWatcher()Lorg/apache/logging/log4j/core/util/Watcher;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->watcher:Lorg/apache/logging/log4j/core/util/Watcher;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationMonitor [watcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->watcher:Lorg/apache/logging/log4j/core/util/Watcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->lastModifiedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
