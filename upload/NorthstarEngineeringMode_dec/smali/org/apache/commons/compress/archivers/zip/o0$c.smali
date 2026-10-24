.class public enum Lorg/apache/commons/compress/archivers/zip/o0$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/o0$c;",
        ">;",
        "Lorg/apache/commons/compress/archivers/zip/f;"
    }
.end annotation


# static fields
.field public static final enum r:Lorg/apache/commons/compress/archivers/zip/o0$c$a;

.field public static final enum x:Lorg/apache/commons/compress/archivers/zip/o0$c$b;

.field public static final synthetic y:[Lorg/apache/commons/compress/archivers/zip/o0$c;


# instance fields
.field public final c:Lorg/apache/commons/compress/archivers/zip/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/o0$c$a;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/j$a;->y:Lorg/apache/commons/compress/archivers/zip/j$a;

    const-string v2, "BEST_EFFORT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/compress/archivers/zip/o0$c;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/archivers/zip/j$a;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/o0$c;->r:Lorg/apache/commons/compress/archivers/zip/o0$c$a;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/o0$c;

    const-string v4, "STRICT_FOR_KNOW_EXTRA_FIELDS"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v1}, Lorg/apache/commons/compress/archivers/zip/o0$c;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/archivers/zip/j$a;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/o0$c$b;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/j$a;->x:Lorg/apache/commons/compress/archivers/zip/j$a;

    const-string v6, "ONLY_PARSEABLE_LENIENT"

    const/4 v7, 0x2

    invoke-direct {v1, v6, v7, v4}, Lorg/apache/commons/compress/archivers/zip/o0$c;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/archivers/zip/j$a;)V

    sput-object v1, Lorg/apache/commons/compress/archivers/zip/o0$c;->x:Lorg/apache/commons/compress/archivers/zip/o0$c$b;

    new-instance v6, Lorg/apache/commons/compress/archivers/zip/o0$c;

    const-string v8, "ONLY_PARSEABLE_STRICT"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v4}, Lorg/apache/commons/compress/archivers/zip/o0$c;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/archivers/zip/j$a;)V

    new-instance v4, Lorg/apache/commons/compress/archivers/zip/o0$c;

    sget-object v8, Lorg/apache/commons/compress/archivers/zip/j$a;->r:Lorg/apache/commons/compress/archivers/zip/j$a;

    const-string v10, "DRACONIC"

    const/4 v11, 0x4

    invoke-direct {v4, v10, v11, v8}, Lorg/apache/commons/compress/archivers/zip/o0$c;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/archivers/zip/j$a;)V

    const/4 v8, 0x5

    new-array v8, v8, [Lorg/apache/commons/compress/archivers/zip/o0$c;

    aput-object v0, v8, v3

    aput-object v2, v8, v5

    aput-object v1, v8, v7

    aput-object v6, v8, v9

    aput-object v4, v8, v11

    sput-object v8, Lorg/apache/commons/compress/archivers/zip/o0$c;->y:[Lorg/apache/commons/compress/archivers/zip/o0$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/compress/archivers/zip/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/zip/j$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/o0$c;->c:Lorg/apache/commons/compress/archivers/zip/j$a;

    return-void
.end method

.method public static d(Lorg/apache/commons/compress/archivers/zip/v0;[BIIZ)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/j;->a(Lorg/apache/commons/compress/archivers/zip/v0;[BIIZ)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/commons/compress/archivers/zip/y;->c:Lorg/apache/commons/compress/archivers/zip/d1;

    if-eqz p4, :cond_0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    iput-object p0, v0, Lorg/apache/commons/compress/archivers/zip/y;->r:[B

    goto :goto_0

    :cond_0
    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object p0

    iput-object p0, v0, Lorg/apache/commons/compress/archivers/zip/y;->x:[B

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0$c;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/archivers/zip/o0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/o0$c;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/o0$c;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o0$c;->y:[Lorg/apache/commons/compress/archivers/zip/o0$c;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/o0$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/o0$c;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/commons/compress/archivers/zip/v0;[BIIZ)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/compress/archivers/zip/j;->a(Lorg/apache/commons/compress/archivers/zip/v0;[BIIZ)V

    return-object p1
.end method

.method public final b(II[BIZ)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0$c;->c:Lorg/apache/commons/compress/archivers/zip/j$a;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/j$a;->b(II[BIZ)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/v0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/y;->c:Lorg/apache/commons/compress/archivers/zip/d1;

    :goto_1
    return-object p0
.end method
