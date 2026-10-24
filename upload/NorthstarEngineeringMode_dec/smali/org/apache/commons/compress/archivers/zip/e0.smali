.class public final Lorg/apache/commons/compress/archivers/zip/e0;
.super Lorg/apache/commons/compress/archivers/zip/p;
.source "SourceFile"


# static fields
.field public static final y:Lorg/apache/commons/compress/archivers/zip/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/e0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method


# virtual methods
.method public final e(II[B)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/archivers/zip/p;->h(II)V

    const/4 p0, 0x2

    invoke-static {p1, p0, p3}, Lh4/d;->a(II[B)J

    add-int/2addr p1, p0

    invoke-static {p1, p0, p3}, Lh4/d;->a(II[B)J

    move-result-wide p0

    long-to-int p0, p0

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/p$b;->r:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/p$b;

    return-void
.end method
