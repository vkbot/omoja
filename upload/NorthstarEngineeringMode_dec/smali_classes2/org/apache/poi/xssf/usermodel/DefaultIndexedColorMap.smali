.class public Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultRGB(I)[B
    .locals 3

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/util/HSSFColor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aget-short p0, p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getRGB(I)[B
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;->getDefaultRGB(I)[B

    move-result-object p0

    return-object p0
.end method
