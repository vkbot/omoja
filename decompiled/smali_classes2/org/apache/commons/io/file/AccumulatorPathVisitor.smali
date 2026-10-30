.class public Lorg/apache/commons/io/file/AccumulatorPathVisitor;
.super Lorg/apache/commons/io/file/CountingPathVisitor;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;
    }
.end annotation


# instance fields
.field private final dirList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;Lorg/apache/commons/io/file/AccumulatorPathVisitor$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/function/IOBiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/Counters$PathCounters;",
            "Lorg/apache/commons/io/file/PathFilter;",
            "Lorg/apache/commons/io/file/PathFilter;",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/function/IOBiFunction;)V

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method private add(Ljava/util/List;Ljava/nio/file/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/internal/jdk8/a;->D(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static withBigIntegerCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 32
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static withBigIntegerCounters(Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setFileFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setDirectoryFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static withLongCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 32
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static withLongCounters(Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setFileFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setDirectoryFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    instance-of v1, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 21
    .line 22
    iget-object v3, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 31
    .line 32
    iget-object p1, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    return v0

    .line 41
    :cond_3
    return v2
.end method

.method public getDirList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 10
    .line 11
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    return v1
.end method

.method public relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->add(Ljava/util/List;Ljava/nio/file/Path;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->add(Ljava/util/List;Ljava/nio/file/Path;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
