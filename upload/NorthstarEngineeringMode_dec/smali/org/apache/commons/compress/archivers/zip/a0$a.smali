.class public final Lorg/apache/commons/compress/archivers/zip/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final Z:Lorg/apache/commons/compress/archivers/zip/a0$a;

.field public static final b1:Lorg/apache/commons/compress/archivers/zip/a0$a;

.field public static final r:Lorg/apache/commons/compress/archivers/zip/a0$a;

.field public static final x:Lorg/apache/commons/compress/archivers/zip/a0$a;

.field public static final y:Lorg/apache/commons/compress/archivers/zip/a0$a;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a0$a;

    const-string v1, "encryption"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/a0$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a0$a;->r:Lorg/apache/commons/compress/archivers/zip/a0$a;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a0$a;

    const-string v1, "compression method"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/a0$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a0$a;->x:Lorg/apache/commons/compress/archivers/zip/a0$a;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a0$a;

    const-string v1, "data descriptor"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/a0$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a0$a;->y:Lorg/apache/commons/compress/archivers/zip/a0$a;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a0$a;

    const-string/jumbo v1, "splitting"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/a0$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a0$a;->Z:Lorg/apache/commons/compress/archivers/zip/a0$a;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a0$a;

    const-string/jumbo v1, "unknown compressed size"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/a0$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a0$a;->b1:Lorg/apache/commons/compress/archivers/zip/a0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/a0$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a0$a;->c:Ljava/lang/String;

    return-object p0
.end method
