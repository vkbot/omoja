.class public final Lorg/apache/commons/compress/archivers/zip/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final r:Lorg/apache/commons/compress/archivers/zip/j$a;

.field public static final x:Lorg/apache/commons/compress/archivers/zip/j$a;

.field public static final y:Lorg/apache/commons/compress/archivers/zip/j$a;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/j$a;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/j$a;->r:Lorg/apache/commons/compress/archivers/zip/j$a;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/j$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/j$a;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/j$a;->x:Lorg/apache/commons/compress/archivers/zip/j$a;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/j$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/j$a;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/j$a;->y:Lorg/apache/commons/compress/archivers/zip/j$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/j$a;->c:I

    return-void
.end method


# virtual methods
.method public final b(II[BIZ)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 1

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/j$a;->c:I

    if-eqz p0, :cond_3

    const/4 p4, 0x1

    if-eq p0, p4, :cond_2

    const/4 p4, 0x2

    if-ne p0, p4, :cond_1

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/x;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/x;-><init>()V

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/x;->f(II[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/x;->e(II[B)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "Unknown UnparseableExtraField key: "

    invoke-static {p2, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p3, "Bad extra field starting at "

    const-string p5, ".  Block length of "

    const-string v0, " bytes exceeds remaining data of "

    invoke-static {p3, p1, p5, p4, v0}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
