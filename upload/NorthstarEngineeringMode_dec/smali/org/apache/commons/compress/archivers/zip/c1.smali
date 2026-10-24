.class public final enum Lorg/apache/commons/compress/archivers/zip/c1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/c1;",
        ">;"
    }
.end annotation


# static fields
.field public static final Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/zip/c1;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic b1:[Lorg/apache/commons/compress/archivers/zip/c1;

.field public static final enum r:Lorg/apache/commons/compress/archivers/zip/c1;

.field public static final enum x:Lorg/apache/commons/compress/archivers/zip/c1;

.field public static final enum y:Lorg/apache/commons/compress/archivers/zip/c1;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v1, "STORED"

    const/4 v15, 0x0

    invoke-direct {v0, v1, v15, v15}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v2, "UNSHRINKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v3, "EXPANDING_LEVEL_1"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v4, "EXPANDING_LEVEL_2"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v5, "EXPANDING_LEVEL_3"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v6, "EXPANDING_LEVEL_4"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v7, "IMPLODING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v8, "TOKENIZATION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v9, "DEFLATED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/commons/compress/archivers/zip/c1;->x:Lorg/apache/commons/compress/archivers/zip/c1;

    new-instance v9, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v10, "ENHANCED_DEFLATED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/commons/compress/archivers/zip/c1;->y:Lorg/apache/commons/compress/archivers/zip/c1;

    new-instance v10, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v11, "PKWARE_IMPLODING"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v12, "BZIP2"

    const/16 v13, 0xb

    const/16 v14, 0xc

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v13, "LZMA"

    const/16 v15, 0xe

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lorg/apache/commons/compress/archivers/zip/c1;

    const/16 v14, 0x5f

    const-string v15, "XZ"

    move-object/from16 v18, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v12, "JPEG"

    const/16 v15, 0x60

    move-object/from16 v19, v13

    const/16 v13, 0xe

    invoke-direct {v14, v12, v13, v15}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lorg/apache/commons/compress/archivers/zip/c1;

    const/16 v12, 0x61

    const-string v13, "WAVPACK"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lorg/apache/commons/compress/archivers/zip/c1;

    const/16 v12, 0x62

    const-string v13, "PPMD"

    move-object/from16 v20, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v12}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lorg/apache/commons/compress/archivers/zip/c1;

    const/16 v12, 0x63

    const-string v13, "AES_ENCRYPTED"

    move-object/from16 v21, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v12}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lorg/apache/commons/compress/archivers/zip/c1;

    const-string v12, "UNKNOWN"

    const/16 v13, 0x12

    move-object/from16 v22, v15

    const/4 v15, -0x1

    invoke-direct {v14, v12, v13, v15}, Lorg/apache/commons/compress/archivers/zip/c1;-><init>(Ljava/lang/String;II)V

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v19, v14

    move-object/from16 v18, v21

    move-object/from16 v14, v17

    move-object/from16 v17, v22

    const/16 v21, 0x0

    move-object/from16 v15, v20

    move-object/from16 v16, v18

    move-object/from16 v18, v19

    filled-new-array/range {v0 .. v18}, [Lorg/apache/commons/compress/archivers/zip/c1;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/c1;->b1:[Lorg/apache/commons/compress/archivers/zip/c1;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/c1;->values()[Lorg/apache/commons/compress/archivers/zip/c1;

    move-result-object v1

    array-length v2, v1

    move/from16 v15, v21

    :goto_0
    if-ge v15, v2, :cond_0

    aget-object v3, v1, v15

    iget v4, v3, Lorg/apache/commons/compress/archivers/zip/c1;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/c1;->Z:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/c1;->c:I

    return-void
.end method

.method public static a(I)Lorg/apache/commons/compress/archivers/zip/c1;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/c1;->Z:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/c1;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/c1;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/archivers/zip/c1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/c1;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/c1;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/c1;->b1:[Lorg/apache/commons/compress/archivers/zip/c1;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/c1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/c1;

    return-object v0
.end method
