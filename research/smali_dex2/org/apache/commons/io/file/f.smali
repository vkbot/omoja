.class public abstract synthetic Lorg/apache/commons/io/file/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static bridge synthetic A()Ljava/lang/Class;
    .registers 1

    .line 1
    const-class v0, Ljava/nio/file/FileVisitOption;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic B(Ljava/time/Instant;J)Ljava/time/Instant;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->minusNanos(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic C(Ljava/time/Instant;J)Ljava/time/Instant;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->minusSeconds(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic D(Ljava/time/Instant;J)Ljava/time/Instant;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic a(Ljava/nio/file/attribute/FileTime;)J
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .registers 1

    .line 1
    const-class v0, Ljava/nio/file/attribute/AclFileAttributeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic c(Ljava/nio/file/spi/FileSystemProvider;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic d(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic e()Ljava/nio/file/FileSystem;
    .registers 1

    .line 1
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)Ljava/nio/file/FileVisitResult;
    .registers 1

    .line 1
    check-cast p0, Ljava/nio/file/FileVisitResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic g(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic h(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/nio/file/attribute/AclFileAttributeView;
    .registers 1

    .line 1
    check-cast p0, Ljava/nio/file/attribute/AclFileAttributeView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic j()Ljava/nio/file/attribute/FileTime;
    .registers 1

    .line 1
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static bridge synthetic k(J)Ljava/nio/file/attribute/FileTime;
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static bridge synthetic l(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/nio/file/attribute/PosixFileAttributes;
    .registers 1

    .line 1
    check-cast p0, Ljava/nio/file/attribute/PosixFileAttributes;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic n(Ljava/lang/Object;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 1

    .line 1
    check-cast p0, Ljava/nio/file/spi/FileSystemProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic o(Ljava/nio/file/FileSystem;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic p(J)Ljava/time/Instant;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic q(Ljava/nio/file/attribute/FileTime;)Ljava/time/Instant;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic r(Ljava/time/Instant;J)Ljava/time/Instant;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic s()Ljava/util/List;
    .registers 1

    .line 1
    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static bridge synthetic t(Ljava/nio/file/attribute/AclFileAttributeView;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-interface {p0}, Ljava/nio/file/attribute/AclFileAttributeView;->getAcl()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic u(Ljava/nio/file/Path;)Ljava/util/stream/Stream;
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic v(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic w(Ljava/nio/file/Path;Ljava/util/Set;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic x(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;)Z
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic y()Ljava/lang/Class;
    .registers 1

    .line 1
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributes;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic z(Ljava/time/Instant;J)Ljava/time/Instant;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
