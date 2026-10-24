.class public final Lorg/apache/commons/compress/archivers/zip/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/zip/o0;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/apache/commons/compress/archivers/zip/f;

.field public final synthetic r:Lorg/apache/commons/compress/archivers/zip/o0;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/commons/compress/archivers/zip/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0$a;->r:Lorg/apache/commons/compress/archivers/zip/o0;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/o0$a;->c:Lorg/apache/commons/compress/archivers/zip/f;

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/compress/archivers/zip/v0;[BIIZ)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0$a;->c:Lorg/apache/commons/compress/archivers/zip/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/f;->a(Lorg/apache/commons/compress/archivers/zip/v0;[BIIZ)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    return-object p0
.end method

.method public final b(II[BIZ)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0$a;->c:Lorg/apache/commons/compress/archivers/zip/f;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/w;->b(II[BIZ)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0$a;->r:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->access$200(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/v0;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0$a;->c:Lorg/apache/commons/compress/archivers/zip/f;

    invoke-interface {p0, p1}, Lorg/apache/commons/compress/archivers/zip/f;->c(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    :cond_0
    return-object v0
.end method
