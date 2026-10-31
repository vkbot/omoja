.class public Lorg/apache/commons/io/file/CountingPathVisitor;
.super Lorg/apache/commons/io/file/SimplePathVisitor;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/CountingPathVisitor$Builder;,
        Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    }
.end annotation


# static fields
.field static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final directoryFilter:Lorg/apache/commons/io/file/PathFilter;

.field private final directoryPostTransformer:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final fileFilter:Lorg/apache/commons/io/file/PathFilter;

.field private final pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lorg/apache/commons/io/file/CountingPathVisitor;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/file/SimplePathVisitor;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "pathCounters"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 12
    .line 13
    const-string p1, "fileFilter"

    .line 14
    .line 15
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    check-cast p2, Lorg/apache/commons/io/file/PathFilter;

    .line 19
    .line 20
    iput-object p2, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 21
    .line 22
    const-string p1, "directoryFilter"

    .line 23
    .line 24
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    check-cast p3, Lorg/apache/commons/io/file/PathFilter;

    .line 28
    .line 29
    iput-object p3, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 30
    .line 31
    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    .line 36
    .line 37
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

    .line 44
    invoke-direct {p0, p4}, Lorg/apache/commons/io/file/SimplePathVisitor;-><init>(Lorg/apache/commons/io/function/IOBiFunction;)V

    .line 45
    const-string p4, "pathCounters"

    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/apache/commons/io/file/Counters$PathCounters;

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 46
    const-string p1, "fileFilter"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lorg/apache/commons/io/file/PathFilter;

    iput-object p2, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 47
    const-string p1, "directoryFilter"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lorg/apache/commons/io/file/PathFilter;

    iput-object p3, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 48
    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/SimplePathVisitor;-><init>(Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;)V

    .line 40
    invoke-virtual {p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 41
    invoke-virtual {p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->getFileFilter()Lorg/apache/commons/io/file/PathFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 42
    invoke-virtual {p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->getDirectoryFilter()Lorg/apache/commons/io/file/PathFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 43
    invoke-virtual {p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->getDirectoryPostTransformer()Ljava/util/function/UnaryOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    return-void
.end method

.method public static defaultDirectoryFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public static defaultDirectoryTransformer()Ljava/util/function/UnaryOperator;
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
    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static defaultFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;

    .line 2
    .line 3
    invoke-static {}, Lkotlin/io/path/a;->w()Ljava/nio/file/FileVisitResult;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lkotlin/io/path/a;->h()Ljava/nio/file/FileVisitResult;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;-><init>(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static defaultPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static withBigIntegerCounters()Lorg/apache/commons/io/file/CountingPathVisitor;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;->get()Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static withLongCounters()Lorg/apache/commons/io/file/CountingPathVisitor;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;->get()Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 11
    .line 12
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lkotlin/io/path/a;->h()Ljava/nio/file/FileVisitResult;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public bridge synthetic postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 19
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkotlin/io/path/a;->h()Ljava/nio/file/FileVisitResult;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 23
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lkotlin/io/path/a;->h()Ljava/nio/file/FileVisitResult;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eq p1, p2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlin/io/path/a;->z()Ljava/nio/file/FileVisitResult;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-static {}, Lkotlin/io/path/a;->h()Ljava/nio/file/FileVisitResult;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$PathCounters;->getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 11
    .line 12
    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p2}, Lorg/apache/commons/io/d;->c(Ljava/nio/file/attribute/BasicFileAttributes;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-interface {p1, v0, v1}, Lorg/apache/commons/io/file/Counters$Counter;->add(J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 15
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lkotlin/io/path/a;->h()Ljava/nio/file/FileVisitResult;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
