.class public abstract synthetic Lorg/apache/commons/io/file/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static bridge synthetic A()Ljava/nio/file/StandardOpenOption;
    .registers 1

    .line 1
    sget-object v0, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic B()Ljava/nio/file/attribute/PosixFilePermission;
    .registers 1

    .line 1
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic C()Ljava/lang/Class;
    .registers 1

    .line 1
    const-class v0, Ljava/nio/file/attribute/DosFileAttributes;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic D()Ljava/nio/file/attribute/PosixFilePermission;
    .registers 1

    .line 1
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic a(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic b(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static bridge synthetic c()Ljava/lang/Class;
    .registers 1

    .line 1
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic d(Ljava/nio/file/FileSystem;)Ljava/lang/Iterable;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getRootDirectories()Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic e(Ljava/nio/file/Path;Lorg/apache/commons/io/file/DirectoryStreamFilter;)Ljava/nio/file/DirectoryStream;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic f(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic g(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic h([Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 2

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static bridge synthetic i()Ljava/nio/file/StandardOpenOption;
    .registers 1

    .line 1
    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic j(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributeView;
    .registers 1

    .line 1
    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic k(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributes;
    .registers 1

    .line 1
    check-cast p0, Ljava/nio/file/attribute/DosFileAttributes;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic l(J)Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/nio/file/attribute/PosixFileAttributeView;
    .registers 1

    .line 1
    check-cast p0, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic n()Ljava/nio/file/attribute/PosixFilePermission;
    .registers 1

    .line 1
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic o(J)Ljava/time/Duration;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic p(Ljava/time/Instant;J)Ljava/time/Instant;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic q(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;
    .registers 1

    .line 1
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic r(Ljava/nio/file/attribute/PosixFileAttributes;)Ljava/util/Set;
    .registers 1

    .line 1
    invoke-interface {p0}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic s(Ljava/nio/file/DirectoryStream;)V
    .registers 1

    .line 1
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic t(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic u(Ljava/nio/file/Path;Ljava/util/HashSet;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic v(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic w(Ljava/nio/file/attribute/DosFileAttributeView;Z)V
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic x(Ljava/nio/file/Path;Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic y(Ljava/time/Instant;Ljava/time/Instant;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic z()Ljava/lang/Class;
    .registers 1

    .line 1
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 2
    .line 3
    return-object v0
.end method
