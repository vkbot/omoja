.class public final enum Lorg/apache/commons/compress/archivers/zip/p$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/p$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/zip/p$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic x:[Lorg/apache/commons/compress/archivers/zip/p$b;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/p$b;

    const-string v1, "NONE"

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/commons/compress/archivers/zip/p$b;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/p$b;

    const-string v2, "CRC32"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/commons/compress/archivers/zip/p$b;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/p$b;

    const v3, 0x8003

    const-string v4, "MD5"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lorg/apache/commons/compress/archivers/zip/p$b;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/p$b;

    const v4, 0x8004

    const-string v5, "SHA1"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lorg/apache/commons/compress/archivers/zip/p$b;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lorg/apache/commons/compress/archivers/zip/p$b;

    const v5, 0x8007

    const-string v6, "RIPEND160"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lorg/apache/commons/compress/archivers/zip/p$b;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lorg/apache/commons/compress/archivers/zip/p$b;

    const v6, 0x800c

    const-string v7, "SHA256"

    const/4 v9, 0x5

    invoke-direct {v5, v7, v9, v6}, Lorg/apache/commons/compress/archivers/zip/p$b;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lorg/apache/commons/compress/archivers/zip/p$b;

    const v7, 0x800d

    const-string v9, "SHA384"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7}, Lorg/apache/commons/compress/archivers/zip/p$b;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lorg/apache/commons/compress/archivers/zip/p$b;

    const v9, 0x800e

    const-string v10, "SHA512"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v9}, Lorg/apache/commons/compress/archivers/zip/p$b;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v7}, [Lorg/apache/commons/compress/archivers/zip/p$b;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/p$b;->x:[Lorg/apache/commons/compress/archivers/zip/p$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/p$b;->values()[Lorg/apache/commons/compress/archivers/zip/p$b;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v8, v2, :cond_0

    aget-object v3, v1, v8

    iget v4, v3, Lorg/apache/commons/compress/archivers/zip/p$b;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/p$b;->r:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/p$b;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/p$b;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/archivers/zip/p$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/p$b;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/p$b;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/p$b;->x:[Lorg/apache/commons/compress/archivers/zip/p$b;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/p$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/p$b;

    return-object v0
.end method
