.class public final Lorg/apache/commons/io/output/RandomAccessFileOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;
    }
.end annotation


# instance fields
.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getRandomAccessFile()Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;Lorg/apache/commons/io/output/RandomAccessFileOutputStream$1;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;-><init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;-><init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public flush()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getRandomAccessFile()Ljava/io/RandomAccessFile;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    return-object v0
.end method

.method public write(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
