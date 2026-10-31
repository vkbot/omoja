.class public final Lorg/apache/commons/io/file/PathUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
    }
.end annotation


# static fields
.field public static final EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

.field public static final EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

.field public static final EMPTY_FILE_ATTRIBUTE_ARRAY:[Ljava/nio/file/attribute/FileAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

.field public static final EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

.field public static final EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

.field public static final EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

.field public static final NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final NULL_LINK_OPTION:Ljava/nio/file/LinkOption;

.field private static final OPEN_OPTIONS_APPEND:[Ljava/nio/file/OpenOption;

.field private static final OPEN_OPTIONS_TRUNCATE:[Ljava/nio/file/OpenOption;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    .line 3
    .line 4
    invoke-static {}, Lorg/apache/commons/io/file/e;->i()Ljava/nio/file/StandardOpenOption;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    invoke-static {}, Lorg/apache/commons/io/file/e;->A()Ljava/nio/file/StandardOpenOption;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object v2, v1, v4

    .line 17
    .line 18
    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->OPEN_OPTIONS_TRUNCATE:[Ljava/nio/file/OpenOption;

    .line 19
    .line 20
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 21
    .line 22
    invoke-static {}, Lorg/apache/commons/io/file/e;->i()Ljava/nio/file/StandardOpenOption;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, v0, v3

    .line 27
    .line 28
    invoke-static {}, Lkotlin/internal/jdk8/a;->t()Ljava/nio/file/StandardOpenOption;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    aput-object v1, v0, v4

    .line 33
    .line 34
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->OPEN_OPTIONS_APPEND:[Ljava/nio/file/OpenOption;

    .line 35
    .line 36
    new-array v0, v3, [Ljava/nio/file/CopyOption;

    .line 37
    .line 38
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

    .line 39
    .line 40
    new-array v0, v3, [Lorg/apache/commons/io/file/DeleteOption;

    .line 41
    .line 42
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    .line 43
    .line 44
    new-array v0, v3, [Ljava/nio/file/attribute/FileAttribute;

    .line 45
    .line 46
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_ATTRIBUTE_ARRAY:[Ljava/nio/file/attribute/FileAttribute;

    .line 47
    .line 48
    new-array v0, v3, [Ljava/nio/file/FileVisitOption;

    .line 49
    .line 50
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    .line 51
    .line 52
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    .line 53
    .line 54
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 55
    .line 56
    new-array v0, v4, [Ljava/nio/file/LinkOption;

    .line 57
    .line 58
    invoke-static {}, Lkotlin/internal/jdk8/a;->l()Ljava/nio/file/LinkOption;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    aput-object v1, v0, v3

    .line 63
    .line 64
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->NULL_LINK_OPTION:Ljava/nio/file/LinkOption;

    .line 68
    .line 69
    new-array v0, v3, [Ljava/nio/file/OpenOption;

    .line 70
    .line 71
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    .line 72
    .line 73
    new-array v0, v3, [Ljava/nio/file/Path;

    .line 74
    .line 75
    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    .line 76
    .line 77
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->lambda$directoryAndFileContentEquals$1(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .registers 5

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/apache/commons/io/file/j;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->setDirectoryPostTransformer(Ljava/util/function/UnaryOperator;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p2}, Lorg/apache/commons/io/file/PathUtils;->toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {v0, p0, p2, p1}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;Ljava/util/Set;I)Ljava/nio/file/FileVisitor;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 29
    .line 30
    return-object p0
.end method

.method public static synthetic b([Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;Ljava/nio/file/Path;Ljava/nio/file/attribute/PosixFileAttributes;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->lambda$deleteDirectory$0([Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;Ljava/nio/file/Path;Ljava/nio/file/attribute/PosixFileAttributes;)Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->stripTrailingSeparator(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 24
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 5

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    .line 2
    .line 3
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/io/file/CleaningPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static varargs compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I
    .registers 3

    .line 1
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/e;->a(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static contentEquals(Ljava/nio/file/FileSystem;Ljava/nio/file/FileSystem;)Z
    .registers 6

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_44

    .line 8
    :cond_7
    invoke-static {p0}, Lorg/apache/commons/io/file/e;->d(Ljava/nio/file/FileSystem;)Ljava/lang/Iterable;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->toSortedList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p1}, Lorg/apache/commons/io/file/e;->d(Ljava/nio/file/FileSystem;)Ljava/lang/Iterable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->toSortedList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eq v0, v1, :cond_23

    .line 34
    .line 35
    goto :goto_40

    .line 36
    :cond_23
    move v0, v2

    .line 37
    :goto_24
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v0, v1, :cond_44

    .line 42
    .line 43
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v1, v3}, Lorg/apache/commons/io/file/PathUtils;->directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_41

    .line 64
    .line 65
    :goto_40
    return v2

    .line 66
    :cond_41
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_24

    .line 69
    :cond_44
    :goto_44
    const/4 p0, 0x1

    .line 70
    return p0
.end method

.method public static varargs copy(Lorg/apache/commons/io/function/IOSupplier;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/CopyOption;",
            ")J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/io/InputStream;

    .line 6
    .line 7
    :try_start_6
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/e;->b(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_10

    .line 11
    if-eqz p0, :cond_f

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-wide p1

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    if-eqz p0, :cond_1b

    .line 19
    .line 20
    :try_start_13
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    .line 21
    .line 22
    .line 23
    goto :goto_1b

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    :goto_1b
    throw p1
.end method

.method public static varargs copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 5

    .line 1
    invoke-static {p0}, Lkotlin/io/path/a;->k(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;

    .line 6
    .line 7
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/commons/io/file/CopyDirectoryVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static varargs copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/io/r;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/r;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->copy(Lorg/apache/commons/io/function/IOSupplier;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public static varargs copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 5

    .line 23
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lai/onnxruntime/c;->u(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 24
    new-instance v0, Lorg/apache/commons/io/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/r;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->copy(Lorg/apache/commons/io/function/IOSupplier;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    return-object p1
.end method

.method public static varargs copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 5

    .line 1
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->o(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "source file name"

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lorg/apache/commons/io/file/PathUtils;->resolve(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/e;->f(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->withLongCounters()Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->withBigIntegerCounters()Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static varargs createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/LinkOption;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lkotlin/internal/jdk8/a;->l()Ljava/nio/file/LinkOption;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne p1, v0, :cond_b

    .line 10
    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_f
    if-nez p0, :cond_13

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    if-nez p1, :cond_1d

    .line 22
    .line 23
    new-array p1, v0, [Ljava/nio/file/LinkOption;

    .line 24
    .line 25
    invoke-static {p0, p1}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_26

    .line 30
    :cond_1d
    const/4 v1, 0x1

    .line 31
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 32
    .line 33
    aput-object p1, v1, v0

    .line 34
    .line 35
    invoke-static {p0, v1}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    :goto_26
    if-eqz p1, :cond_29

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_29
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/f;->h(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static varargs createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lkotlin/internal/jdk8/a;->l()Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static current()Ljava/nio/file/Path;
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v0}, Lorg/apache/commons/io/file/e;->h([Ljava/lang/String;)Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public static synthetic d(Lorg/apache/commons/io/file/PathFilter;ZLjava/nio/file/Path;)Z
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->lambda$walk$4(Lorg/apache/commons/io/file/PathFilter;ZLjava/nio/file/Path;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 27
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 4

    .line 28
    invoke-static {p0, p1}, Lkotlin/io/path/f;->D(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {}, Lkotlin/internal/jdk8/a;->l()Ljava/nio/file/LinkOption;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/io/path/f;->D(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_15

    .line 16
    .line 17
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 25
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 6

    .line 26
    new-instance v0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/commons/io/file/DeletingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 6

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/PathUtils;->noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    new-instance v3, Lorg/apache/commons/io/file/l;

    .line 14
    .line 15
    invoke-direct {v3, p0, v0, p1}, Lorg/apache/commons/io/file/l;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0, v2, v3}, Lorg/apache/commons/io/file/PathUtils;->withPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 23
    .line 24
    return-object p0
.end method

.method public static deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 143
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 9

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_81

    .line 6
    .line 7
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_1d

    .line 18
    .line 19
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1d

    .line 24
    .line 25
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move-wide v4, v2

    .line 31
    :goto_1e
    :try_start_1e
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_33

    .line 36
    .line 37
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1, v4, v5}, Lorg/apache/commons/io/file/Counters$Counter;->add(J)V
    :try_end_32
    .catch Ljava/nio/file/AccessDeniedException; {:try_start_1e .. :try_end_32} :catch_33

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :catch_33
    :cond_33
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v4, 0x0

    .line 57
    :try_start_38
    invoke-static {p2}, Lorg/apache/commons/io/file/PathUtils;->overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_49

    .line 62
    .line 63
    invoke-static {v1, p1}, Lorg/apache/commons/io/file/PathUtils;->readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const/4 p2, 0x0

    .line 68
    invoke-static {p0, p2, p1}, Lorg/apache/commons/io/file/PathUtils;->setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 69
    .line 70
    .line 71
    goto :goto_49

    .line 72
    :catchall_47
    move-exception p0

    .line 73
    goto :goto_77

    .line 74
    :cond_49
    :goto_49
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_59

    .line 79
    .line 80
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_59

    .line 85
    .line 86
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    :cond_59
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_6d

    .line 95
    .line 96
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/io/file/Counters$Counter;->add(J)V
    :try_end_6d
    .catchall {:try_start_38 .. :try_end_6d} :catchall_47

    .line 108
    .line 109
    .line 110
    :cond_6d
    if-eqz v4, :cond_76

    .line 111
    .line 112
    invoke-interface {v4}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v1, p0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 117
    .line 118
    .line 119
    :cond_76
    return-object v0

    .line 120
    :goto_77
    if-eqz v4, :cond_80

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {v1, p1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 127
    .line 128
    .line 129
    :cond_80
    throw p0

    .line 130
    :cond_81
    new-instance p1, Ljava/nio/file/NoSuchFileException;

    .line 131
    .line 132
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    new-instance p1, Ljava/nio/file/NoSuchFileException;

    .line 137
    .line 138
    invoke-direct {p1, p0}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method

.method public static varargs deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 3

    .line 142
    invoke-static {}, Lorg/apache/commons/io/file/PathUtils;->noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static deleteOnExit(Ljava/nio/file/Path;)V
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lai/onnxruntime/c;->r(Ljava/nio/file/Path;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 5

    .line 149
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    sget-object v2, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/file/PathUtils;->directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z

    move-result p0

    return p0
.end method

.method public static directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z
    .registers 14

    .line 1
    if-nez p0, :cond_6

    .line 2
    .line 3
    if-nez p1, :cond_6

    .line 4
    .line 5
    goto/16 :goto_91

    .line 6
    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_93

    .line 9
    .line 10
    if-nez p1, :cond_d

    .line 11
    .line 12
    goto/16 :goto_93

    .line 13
    .line 14
    :cond_d
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 15
    .line 16
    invoke-static {p0, v1}, Lorg/apache/commons/io/file/PathUtils;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1f

    .line 21
    .line 22
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 23
    .line 24
    invoke-static {p1, v1}, Lorg/apache/commons/io/file/PathUtils;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1f

    .line 29
    .line 30
    goto/16 :goto_91

    .line 31
    .line 32
    :cond_1f
    new-instance v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;

    .line 33
    .line 34
    const v5, 0x7fffffff

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v3, p0

    .line 39
    move-object v4, p1

    .line 40
    move-object v6, p2

    .line 41
    move-object v7, p4

    .line 42
    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V

    .line 43
    .line 44
    .line 45
    iget-boolean p0, v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 46
    .line 47
    if-nez p0, :cond_31

    .line 48
    .line 49
    goto :goto_93

    .line 50
    :cond_31
    iget-object p0, v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList1:Ljava/util/List;

    .line 51
    .line 52
    iget-object p1, v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList2:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {v3, v4}, Lorg/apache/commons/io/file/PathUtils;->isSameFileSystem(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :cond_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    if-eqz p4, :cond_91

    .line 67
    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-static {p4}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 73
    .line 74
    .line 75
    move-result-object p4

    .line 76
    if-eqz p2, :cond_52

    .line 77
    .line 78
    invoke-static {p1, p4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    goto :goto_60

    .line 83
    :cond_52
    new-instance v1, Lorg/apache/commons/io/file/h;

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-direct {v1, v2}, Lorg/apache/commons/io/file/h;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {p1, p4, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_60
    if-ltz v1, :cond_8a

    .line 98
    .line 99
    if-eqz p2, :cond_73

    .line 100
    .line 101
    invoke-static {v3, p4}, Lkotlin/internal/jdk8/a;->r(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v4, p4}, Lkotlin/internal/jdk8/a;->r(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v1, v2, v6, p3}, Lorg/apache/commons/io/file/PathUtils;->fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_73

    .line 114
    .line 115
    goto :goto_93

    .line 116
    :cond_73
    invoke-static {p4}, Lai/onnxruntime/c;->s(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v3, v1}, Lai/onnxruntime/c;->u(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {p4}, Lai/onnxruntime/c;->s(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    invoke-static {v4, p4}, Lai/onnxruntime/c;->u(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    invoke-static {v1, p4, v6, p3}, Lorg/apache/commons/io/file/PathUtils;->fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    if-nez p4, :cond_3d

    .line 137
    .line 138
    goto :goto_93

    .line 139
    :cond_8a
    const-string p0, "Unexpected mismatch."

    .line 140
    .line 141
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 p0, 0x0

    .line 145
    return p0

    .line 146
    :cond_91
    :goto_91
    const/4 p0, 0x1

    .line 147
    return p0

    .line 148
    :cond_93
    :goto_93
    return v0
.end method

.method public static directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 5

    .line 15
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    const v2, 0x7fffffff

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z

    move-result p0

    return p0
.end method

.method public static directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z
    .registers 12

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V

    .line 10
    .line 11
    .line 12
    iget-boolean p0, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 13
    .line 14
    return p0
.end method

.method public static synthetic e(Lorg/apache/commons/io/file/PathFilter;Ljava/nio/file/Path;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->lambda$filterPaths$2(Lorg/apache/commons/io/file/PathFilter;Ljava/nio/file/Path;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static varargs exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_16

    .line 3
    .line 4
    if-eqz p1, :cond_c

    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_16

    .line 11
    .line 12
    goto :goto_14

    .line 13
    :cond_c
    new-array p1, v0, [Ljava/nio/file/LinkOption;

    .line 14
    .line 15
    invoke-static {p0, p1}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_16

    .line 20
    .line 21
    :goto_14
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_16
    return v0
.end method

.method public static synthetic f(Lorg/apache/commons/io/file/DeleteOption;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->lambda$overrideReadOnly$3(Lorg/apache/commons/io/file/DeleteOption;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 4

    .line 196
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z

    move-result p0

    return p0
.end method

.method public static fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z
    .registers 10

    .line 1
    if-nez p0, :cond_5

    .line 2
    .line 3
    if-nez p1, :cond_5

    .line 4
    .line 5
    goto :goto_4a

    .line 6
    :cond_5
    if-eqz p0, :cond_c1

    .line 7
    .line 8
    if-nez p1, :cond_b

    .line 9
    .line 10
    goto/16 :goto_c1

    .line 11
    .line 12
    :cond_b
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->D(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->D(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v1, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v2, v3, :cond_1f

    .line 29
    .line 30
    goto/16 :goto_c1

    .line 31
    .line 32
    :cond_1f
    if-nez v2, :cond_22

    .line 33
    .line 34
    goto :goto_4a

    .line 35
    :cond_22
    invoke-static {v0, p2}, Lkotlin/io/path/f;->D(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v3, "Can\'t compare directories, only files: "

    .line 40
    .line 41
    if-nez v2, :cond_bd

    .line 42
    .line 43
    invoke-static {v1, p2}, Lkotlin/io/path/f;->D(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_b8

    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/io/path/a;->a(Ljava/nio/file/Path;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v1}, Lkotlin/io/path/a;->a(Ljava/nio/file/Path;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    cmp-long v2, v2, v4

    .line 58
    .line 59
    if-eqz v2, :cond_3e

    .line 60
    .line 61
    goto/16 :goto_c1

    .line 62
    .line 63
    :cond_3e
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->isSameFileSystem(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4c

    .line 68
    .line 69
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/e;->x(Ljava/nio/file/Path;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4c

    .line 74
    .line 75
    :goto_4a
    const/4 p0, 0x1

    .line 76
    return p0

    .line 77
    :cond_4c
    :try_start_4c
    sget-object v2, Lorg/apache/commons/io/RandomAccessFileMode;->READ_ONLY:Lorg/apache/commons/io/RandomAccessFileMode;

    .line 78
    .line 79
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/e;->g(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v2, p0}, Lorg/apache/commons/io/RandomAccessFileMode;->create(Ljava/nio/file/Path;)Ljava/io/RandomAccessFile;

    .line 84
    .line 85
    .line 86
    move-result-object p0
    :try_end_56
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4c .. :try_end_56} :catch_87

    .line 87
    :try_start_56
    invoke-static {p1, p2}, Lorg/apache/commons/io/file/e;->g(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Lorg/apache/commons/io/RandomAccessFileMode;->create(Ljava/nio/file/Path;)Ljava/io/RandomAccessFile;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_68

    .line 95
    :try_start_5e
    invoke-static {p0, p1}, Lorg/apache/commons/io/RandomAccessFiles;->contentEquals(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)Z

    .line 96
    .line 97
    .line 98
    move-result p2
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_70

    .line 99
    if-eqz p1, :cond_6a

    .line 100
    .line 101
    :try_start_64
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    .line 102
    .line 103
    .line 104
    goto :goto_6a

    .line 105
    :catchall_68
    move-exception p1

    .line 106
    goto :goto_7c

    .line 107
    :cond_6a
    :goto_6a
    if-eqz p0, :cond_6f

    .line 108
    .line 109
    :try_start_6c
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6c .. :try_end_6f} :catch_87

    .line 110
    .line 111
    .line 112
    :cond_6f
    return p2

    .line 113
    :catchall_70
    move-exception p2

    .line 114
    if-eqz p1, :cond_7b

    .line 115
    .line 116
    :try_start_73
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    .line 117
    .line 118
    .line 119
    goto :goto_7b

    .line 120
    :catchall_77
    move-exception p1

    .line 121
    :try_start_78
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :cond_7b
    :goto_7b
    throw p2
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_68

    .line 125
    :goto_7c
    if-eqz p0, :cond_86

    .line 126
    .line 127
    :try_start_7e
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    .line 128
    .line 129
    .line 130
    goto :goto_86

    .line 131
    :catchall_82
    move-exception p0

    .line 132
    :try_start_83
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    :cond_86
    :goto_86
    throw p1
    :try_end_87
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_83 .. :try_end_87} :catch_87

    .line 136
    :catch_87
    invoke-static {v0, p3}, Lkotlin/io/path/f;->e(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    :try_start_8b
    invoke-static {v1, p3}, Lkotlin/io/path/f;->e(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 141
    .line 142
    .line 143
    move-result-object p1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_99

    .line 144
    :try_start_8f
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    .line 145
    .line 146
    .line 147
    move-result p2
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_a1

    .line 148
    if-eqz p1, :cond_9b

    .line 149
    .line 150
    :try_start_95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    .line 151
    .line 152
    .line 153
    goto :goto_9b

    .line 154
    :catchall_99
    move-exception p1

    .line 155
    goto :goto_ad

    .line 156
    :cond_9b
    :goto_9b
    if-eqz p0, :cond_a0

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 159
    .line 160
    .line 161
    :cond_a0
    return p2

    .line 162
    :catchall_a1
    move-exception p2

    .line 163
    if-eqz p1, :cond_ac

    .line 164
    .line 165
    :try_start_a4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    .line 166
    .line 167
    .line 168
    goto :goto_ac

    .line 169
    :catchall_a8
    move-exception p1

    .line 170
    :try_start_a9
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    :cond_ac
    :goto_ac
    throw p2
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_99

    .line 174
    :goto_ad
    if-eqz p0, :cond_b7

    .line 175
    .line 176
    :try_start_af
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    .line 177
    .line 178
    .line 179
    goto :goto_b7

    .line 180
    :catchall_b3
    move-exception p0

    .line 181
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    :cond_b7
    :goto_b7
    throw p1

    .line 185
    :cond_b8
    invoke-static {v1, v3}, Lorg/apache/commons/io/e;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_bb
    const/4 p0, 0x0

    .line 189
    return p0

    .line 190
    :cond_bd
    invoke-static {v0, v3}, Lorg/apache/commons/io/e;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_bb

    .line 194
    :cond_c1
    :goto_c1
    const/4 p0, 0x0

    .line 195
    return p0
.end method

.method public static varargs filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;
    .registers 3

    .line 1
    const-string v0, "filter"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_a

    .line 7
    .line 8
    sget-object p0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/file/PathUtils;->filterPaths(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    sget-object p1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, [Ljava/nio/file/Path;

    .line 32
    .line 33
    return-object p0
.end method

.method private static filterPaths(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/file/PathFilter;",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/util/stream/Collector<",
            "-",
            "Ljava/nio/file/Path;",
            "TA;TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "filter"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "collector"

    .line 7
    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_15

    .line 12
    .line 13
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    new-instance v0, Lorg/apache/commons/io/file/k;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/file/k;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/attribute/AclEntry;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_b

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->t(Ljava/nio/file/attribute/AclFileAttributeView;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static varargs getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/f;->b()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0, p1}, Lkotlin/io/path/f;->k(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->i(Ljava/lang/Object;)Ljava/nio/file/attribute/AclFileAttributeView;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static getBaseName(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 1

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    goto :goto_12

    .line 4
    :cond_3
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->o(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_12

    .line 9
    .line 10
    invoke-static {p0}, Lai/onnxruntime/c;->s(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_12
    :goto_12
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public static varargs getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/e;->z()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0, p1}, Lkotlin/io/path/f;->k(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/e;->j(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributeView;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static getExtension(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_b

    .line 6
    .line 7
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static getFileName(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Function<",
            "Ljava/nio/file/Path;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_8

    .line 3
    .line 4
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->o(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move-object p0, v0

    .line 10
    :goto_9
    if-eqz p0, :cond_10

    .line 11
    .line 12
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_10
    return-object v0
.end method

.method public static getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->getFileName(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method

.method public static getLastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;
    .registers 3

    .line 16
    invoke-static {p0}, Lc5/h;->i(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;
    .registers 3

    .line 18
    invoke-static {p0}, Lkotlin/io/path/a;->i(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static getLastModifiedFileTime(Ljava/net/URL;)Ljava/nio/file/attribute/FileTime;
    .registers 1

    .line 19
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_e
    return-object p1
.end method

.method public static varargs getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .registers 3

    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method private static varargs getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .registers 3

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0, p1}, Lkotlin/io/path/f;->l(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 1

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->A(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 3

    .line 1
    if-eqz p0, :cond_c

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_c

    .line 8
    .line 9
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_c
    if-eqz p1, :cond_16

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    new-array p0, p0, [Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1, p0}, Lai/onnxruntime/c;->t(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_16
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static varargs getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/e;->c()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0, p1}, Lkotlin/io/path/f;->k(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/e;->m(Ljava/lang/Object;)Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static getTempDirectory()Ljava/nio/file/Path;
    .registers 2

    .line 1
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lai/onnxruntime/c;->t(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static varargs isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_a

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/io/path/f;->D(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static isEmpty(Ljava/nio/file/Path;)Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/io/path/f;->D(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->isEmptyDirectory(Ljava/nio/file/Path;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_e
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->isEmptyFile(Ljava/nio/file/Path;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static isEmptyDirectory(Ljava/nio/file/Path;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lkotlin/io/path/a;->c(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/io/file/e;->q(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-static {p0}, Lorg/apache/commons/io/file/e;->s(Ljava/nio/file/DirectoryStream;)V

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    if-eqz p0, :cond_1d

    .line 21
    .line 22
    :try_start_15
    invoke-static {p0}, Lorg/apache/commons/io/file/e;->s(Ljava/nio/file/DirectoryStream;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    .line 23
    .line 24
    .line 25
    goto :goto_1d

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    :goto_1d
    throw v0
.end method

.method public static isEmptyFile(Ljava/nio/file/Path;)Z
    .registers 5

    .line 1
    invoke-static {p0}, Lkotlin/io/path/a;->a(Ljava/nio/file/Path;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-gtz p0, :cond_c

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static varargs isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z
    .registers 4

    .line 23
    invoke-static {p1, p2}, Lorg/apache/commons/io/file/e;->l(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 4

    const/4 v0, 0x0

    .line 24
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static varargs isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    invoke-static {p0, v1}, Lorg/apache/commons/io/file/PathUtils;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return v0

    .line 11
    :cond_a
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-lez p0, :cond_12

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_12
    return v0
.end method

.method public static varargs isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z
    .registers 3

    .line 22
    invoke-static {p1}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static varargs isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime;[Ljava/nio/file/LinkOption;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;[",
            "Ljava/nio/file/LinkOption;",
            ")Z"
        }
    .end annotation

    .line 20
    const-string v0, "czdt"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Lkotlin/io/path/f;->p(Ljava/time/chrono/ChronoZonedDateTime;)Ljava/time/Instant;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static varargs isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z
    .registers 4

    .line 21
    invoke-static {p1, p2}, Lorg/apache/commons/io/file/e;->l(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lorg/apache/commons/io/file/PathUtils;->isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 4

    const/4 v0, 0x0

    .line 22
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/file/PathUtils;->isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static varargs isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    invoke-static {p0, v1}, Lorg/apache/commons/io/file/PathUtils;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return v0

    .line 11
    :cond_a
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-gez p0, :cond_12

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_12
    return v0
.end method

.method public static varargs isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z
    .registers 3

    .line 20
    invoke-static {p1}, Lorg/apache/commons/io/file/f;->l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static varargs isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_e

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static varargs isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_a

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/io/path/f;->B(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static isSameFileSystem(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-ne p0, p1, :cond_c

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private static synthetic lambda$deleteDirectory$0([Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;Ljava/nio/file/Path;Ljava/nio/file/attribute/PosixFileAttributes;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 6

    .line 1
    new-instance p3, Lorg/apache/commons/io/file/DeletingPathVisitor;

    .line 2
    .line 3
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p3, v0, p0, p1, v1}, Lorg/apache/commons/io/file/DeletingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p3, p2}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static synthetic lambda$directoryAndFileContentEquals$1(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/internal/jdk8/a;->d(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Lai/onnxruntime/c;->s(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->extractKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$filterPaths$2(Lorg/apache/commons/io/file/PathFilter;Ljava/nio/file/Path;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_12

    .line 2
    .line 3
    :try_start_2
    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p0, p1, v0}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Lkotlin/io/path/a;->h()Ljava/nio/file/FileVisitResult;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_12

    .line 15
    if-ne p0, p1, :cond_12

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :catch_12
    :cond_12
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private static synthetic lambda$overrideReadOnly$3(Lorg/apache/commons/io/file/DeleteOption;)Z
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    .line 2
    .line 3
    if-ne p0, v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private static synthetic lambda$walk$4(Lorg/apache/commons/io/file/PathFilter;ZLjava/nio/file/Path;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    sget-object p1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 4
    .line 5
    invoke-static {p2, p1}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    invoke-interface {p0, p2, p1}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Lkotlin/io/path/a;->h()Ljava/nio/file/FileVisitResult;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-ne p0, p1, :cond_16

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_16
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/apache/commons/io/file/PathFilter;",
            ")",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/DirectoryStreamFilter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/apache/commons/io/file/DirectoryStreamFilter;-><init>(Lorg/apache/commons/io/file/PathFilter;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lorg/apache/commons/io/file/e;->e(Ljava/nio/file/Path;Lorg/apache/commons/io/file/DirectoryStreamFilter;)Ljava/nio/file/DirectoryStream;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;
    .registers 3

    .line 62
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    if-eqz p1, :cond_7

    sget-object p1, Lorg/apache/commons/io/file/PathUtils;->OPEN_OPTIONS_APPEND:[Ljava/nio/file/OpenOption;

    goto :goto_9

    :cond_7
    sget-object p1, Lorg/apache/commons/io/file/PathUtils;->OPEN_OPTIONS_TRUNCATE:[Ljava/nio/file/OpenOption;

    :goto_9
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .registers 5

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_16

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_f

    .line 9
    .line 10
    array-length v1, p1

    .line 11
    if-lez v1, :cond_f

    .line 12
    .line 13
    aget-object v1, p1, v0

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :cond_f
    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->NULL_LINK_OPTION:Ljava/nio/file/LinkOption;

    .line 17
    .line 18
    :goto_11
    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 19
    .line 20
    invoke-static {p0, v1, v0}, Lorg/apache/commons/io/file/PathUtils;->createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 21
    .line 22
    .line 23
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz p2, :cond_1b

    .line 26
    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    sget-object p2, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    .line 29
    .line 30
    :goto_1d
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_27

    .line 38
    .line 39
    goto :goto_29

    .line 40
    :cond_27
    sget-object p1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 41
    .line 42
    :goto_29
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    sget-object p1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, [Ljava/nio/file/OpenOption;

    .line 56
    .line 57
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/nio/file/LinkOption;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljava/nio/file/LinkOption;

    .line 8
    .line 9
    return-object v0
.end method

.method private static varargs notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 3

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0, p1}, Lorg/apache/commons/io/d;->w(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static varargs overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Li7/k;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, Li7/k;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    goto :goto_8

    .line 4
    :cond_3
    :try_start_3
    invoke-static {p0, p1, p2}, Lkotlin/io/path/f;->j(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_8

    .line 8
    return-object p0

    .line 9
    :catch_8
    :goto_8
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public static readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/io/path/f;->f()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, Lkotlin/io/path/f;->j(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static varargs readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 3

    .line 13
    invoke-static {}, Lkotlin/io/path/f;->f()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static varargs readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/e;->C()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/e;->k(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributes;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 2

    .line 1
    if-eqz p0, :cond_d

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/io/path/a;->u(Ljava/nio/file/Path;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/io/path/a;->x(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_c
    return-object p0

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public static varargs readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static varargs readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/f;->y()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/f;->m(Ljava/lang/Object;)Ljava/nio/file/attribute/PosixFileAttributes;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lc5/h;->z(Ljava/nio/file/Path;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;",
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
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/apache/commons/io/file/i;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lorg/apache/commons/io/file/i;-><init>(Ljava/nio/file/Path;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p2, :cond_1d

    .line 18
    .line 19
    if-nez p3, :cond_19

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_1d
    :goto_1d
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/util/List;

    .line 39
    .line 40
    return-object p0
.end method

.method private static varargs requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .registers 5

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_a

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    const-string p2, "\' does not exist: \'"

    .line 12
    .line 13
    const-string v0, "\'"

    .line 14
    .line 15
    const-string v1, "File system element for parameter \'"

    .line 16
    .line 17
    invoke-static {v1, p1, p2, p0, v0}, Landroidx/navigation/b;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public static resolve(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 5

    .line 1
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_f

    .line 10
    .line 11
    invoke-static {p0, p1}, Lkotlin/internal/jdk8/a;->r(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_f
    invoke-static {v1}, Lkotlin/internal/jdk8/a;->d(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0}, Lkotlin/internal/jdk8/a;->d(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1}, Lai/onnxruntime/c;->s(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_22

    .line 33
    .line 34
    goto :goto_26

    .line 35
    :cond_22
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_26
    invoke-static {p0, p1}, Lai/onnxruntime/c;->u(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method private static varargs setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z
    .registers 3

    .line 1
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_b

    .line 6
    .line 7
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/e;->w(Ljava/nio/file/attribute/DosFileAttributeView;Z)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 3

    .line 1
    const-string v0, "sourceFile"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 8
    .line 9
    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p1, p0}, Lorg/apache/commons/io/file/e;->t(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static varargs setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {}, Lorg/apache/commons/io/file/e;->B()Ljava/nio/file/attribute/PosixFilePermission;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {}, Lorg/apache/commons/io/file/e;->D()Ljava/nio/file/attribute/PosixFilePermission;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/file/PathUtils;->setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List;[Ljava/nio/file/LinkOption;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private static varargs setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List;[Ljava/nio/file/LinkOption;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/List<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;[",
            "Ljava/nio/file/LinkOption;",
            ")Z"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1f

    .line 2
    .line 3
    invoke-static {p0, p3}, Lorg/apache/commons/io/d;->r(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_11

    .line 13
    .line 14
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_14

    .line 18
    :cond_11
    invoke-interface {v0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    :goto_14
    invoke-interface {v0, p3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1d

    .line 26
    .line 27
    invoke-static {p0, v0}, Lorg/apache/commons/io/file/e;->u(Ljava/nio/file/Path;Ljava/util/HashSet;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method private static varargs setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V
    .registers 7

    .line 1
    invoke-static {p0, p2}, Lorg/apache/commons/io/d;->r(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    .line 7
    .line 8
    invoke-static {}, Lorg/apache/commons/io/file/e;->n()Ljava/nio/file/attribute/PosixFilePermission;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    .line 20
    .line 21
    invoke-static {}, Lorg/apache/commons/io/file/e;->B()Ljava/nio/file/attribute/PosixFilePermission;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    aput-object v2, v0, v3

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz p1, :cond_27

    .line 32
    .line 33
    invoke-interface {p2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    invoke-interface {p2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    :goto_2d
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/f;->w(Ljava/nio/file/Path;Ljava/util/Set;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static varargs setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .registers 5

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_7

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_1f

    .line 8
    :catch_7
    :cond_7
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p2}, Lorg/apache/commons/io/file/PathUtils;->isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_20

    .line 17
    .line 18
    if-eqz p1, :cond_1b

    .line 19
    .line 20
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    const/4 p1, 0x1

    .line 29
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z

    .line 30
    .line 31
    .line 32
    :goto_1f
    return-object p0

    .line 33
    :cond_20
    new-instance p1, Ljava/io/IOException;

    .line 34
    .line 35
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p2, "DOS or POSIX file operations not available for \'%s\', linkOptions %s"

    .line 44
    .line 45
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public static sizeOf(Ljava/nio/file/Path;)J
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    const-string v2, "path"

    .line 5
    .line 6
    invoke-static {p0, v2, v1}, Lorg/apache/commons/io/file/PathUtils;->requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/io/path/f;->D(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_15

    .line 16
    .line 17
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->sizeOfDirectory(Ljava/nio/file/Path;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_15
    invoke-static {p0}, Lkotlin/io/path/a;->a(Ljava/nio/file/Path;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public static sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    const-string v2, "path"

    .line 5
    .line 6
    invoke-static {p0, v2, v1}, Lorg/apache/commons/io/file/PathUtils;->requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/io/path/f;->D(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_15

    .line 16
    .line 17
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    invoke-static {p0}, Lkotlin/io/path/a;->a(Ljava/nio/file/Path;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static sizeOfDirectory(Ljava/nio/file/Path;)J
    .registers 3

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$Counter;->getLong()Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public static sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$Counter;->getBigInteger()Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static stripTrailingSeparator(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 4

    .line 1
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/internal/jdk8/a;->d(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_23

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_23

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p0, v0}, Lorg/apache/commons/io/file/f;->g(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_23
    return-object p0
.end method

.method public static varargs toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_b

    .line 2
    .line 3
    invoke-static {}, Lorg/apache/commons/io/file/f;->A()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/Set;

    .line 25
    .line 26
    return-object p0
.end method

.method private static toList(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/util/List;

    .line 19
    .line 20
    return-object p0
.end method

.method private static toSortedList(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public static touch(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 3

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_19

    .line 14
    .line 15
    new-array v1, v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 16
    .line 17
    invoke-static {p0, v1}, Lorg/apache/commons/io/file/PathUtils;->createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 18
    .line 19
    .line 20
    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 21
    .line 22
    invoke-static {p0, v0}, Lorg/apache/commons/io/file/e;->v(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_19
    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->setLastModifiedTime(Ljava/nio/file/Path;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public static varargs visitFileTree(Ljava/nio/file/FileVisitor;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/FileVisitor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lai/onnxruntime/c;->t(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/net/URI;)Ljava/nio/file/FileVisitor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lkotlin/io/path/a;->i(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    return-object p0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    .line 11
    invoke-static {p1, p0}, Lorg/apache/commons/io/file/f;->v(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)V

    return-object p0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;Ljava/util/Set;I)Ljava/nio/file/FileVisitor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I)TT;"
        }
    .end annotation

    .line 10
    invoke-static {p1, p2, p3, p0}, Lkotlin/io/path/a;->s(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)V

    return-object p0
.end method

.method public static varargs waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z
    .registers 9

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lorg/apache/commons/io/d;->p(Ljava/time/Instant;Ljava/time/Duration;)Ljava/time/Instant;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_f
    :try_start_f
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_47

    .line 21
    .line 22
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2, p1}, Lorg/apache/commons/io/file/e;->y(Ljava/time/Instant;Ljava/time/Instant;)Z

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_43

    .line 30
    if-eqz v3, :cond_29

    .line 31
    .line 32
    if-eqz v1, :cond_28

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 39
    .line 40
    .line 41
    :cond_28
    return v0

    .line 42
    :cond_29
    :try_start_29
    invoke-static {v2}, Lkotlin/io/path/f;->d(Ljava/time/Instant;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {p1, v2, v3}, Lorg/apache/commons/io/file/e;->p(Ljava/time/Instant;J)Ljava/time/Instant;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lkotlin/io/path/f;->d(Ljava/time/Instant;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    const-wide/16 v4, 0x64

    .line 55
    .line 56
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_42} :catch_45
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_42} :catch_47
    .catchall {:try_start_29 .. :try_end_42} :catchall_43

    .line 65
    .line 66
    .line 67
    goto :goto_f

    .line 68
    :catchall_43
    move-exception p0

    .line 69
    goto :goto_55

    .line 70
    :catch_45
    const/4 v1, 0x1

    .line 71
    goto :goto_f

    .line 72
    :catch_47
    :cond_47
    if-eqz v1, :cond_50

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 79
    .line 80
    .line 81
    :cond_50
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    return p0

    .line 86
    :goto_55
    if-eqz v1, :cond_5e

    .line 87
    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 93
    .line 94
    .line 95
    :cond_5e
    throw p0
.end method

.method public static varargs walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/apache/commons/io/file/PathFilter;",
            "IZ[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p4}, Lorg/apache/commons/io/d;->s(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p2, Lorg/apache/commons/io/file/g;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lorg/apache/commons/io/file/g;-><init>(Lorg/apache/commons/io/file/PathFilter;Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static withPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            "Z",
            "Lorg/apache/commons/io/function/IOFunction<",
            "Ljava/nio/file/attribute/PosixFileAttributes;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_7

    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p2, 0x0

    .line 9
    :goto_8
    :try_start_8
    invoke-interface {p3, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    .line 13
    if-eqz p2, :cond_1d

    .line 14
    .line 15
    if-eqz p0, :cond_1d

    .line 16
    .line 17
    invoke-static {p0, p1}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1d

    .line 22
    .line 23
    invoke-static {p2}, Lorg/apache/commons/io/file/e;->r(Ljava/nio/file/attribute/PosixFileAttributes;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/f;->w(Ljava/nio/file/Path;Ljava/util/Set;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    return-object p3

    .line 31
    :catchall_1e
    move-exception p3

    .line 32
    if-eqz p2, :cond_30

    .line 33
    .line 34
    if-eqz p0, :cond_30

    .line 35
    .line 36
    invoke-static {p0, p1}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_30

    .line 41
    .line 42
    invoke-static {p2}, Lorg/apache/commons/io/file/e;->r(Ljava/nio/file/attribute/PosixFileAttributes;)Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/f;->w(Ljava/nio/file/Path;Ljava/util/Set;)V

    .line 47
    .line 48
    .line 49
    :cond_30
    throw p3
.end method

.method public static varargs writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .registers 5

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "charSequence"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, p1, p3}, Lkotlin/internal/jdk8/a;->x(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method
