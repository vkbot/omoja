.class Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "StatusLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/status/StatusLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentLinkedQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x36c2d800669ec029L


# instance fields
.field private final size:I

.field final synthetic this$0:Lorg/apache/logging/log4j/status/StatusLogger;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/status/StatusLogger;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "size"
        }
    .end annotation

    .line 446
    .local p0, "this":Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;, "Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue<TE;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->this$0:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 447
    iput p2, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->size:I

    .line 448
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 452
    .local p0, "this":Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;, "Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->this$0:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-static {v0}, Lorg/apache/logging/log4j/status/StatusLogger;->access$000(Lorg/apache/logging/log4j/status/StatusLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->size:I

    if-le v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->this$0:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-static {v0}, Lorg/apache/logging/log4j/status/StatusLogger;->access$000(Lorg/apache/logging/log4j/status/StatusLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 456
    :cond_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
