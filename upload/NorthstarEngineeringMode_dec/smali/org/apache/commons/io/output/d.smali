.class public final Lorg/apache/commons/io/output/d;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final c:Lorg/apache/commons/io/output/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/output/d;

    invoke-direct {v0}, Ljava/io/OutputStream;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/d;->c:Lorg/apache/commons/io/output/d;

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1

    new-instance p0, Ljava/io/IOException;

    const-string v0, "flush() failed: stream is closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write(I)V
    .locals 0

    .line 2
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "write(int) failed: stream is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write([BII)V
    .locals 0

    .line 1
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "write(byte[], int, int) failed: stream is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
