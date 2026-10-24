.class public final synthetic Lorg/apache/commons/compress/archivers/zip/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/g;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/g;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lm5/z0;->z:Le5/g;

    new-instance p0, Ljava/lang/ref/SoftReference;

    new-instance v0, Lm5/z0$i;

    invoke-direct {v0}, Lm5/z0$i;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    return-object p0

    :pswitch_1
    invoke-static {}, Lorg/apache/poi/ss/usermodel/DateUtil;->b()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->k()Ljava/lang/IllegalStateException;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;-><init>()V

    return-object p0

    :pswitch_4
    invoke-static {}, Lorg/apache/poi/poifs/crypt/Encryptor;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionInfoBuilder;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionInfoBuilder;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;-><init>()V

    return-object p0

    :pswitch_7
    invoke-static {}, Lorg/apache/poi/poifs/crypt/Decryptor;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lorg/apache/poi/hssf/record/IndexRecord;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;-><init>()V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>()V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>()V

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;-><init>()V

    return-object p0

    :pswitch_12
    new-instance p0, Lb5/a;

    invoke-direct {p0}, Lb5/a;-><init>()V

    return-object p0

    :pswitch_13
    sget-object p0, Li4/c;->a:[B

    const/16 p0, 0x2000

    new-array p0, p0, [B

    return-object p0

    :pswitch_14
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/c0;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/c0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/p;-><init>(Lorg/apache/commons/compress/archivers/zip/d1;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/u;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/u;-><init>()V

    return-object p0

    :pswitch_16
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/i0;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/i0;-><init>()V

    return-object p0

    :pswitch_17
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/g0;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/g0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/p;-><init>(Lorg/apache/commons/compress/archivers/zip/d1;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/b;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/b;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
