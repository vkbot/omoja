.class public Lorg/apache/commons/io/file/spi/FileSystemProviders;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final INSTALLED:Lorg/apache/commons/io/file/spi/FileSystemProviders;

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"


# instance fields
.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/spi/FileSystemProviders;

    .line 2
    .line 3
    invoke-static {}, Lorg/apache/commons/io/file/f;->s()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/spi/FileSystemProviders;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->INSTALLED:Lorg/apache/commons/io/file/spi/FileSystemProviders;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_6

    .line 5
    .line 6
    goto :goto_8

    .line 7
    :cond_6
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    :goto_8
    iput-object p1, p0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->providers:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/nio/file/spi/FileSystemProvider;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/spi/FileSystemProviders;->lambda$getFileSystemProvider$0(Ljava/lang/String;Ljava/nio/file/spi/FileSystemProvider;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getFileSystemProvider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 2

    .line 53
    const-string v0, "path"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Lkotlin/internal/jdk8/a;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/file/f;->o(Ljava/nio/file/FileSystem;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object p0

    return-object p0
.end method

.method public static installed()Lorg/apache/commons/io/file/spi/FileSystemProviders;
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->INSTALLED:Lorg/apache/commons/io/file/spi/FileSystemProviders;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic lambda$getFileSystemProvider$0(Ljava/lang/String;Ljava/nio/file/spi/FileSystemProvider;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/file/f;->c(Ljava/nio/file/spi/FileSystemProvider;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method


# virtual methods
.method public getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 5

    .line 1
    const-string v0, "scheme"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "file"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_16

    .line 13
    .line 14
    invoke-static {}, Lorg/apache/commons/io/file/f;->e()Ljava/nio/file/FileSystem;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lorg/apache/commons/io/file/f;->o(Ljava/nio/file/FileSystem;)Ljava/nio/file/spi/FileSystemProvider;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->providers:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lorg/apache/commons/io/file/k;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, v2, p1}, Lorg/apache/commons/io/file/k;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lorg/apache/commons/io/file/f;->n(Ljava/lang/Object;)Ljava/nio/file/spi/FileSystemProvider;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public getFileSystemProvider(Ljava/net/URI;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 3

    .line 54
    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/file/spi/FileSystemProviders;->getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object p1

    return-object p1
.end method

.method public getFileSystemProvider(Ljava/net/URL;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 3

    .line 55
    const-string v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/file/spi/FileSystemProviders;->getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object p1

    return-object p1
.end method
