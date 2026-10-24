.class public final Lorg/apache/poi/openxml4j/opc/ContentTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CORE_PROPERTIES_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.core-properties+xml"

.field public static final CUSTOM_XML_PART:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.customXmlProperties+xml"

.field public static final DIGITAL_SIGNATURE_CERTIFICATE_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.digital-signature-certificate"

.field public static final DIGITAL_SIGNATURE_ORIGIN_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.digital-signature-origin"

.field public static final DIGITAL_SIGNATURE_XML_SIGNATURE_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.digital-signature-xmlsignature+xml"

.field public static final EXTENSION_GIF:Ljava/lang/String; = "gif"

.field public static final EXTENSION_JPG_1:Ljava/lang/String; = "jpg"

.field public static final EXTENSION_JPG_2:Ljava/lang/String; = "jpeg"

.field public static final EXTENSION_PICT:Ljava/lang/String; = "pict"

.field public static final EXTENSION_PNG:Ljava/lang/String; = "png"

.field public static final EXTENSION_TIFF:Ljava/lang/String; = "tiff"

.field public static final EXTENSION_XML:Ljava/lang/String; = "xml"

.field public static final IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field public static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final IMAGE_PICT:Ljava/lang/String; = "image/x-pict"

.field public static final IMAGE_PNG:Ljava/lang/String; = "image/png"

.field public static final IMAGE_TIFF:Ljava/lang/String; = "image/tiff"

.field public static final PLAIN_OLD_XML:Ljava/lang/String; = "application/xml"

.field public static final RELATIONSHIPS_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.relationships+xml"

.field public static final XML:Ljava/lang/String; = "text/xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v1, v2

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "tiff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "pict"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :sswitch_6
    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "image/tiff"

    return-object p0

    :pswitch_1
    const-string p0, "image/x-pict"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "text/xml"

    return-object p0

    :pswitch_3
    const-string p0, "image/png"

    return-object p0

    :pswitch_4
    const-string p0, "image/jpeg"

    return-object p0

    :pswitch_5
    const-string p0, "image/gif"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18fc4 -> :sswitch_6
        0x19be1 -> :sswitch_5
        0x1b229 -> :sswitch_4
        0x1d017 -> :sswitch_3
        0x31e068 -> :sswitch_2
        0x34802a -> :sswitch_1
        0x3651f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
