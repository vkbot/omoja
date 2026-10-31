.class public abstract Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
.super Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/CountingPathVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field private directoryFilter:Lorg/apache/commons/io/file/PathFilter;

.field private directoryPostTransformer:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private fileFilter:Lorg/apache/commons/io/file/PathFilter;

.field private pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 9
    .line 10
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 15
    .line 16
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultDirectoryFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 21
    .line 22
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultDirectoryTransformer()Ljava/util/function/UnaryOperator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getDirectoryFilter()Lorg/apache/commons/io/file/PathFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDirectoryPostTransformer()Ljava/util/function/UnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileFilter()Lorg/apache/commons/io/file/PathFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDirectoryFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/PathFilter;",
            ")TB;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultDirectoryFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 15
    .line 16
    return-object p1
.end method

.method public setDirectoryPostTransformer(Ljava/util/function/UnaryOperator;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/nio/file/Path;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultDirectoryTransformer()Ljava/util/function/UnaryOperator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 15
    .line 16
    return-object p1
.end method

.method public setFileFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/PathFilter;",
            ")TB;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 15
    .line 16
    return-object p1
.end method

.method public setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/Counters$PathCounters;",
            ")TB;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic setVisitFileFailedFunction(Lorg/apache/commons/io/function/IOBiFunction;)Lorg/apache/commons/io/build/AbstractSupplier;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->setVisitFileFailedFunction(Lorg/apache/commons/io/function/IOBiFunction;)Lorg/apache/commons/io/build/AbstractSupplier;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
