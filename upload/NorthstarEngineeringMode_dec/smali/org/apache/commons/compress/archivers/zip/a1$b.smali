.class public final Lorg/apache/commons/compress/archivers/zip/a1$b;
.super Lh4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final y:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(JJLjava/nio/channels/FileChannel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lh4/b;-><init>(JJ)V

    iput-object p5, p0, Lorg/apache/commons/compress/archivers/zip/a1$b;->y:Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;J)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1$b;->y:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return p0
.end method
