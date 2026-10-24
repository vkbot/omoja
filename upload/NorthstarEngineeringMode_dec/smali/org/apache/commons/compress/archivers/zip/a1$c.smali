.class public final Lorg/apache/commons/compress/archivers/zip/a1$c;
.super Lj4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj4/d<",
        "Lorg/apache/commons/compress/archivers/zip/a1;",
        "Lorg/apache/commons/compress/archivers/zip/a1$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final h1:Ljava/nio/charset/Charset;


# instance fields
.field public final f1:Z

.field public final g1:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a1$c;->h1:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lj4/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/a1$c;->f1:Z

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1$c;->g1:J

    iget-object v0, p0, Lj4/d;->b1:Ljava/nio/charset/Charset;

    sget v1, Li4/a;->a:I

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/a1$c;->h1:Ljava/nio/charset/Charset;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lj4/d;->Z:Ljava/nio/charset/Charset;

    iput-object v1, p0, Lj4/d;->b1:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final k()Lorg/apache/commons/compress/archivers/zip/a1;
    .locals 10

    invoke-virtual {p0}, Lj4/b;->i()Lj4/a;

    move-result-object v0

    instance-of v0, v0, Lj4/a$a;

    if-eqz v0, :cond_0

    new-instance v0, Lh4/i;

    invoke-virtual {p0}, Lj4/b;->i()Lj4/a;

    move-result-object v1

    invoke-virtual {v1}, Lj4/a;->i()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lh4/i;-><init>([B)V

    const-class v1, Lh4/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lj4/d;->c1:[Ljava/nio/file/OpenOption;

    array-length v1, v0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    :cond_1
    invoke-virtual {p0}, Lj4/b;->i()Lj4/a;

    move-result-object v1

    invoke-virtual {v1}, Lj4/a;->k()Ljava/nio/file/Path;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/a1$c;->g1:J

    invoke-static {v1, v2, v3, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->access$000(Ljava/nio/file/Path;J[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a1;

    iget-object v5, p0, Lj4/d;->Z:Ljava/nio/charset/Charset;

    iget-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/a1$c;->f1:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZLorg/apache/commons/compress/archivers/zip/a1$a;)V

    return-object v0
.end method
