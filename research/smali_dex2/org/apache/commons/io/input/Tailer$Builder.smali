.class public Lorg/apache/commons/io/input/Tailer$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/Tailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/Tailer;",
        "Lorg/apache/commons/io/input/Tailer$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY_DURATION:Ljava/time/Duration;


# instance fields
.field private delayDuration:Ljava/time/Duration;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private ignoreTouch:Z

.field private reOpen:Z

.field private startThread:Z

.field private tailFromEnd:Z

.field private tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

.field private tailerListener:Lorg/apache/commons/io/input/TailerListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->x()Ljava/time/Duration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/commons/io/input/Tailer$Builder;->DEFAULT_DELAY_DURATION:Ljava/time/Duration;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/io/input/Tailer$Builder;->DEFAULT_DELAY_DURATION:Ljava/time/Duration;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->startThread:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->ignoreTouch:Z

    .line 13
    .line 14
    new-instance v0, Lorg/apache/commons/io/input/k;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, v1}, Lorg/apache/commons/io/input/k;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$300(Lorg/apache/commons/io/input/Tailer$Builder;)Lorg/apache/commons/io/input/Tailer$Tailable;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/commons/io/input/Tailer$Builder;)Lorg/apache/commons/io/input/TailerListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailerListener:Lorg/apache/commons/io/input/TailerListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lorg/apache/commons/io/input/Tailer$Builder;)Ljava/time/Duration;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lorg/apache/commons/io/input/Tailer$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailFromEnd:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$700(Lorg/apache/commons/io/input/Tailer$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->reOpen:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Lorg/apache/commons/io/input/Tailer$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->ignoreTouch:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    const-string v1, "commons-io-tailer"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/Tailer;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/Tailer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Lorg/apache/commons/io/input/Tailer$Builder;Lorg/apache/commons/io/input/Tailer$1;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->startThread:Z

    .line 8
    .line 9
    if-eqz v1, :cond_f

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    :cond_f
    return-object v0
.end method

.method public setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    goto :goto_5

    .line 4
    :cond_3
    sget-object p1, Lorg/apache/commons/io/input/Tailer$Builder;->DEFAULT_DELAY_DURATION:Ljava/time/Duration;

    .line 5
    .line 6
    :goto_5
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;

    .line 7
    .line 8
    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 3

    .line 1
    const-string v0, "executorService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    return-object p0
.end method

.method public setIgnoreTouch(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->ignoreTouch:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/build/AbstractOrigin<",
            "**>;)",
            "Lorg/apache/commons/io/input/Tailer$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/Tailer$TailablePath;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractOrigin;->getPath()Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Ljava/nio/file/LinkOption;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/Tailer$TailablePath;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lorg/apache/commons/io/input/Tailer$1;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailable(Lorg/apache/commons/io/input/Tailer$Tailable;)Lorg/apache/commons/io/input/Tailer$Builder;

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 22
    .line 23
    return-object p1
.end method

.method public setReOpen(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->reOpen:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setStartThread(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->startThread:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailFromEnd:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTailable(Lorg/apache/commons/io/input/Tailer$Tailable;)Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 3

    .line 1
    const-string v0, "tailable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 9
    .line 10
    return-object p0
.end method

.method public setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 3

    .line 1
    const-string v0, "tailerListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/apache/commons/io/input/TailerListener;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailerListener:Lorg/apache/commons/io/input/TailerListener;

    .line 9
    .line 10
    return-object p0
.end method
