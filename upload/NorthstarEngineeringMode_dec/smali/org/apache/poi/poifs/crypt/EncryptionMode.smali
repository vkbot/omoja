.class public final enum Lorg/apache/poi/poifs/crypt/EncryptionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/EncryptionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field public static final enum agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field public static final enum binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field public static final enum cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field public static final enum standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field public static final enum xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;


# instance fields
.field public final builder:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public final encryptionFlags:I

.field public final versionMajor:I

.field public final versionMinor:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v7, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const-string v1, "binaryRC4"

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/i;

    const/16 v8, 0x12

    invoke-direct {v3, v8}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionMode;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;III)V

    sput-object v7, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const-string v10, "cryptoAPI"

    const/4 v11, 0x1

    new-instance v12, Lorg/apache/commons/compress/archivers/zip/g;

    invoke-direct {v12, v8}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x4

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lorg/apache/poi/poifs/crypt/EncryptionMode;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;III)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    new-instance v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const-string/jumbo v17, "standard"

    const/16 v18, 0x2

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/h;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    const/16 v20, 0x4

    const/16 v21, 0x2

    const/16 v22, 0x24

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v22}, Lorg/apache/poi/poifs/crypt/EncryptionMode;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;III)V

    sput-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    new-instance v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const-string v9, "agile"

    const/4 v10, 0x3

    new-instance v11, Lorg/apache/commons/compress/archivers/zip/i;

    invoke-direct {v11, v3}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    const/4 v12, 0x4

    const/16 v14, 0x40

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/poifs/crypt/EncryptionMode;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;III)V

    sput-object v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    new-instance v4, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const-string/jumbo v16, "xor"

    const/16 v17, 0x4

    new-instance v5, Lorg/apache/commons/compress/archivers/zip/g;

    invoke-direct {v5, v3}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v4

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/poifs/crypt/EncryptionMode;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;III)V

    sput-object v4, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    filled-new-array {v7, v0, v1, v2, v4}, [Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/EncryptionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/function/Supplier;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->builder:Ljava/util/function/Supplier;

    iput p4, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    iput p5, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    iput p6, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->encryptionFlags:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/EncryptionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/EncryptionMode;

    return-object v0
.end method
