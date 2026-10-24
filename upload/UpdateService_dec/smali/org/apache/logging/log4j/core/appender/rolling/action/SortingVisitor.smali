.class public Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SortingVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final collected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final sorter:Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;)V
    .locals 1
    .param p1, "sorter"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sorter"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->collected:Ljava/util/List;

    .line 50
    const-string v0, "sorter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->sorter:Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;

    .line 51
    return-void
.end method


# virtual methods
.method public getSortedPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->collected:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->sorter:Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->collected:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "path",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->collected:Ljava/util/List;

    new-instance v1, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;

    invoke-direct {v1, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;-><init>(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public bridge synthetic visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "file",
            "ioException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "ioException"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "ioException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    instance-of v0, p2, Ljava/nio/file/NoSuchFileException;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "File {} could not be accessed, it has likely already been deleted"

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method
