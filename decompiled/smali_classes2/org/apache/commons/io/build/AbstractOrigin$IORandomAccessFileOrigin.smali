.class public Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;
.super Lorg/apache/commons/io/build/AbstractOrigin$AbstractRandomAccessFileOrigin;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IORandomAccessFileOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOrigin$AbstractRandomAccessFileOrigin<",
        "Lorg/apache/commons/io/IORandomAccessFile;",
        "Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/io/IORandomAccessFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractOrigin$AbstractRandomAccessFileOrigin;-><init>(Ljava/io/RandomAccessFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/apache/commons/io/IORandomAccessFile;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/io/IORandomAccessFile;->getFile()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;->getFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lc5/h;->i(Ljava/io/File;)Ljava/nio/file/Path;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
