.class public final enum Lorg/apache/commons/compress/archivers/zip/p$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/zip/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic x:[Lorg/apache/commons/compress/archivers/zip/p$a;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/p$a;

    const-string v1, "DES"

    const/4 v10, 0x0

    const/16 v2, 0x6601

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/p$a;

    const/16 v2, 0x6602

    const-string v3, "RC2pre52"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/p$a;

    const/16 v3, 0x6603

    const-string v4, "TripleDES168"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/p$a;

    const/16 v4, 0x6609

    const-string v5, "TripleDES192"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lorg/apache/commons/compress/archivers/zip/p$a;

    const/16 v5, 0x660e

    const-string v6, "AES128"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lorg/apache/commons/compress/archivers/zip/p$a;

    const/16 v6, 0x660f

    const-string v7, "AES192"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lorg/apache/commons/compress/archivers/zip/p$a;

    const/16 v7, 0x6610

    const-string v8, "AES256"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lorg/apache/commons/compress/archivers/zip/p$a;

    const/16 v8, 0x6702

    const-string v9, "RC2"

    const/4 v11, 0x7

    invoke-direct {v7, v9, v11, v8}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lorg/apache/commons/compress/archivers/zip/p$a;

    const/16 v9, 0x6801

    const-string v11, "RC4"

    const/16 v12, 0x8

    invoke-direct {v8, v11, v12, v9}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lorg/apache/commons/compress/archivers/zip/p$a;

    const v11, 0xffff

    const-string v12, "UNKNOWN"

    const/16 v13, 0x9

    invoke-direct {v9, v12, v13, v11}, Lorg/apache/commons/compress/archivers/zip/p$a;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v9}, [Lorg/apache/commons/compress/archivers/zip/p$a;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/p$a;->x:[Lorg/apache/commons/compress/archivers/zip/p$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/p$a;->values()[Lorg/apache/commons/compress/archivers/zip/p$a;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v10, v2, :cond_0

    aget-object v3, v1, v10

    iget v4, v3, Lorg/apache/commons/compress/archivers/zip/p$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/p$a;->r:Ljava/util/Map;

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

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/p$a;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/p$a;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/archivers/zip/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/p$a;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/p$a;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/p$a;->x:[Lorg/apache/commons/compress/archivers/zip/p$a;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/p$a;

    return-object v0
.end method
