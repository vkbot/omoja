.class Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/POIFSStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamBlockOffsetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

.field private nextBlock:I

.field final synthetic this$0:Lorg/apache/poi/poifs/filesystem/POIFSStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSStream;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->this$0:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->nextBlock:I

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/POIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->nextBlock:I

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Integer;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->nextBlock:I

    .line 3
    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->nextBlock:I

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->this$0:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    .line 4
    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/POIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->nextBlock:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getNextBlock(I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->nextBlock:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Can\'t read past the end of the stream"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSStream$StreamBlockOffsetIterator;->next()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
