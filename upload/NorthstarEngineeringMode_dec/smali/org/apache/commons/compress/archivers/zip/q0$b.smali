.class public final Lorg/apache/commons/compress/archivers/zip/q0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/compress/archivers/zip/o0;

.field public b:Z

.field public c:Z

.field public d:J

.field public e:J

.field public final f:Ljava/util/zip/CRC32;

.field public g:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->f:Ljava/util/zip/CRC32;

    return-void
.end method
