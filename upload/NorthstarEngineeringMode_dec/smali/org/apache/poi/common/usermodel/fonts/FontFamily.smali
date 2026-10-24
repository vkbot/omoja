.class public final enum Lorg/apache/poi/common/usermodel/fonts/FontFamily;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/fonts/FontFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontFamily;

.field public static final enum FF_DECORATIVE:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

.field public static final enum FF_DONTCARE:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

.field public static final enum FF_MODERN:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

.field public static final enum FF_ROMAN:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

.field public static final enum FF_SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

.field public static final enum FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;


# instance fields
.field private nativeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    const-string v1, "FF_DONTCARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_DONTCARE:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    const-string v2, "FF_ROMAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_ROMAN:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    const-string v3, "FF_SWISS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    const-string v4, "FF_MODERN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_MODERN:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    new-instance v4, Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    const-string v5, "FF_SCRIPT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    const-string v6, "FF_DECORATIVE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_DECORATIVE:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->nativeId:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->values()[Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0
.end method

.method public static valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 0

    ushr-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object p0

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/fonts/FontFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->nativeId:I

    return p0
.end method
