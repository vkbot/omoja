.class final Lorg/apache/commons/io/input/Tailer$TailablePath;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/input/Tailer$Tailable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/Tailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TailablePath"
.end annotation


# instance fields
.field private final linkOptions:[Ljava/nio/file/LinkOption;

.field private final path:Ljava/nio/file/Path;


# direct methods
.method private varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "path"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    .line 14
    .line 15
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->linkOptions:[Ljava/nio/file/LinkOption;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lorg/apache/commons/io/input/Tailer$1;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/Tailer$TailablePath;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/nio/file/Path;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRandomAccess(Ljava/lang/String;)Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    .registers 5

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/Tailer$RandomAccessFileBridge;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    .line 4
    .line 5
    invoke-static {v1}, Lai/onnxruntime/c;->r(Ljava/nio/file/Path;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/io/input/Tailer$RandomAccessFileBridge;-><init>(Ljava/io/File;Ljava/lang/String;Lorg/apache/commons/io/input/Tailer$1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public isNewer(Ljava/nio/file/attribute/FileTime;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->linkOptions:[Ljava/nio/file/LinkOption;

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->linkOptions:[Ljava/nio/file/LinkOption;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/io/path/f;->l(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public size()J
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/io/path/a;->a(Ljava/nio/file/Path;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TailablePath [file="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", linkOptions="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->linkOptions:[Ljava/nio/file/LinkOption;

    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "]"

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
