.class public Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/BlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChainLoopDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/filesystem/BlockStore;

.field private final used_blocks:[Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V
    .locals 6

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->this$0:Lorg/apache/poi/poifs/filesystem/BlockStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getBlockStoreBlockSize()I

    move-result p1

    int-to-long v2, p1

    div-long v4, p2, v2

    long-to-int p1, v4

    rem-long/2addr p2, v2

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create a ChainLoopDetector with negative size, but had: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public claim(I)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    array-length v0, p0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    aget-boolean v0, p0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Potential loop detected - Block "

    const-string v1, " was already claimed but was just requested again"

    invoke-static {v0, p1, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
