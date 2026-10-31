.class public Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;
.super Lorg/apache/commons/io/build/AbstractOrigin;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOrigin<",
        "Ljava/nio/file/Path;",
        "Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractOrigin;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(JILjava/io/RandomAccessFile;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;->lambda$getByteArray$0(JILjava/io/RandomAccessFile;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getByteArray$0(JILjava/io/RandomAccessFile;)[B
    .locals 0

    .line 1
    invoke-static {p3, p0, p1, p2}, Lorg/apache/commons/io/RandomAccessFiles;->read(Ljava/io/RandomAccessFile;JI)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getByteArray(JI)[B
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/commons/io/RandomAccessFileMode;->READ_ONLY:Lorg/apache/commons/io/RandomAccessFileMode;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/build/AbstractOrigin;->origin:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v1}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lorg/apache/commons/io/build/a;

    .line 10
    .line 11
    invoke-direct {v2, p1, p2, p3}, Lorg/apache/commons/io/build/a;-><init>(JI)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/io/RandomAccessFileMode;->apply(Ljava/nio/file/Path;Lorg/apache/commons/io/function/IOFunction;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, [B

    .line 19
    .line 20
    return-object p1
.end method

.method public varargs getChannel([Ljava/nio/file/OpenOption;)Ljava/nio/channels/Channel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;->getPath()Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lorg/apache/commons/io/d;->h(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lai/onnxruntime/c;->r(Ljava/nio/file/Path;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
