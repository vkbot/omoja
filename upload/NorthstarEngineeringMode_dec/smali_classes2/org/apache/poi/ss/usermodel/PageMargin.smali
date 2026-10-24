.class public final enum Lorg/apache/poi/ss/usermodel/PageMargin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/PageMargin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/PageMargin;

.field public static final enum BOTTOM:Lorg/apache/poi/ss/usermodel/PageMargin;

.field public static final enum FOOTER:Lorg/apache/poi/ss/usermodel/PageMargin;

.field public static final enum HEADER:Lorg/apache/poi/ss/usermodel/PageMargin;

.field public static final enum LEFT:Lorg/apache/poi/ss/usermodel/PageMargin;

.field private static final PAGE_MARGIN_BY_LEGACY_API_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lorg/apache/poi/ss/usermodel/PageMargin;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum RIGHT:Lorg/apache/poi/ss/usermodel/PageMargin;

.field public static final enum TOP:Lorg/apache/poi/ss/usermodel/PageMargin;


# instance fields
.field private final legacyApiValue:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/ss/usermodel/PageMargin;

    const-string v1, "LEFT"

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v6}, Lorg/apache/poi/ss/usermodel/PageMargin;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PageMargin;->LEFT:Lorg/apache/poi/ss/usermodel/PageMargin;

    new-instance v1, Lorg/apache/poi/ss/usermodel/PageMargin;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/ss/usermodel/PageMargin;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/PageMargin;->RIGHT:Lorg/apache/poi/ss/usermodel/PageMargin;

    new-instance v2, Lorg/apache/poi/ss/usermodel/PageMargin;

    const-string v3, "TOP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/ss/usermodel/PageMargin;-><init>(Ljava/lang/String;IS)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/PageMargin;->TOP:Lorg/apache/poi/ss/usermodel/PageMargin;

    new-instance v3, Lorg/apache/poi/ss/usermodel/PageMargin;

    const-string v4, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/ss/usermodel/PageMargin;-><init>(Ljava/lang/String;IS)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/PageMargin;->BOTTOM:Lorg/apache/poi/ss/usermodel/PageMargin;

    new-instance v4, Lorg/apache/poi/ss/usermodel/PageMargin;

    const-string v5, "HEADER"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v7}, Lorg/apache/poi/ss/usermodel/PageMargin;-><init>(Ljava/lang/String;IS)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/PageMargin;->HEADER:Lorg/apache/poi/ss/usermodel/PageMargin;

    new-instance v5, Lorg/apache/poi/ss/usermodel/PageMargin;

    const-string v7, "FOOTER"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v8}, Lorg/apache/poi/ss/usermodel/PageMargin;-><init>(Ljava/lang/String;IS)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/PageMargin;->FOOTER:Lorg/apache/poi/ss/usermodel/PageMargin;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/ss/usermodel/PageMargin;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/PageMargin;->$VALUES:[Lorg/apache/poi/ss/usermodel/PageMargin;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PageMargin;->PAGE_MARGIN_BY_LEGACY_API_VALUE:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/ss/usermodel/PageMargin;->values()[Lorg/apache/poi/ss/usermodel/PageMargin;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v2, v0, v6

    sget-object v3, Lorg/apache/poi/ss/usermodel/PageMargin;->PAGE_MARGIN_BY_LEGACY_API_VALUE:Ljava/util/Map;

    iget-short v4, v2, Lorg/apache/poi/ss/usermodel/PageMargin;->legacyApiValue:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lorg/apache/poi/ss/usermodel/PageMargin;->legacyApiValue:S

    return-void
.end method

.method public static getByShortValue(S)Lorg/apache/poi/ss/usermodel/PageMargin;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/PageMargin;->PAGE_MARGIN_BY_LEGACY_API_VALUE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/PageMargin;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/PageMargin;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/PageMargin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/PageMargin;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/PageMargin;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/PageMargin;->$VALUES:[Lorg/apache/poi/ss/usermodel/PageMargin;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/PageMargin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/PageMargin;

    return-object v0
.end method


# virtual methods
.method public getLegacyApiValue()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ss/usermodel/PageMargin;->legacyApiValue:S

    return p0
.end method
