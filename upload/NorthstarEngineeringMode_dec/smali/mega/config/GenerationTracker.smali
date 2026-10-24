.class public final Lmega/config/GenerationTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GenerationTracker"


# instance fields
.field private final mArray:Landroid/util/MemoryIntArray;

.field private mCurrentGeneration:I

.field private final mErrorHandler:Ljava/lang/Runnable;

.field private final mIndex:I


# direct methods
.method public constructor <init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/util/MemoryIntArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/config/GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    iput p2, p0, Lmega/config/GenerationTracker;->mIndex:I

    iput-object p4, p0, Lmega/config/GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    iput p3, p0, Lmega/config/GenerationTracker;->mCurrentGeneration:I

    return-void
.end method

.method private readCurrentGeneration()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmega/config/GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    iget v1, p0, Lmega/config/GenerationTracker;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MemoryIntArray;->get(I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    sget-object v1, Lmega/config/GenerationTracker;->TAG:Ljava/lang/String;

    const-string v2, "Error getting current generation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lmega/config/GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmega/config/GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    invoke-virtual {v0}, Landroid/util/MemoryIntArray;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lmega/config/GenerationTracker;->TAG:Ljava/lang/String;

    const-string v2, "Error closing backing array"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lmega/config/GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isGenerationChanged()Z
    .locals 2

    invoke-direct {p0}, Lmega/config/GenerationTracker;->readCurrentGeneration()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lmega/config/GenerationTracker;->mCurrentGeneration:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput v0, p0, Lmega/config/GenerationTracker;->mCurrentGeneration:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
