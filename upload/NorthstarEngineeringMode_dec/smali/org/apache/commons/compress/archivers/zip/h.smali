.class public final synthetic Lorg/apache/commons/compress/archivers/zip/h;
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

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/h;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/h;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;-><init>()V

    return-object p0

    :pswitch_3
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->a()Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory;->g()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDgRecord;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/ddf/EscherTertiaryOptRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherTertiaryOptRecord;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;-><init>()V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;-><init>()V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    return-object p0

    :pswitch_f
    sget-object p0, Lc5/i;->b1:Lf5/d;

    new-instance p0, Lc5/i$a;

    invoke-direct {p0}, Lc5/i$a;-><init>()V

    return-object p0

    :pswitch_10
    sget-object p0, Li4/c;->a:[B

    const/16 p0, 0x2000

    new-array p0, p0, [C

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/d0;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/d0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/p;-><init>(Lorg/apache/commons/compress/archivers/zip/d1;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/j0;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/j0;-><init>()V

    return-object p0

    :pswitch_13
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_14
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/r;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/r;-><init>()V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/e0;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/e0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/p;-><init>(Lorg/apache/commons/compress/archivers/zip/d1;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
