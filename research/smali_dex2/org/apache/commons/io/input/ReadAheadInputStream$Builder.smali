.class public Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ReadAheadInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/ReadAheadInputStream;",
        "Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->get()Lorg/apache/commons/io/input/ReadAheadInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ReadAheadInputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;Lorg/apache/commons/io/input/ReadAheadInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method
