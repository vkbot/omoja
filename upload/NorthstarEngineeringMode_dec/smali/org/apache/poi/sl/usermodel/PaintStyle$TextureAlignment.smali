.class public final enum Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

.field public static final enum BOTTOM:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

.field public static final enum BOTTOM_LEFT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

.field public static final enum BOTTOM_RIGHT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

.field public static final enum CENTER:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

.field public static final enum LEFT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

.field public static final enum RIGHT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

.field public static final enum TOP:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

.field public static final enum TOP_LEFT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

.field public static final enum TOP_RIGHT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;


# instance fields
.field private final ooxmlId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    const/4 v1, 0x0

    const-string v2, "b"

    const-string v3, "BOTTOM"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->BOTTOM:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    new-instance v1, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    const/4 v2, 0x1

    const-string v3, "bl"

    const-string v4, "BOTTOM_LEFT"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->BOTTOM_LEFT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    new-instance v2, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    const/4 v3, 0x2

    const-string v4, "br"

    const-string v5, "BOTTOM_RIGHT"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->BOTTOM_RIGHT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    new-instance v3, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    const/4 v4, 0x3

    const-string v5, "ctr"

    const-string v6, "CENTER"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->CENTER:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    new-instance v4, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    const/4 v5, 0x4

    const-string v6, "l"

    const-string v7, "LEFT"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->LEFT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    new-instance v5, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    const/4 v6, 0x5

    const-string/jumbo v7, "r"

    const-string v8, "RIGHT"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->RIGHT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    new-instance v6, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    const/4 v7, 0x6

    const-string/jumbo v8, "t"

    const-string v9, "TOP"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->TOP:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    new-instance v7, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    const/4 v8, 0x7

    const-string/jumbo v9, "tl"

    const-string v10, "TOP_LEFT"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->TOP_LEFT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    new-instance v8, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    const/16 v9, 0x8

    const-string/jumbo v10, "tr"

    const-string v11, "TOP_RIGHT"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->TOP_RIGHT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    filled-new-array/range {v0 .. v8}, [Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->$VALUES:[Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->ooxmlId:Ljava/lang/String;

    return-void
.end method

.method public static fromOoxmlId(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->values()[Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->ooxmlId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->$VALUES:[Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    return-object v0
.end method
