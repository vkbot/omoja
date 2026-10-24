.class public abstract Lorg/apache/commons/compress/archivers/zip/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/t$a;
    }
.end annotation


# instance fields
.field public Z:J

.field public final b1:[B

.field public final c:Ljava/util/zip/Deflater;

.field public final r:Ljava/util/zip/CRC32;

.field public x:J

.field public y:J


# direct methods
.method public constructor <init>(Ljava/util/zip/Deflater;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->r:Ljava/util/zip/CRC32;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->b1:[B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/t;->c:Ljava/util/zip/Deflater;

    return-void
.end method


# virtual methods
.method public final a(II[B)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/t$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/t$a;->c1:Ljava/io/OutputStream;

    invoke-virtual {v0, p3, p1, p2}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->x:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->x:J

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->Z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->Z:J

    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/t;->c:Ljava/util/zip/Deflater;

    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method
