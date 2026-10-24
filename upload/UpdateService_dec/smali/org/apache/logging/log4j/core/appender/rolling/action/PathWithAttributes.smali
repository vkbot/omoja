.class public Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;
.super Ljava/lang/Object;
.source "PathWithAttributes.java"


# instance fields
.field private final attributes:Ljava/nio/file/attribute/BasicFileAttributes;

.field private final path:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "attributes"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->path:Ljava/nio/file/Path;

    .line 34
    const-string v0, "attributes"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/nio/file/attribute/BasicFileAttributes;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->attributes:Ljava/nio/file/attribute/BasicFileAttributes;

    .line 35
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->attributes:Ljava/nio/file/attribute/BasicFileAttributes;

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->path:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (modified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->attributes:Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
