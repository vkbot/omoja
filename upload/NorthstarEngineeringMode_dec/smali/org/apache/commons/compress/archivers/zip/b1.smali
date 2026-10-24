.class public final Lorg/apache/commons/compress/archivers/zip/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final r:Lorg/apache/commons/compress/archivers/zip/b1;

.field public static final x:Lorg/apache/commons/compress/archivers/zip/b1;

.field public static final y:Lorg/apache/commons/compress/archivers/zip/b1;


# instance fields
.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/b1;

    const-wide/32 v1, 0x4034b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b1;->r:Lorg/apache/commons/compress/archivers/zip/b1;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/b1;

    const-wide/32 v1, 0x8074b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b1;->x:Lorg/apache/commons/compress/archivers/zip/b1;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/b1;

    const-wide/32 v1, 0x30304b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b1;->y:Lorg/apache/commons/compress/archivers/zip/b1;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    invoke-static {p2, v0, p1}, Lh4/d;->a(II[B)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    return-void
.end method

.method public static a(J)[B
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Lh4/d;->b(J[BII)V

    return-object v1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/b1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/b1;

    iget-wide v2, p1, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    iget-wide p0, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    cmp-long p0, p0, v2

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    long-to-int p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZipLong value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
