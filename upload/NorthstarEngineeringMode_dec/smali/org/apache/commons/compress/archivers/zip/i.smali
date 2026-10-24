.class public final synthetic Lorg/apache/commons/compress/archivers/zip/i;
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

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/i;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/i;->a:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lm5/f;->g:Ljava/lang/ThreadLocal;

    new-instance p0, Ljava/lang/ref/SoftReference;

    new-instance v0, Lm5/f;

    const v1, 0x8000

    invoke-direct {v0, v1}, Lm5/f;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    return-object p0

    :pswitch_3
    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDggRecord;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>()V

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
    new-instance p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;-><init>()V

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>()V

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    return-object p0

    :pswitch_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    return-object p0

    :pswitch_13
    new-instance p0, Lg5/n;

    const-string v1, "log4j2.component.properties"

    invoke-direct {p0, v1, v0}, Lg5/n;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_14
    sget-object p0, Li4/c;->c:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/b0;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/b0;-><init>()V

    return-object p0

    :pswitch_16
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/v;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/v;-><init>()V

    return-object p0

    :pswitch_17
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/h0;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/h0;-><init>()V

    return-object p0

    :pswitch_18
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/f0;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/f0;->Z:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/p;-><init>(Lorg/apache/commons/compress/archivers/zip/d1;)V

    return-object p0

    nop

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
