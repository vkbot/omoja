.class public final enum Lorg/apache/poi/sl/usermodel/RectAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/RectAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum BOTTOM:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum BOTTOM_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum BOTTOM_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum TOP:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum TOP_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum TOP_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;


# instance fields
.field private final dir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v1, 0x0

    const-string/jumbo v2, "tl"

    const-string v3, "TOP_LEFT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->TOP_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v1, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v2, 0x1

    const-string/jumbo v3, "t"

    const-string v4, "TOP"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/RectAlign;->TOP:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v2, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v3, 0x2

    const-string/jumbo v4, "tr"

    const-string v5, "TOP_RIGHT"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/RectAlign;->TOP_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v3, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v4, 0x3

    const-string v5, "l"

    const-string v6, "LEFT"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/RectAlign;->LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v4, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v5, 0x4

    const-string v6, "ctr"

    const-string v7, "CENTER"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/RectAlign;->CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v5, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v6, 0x5

    const-string/jumbo v7, "r"

    const-string v8, "RIGHT"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/RectAlign;->RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v6, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v7, 0x6

    const-string v8, "bl"

    const-string v9, "BOTTOM_LEFT"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/RectAlign;->BOTTOM_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v7, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v8, 0x7

    const-string v9, "b"

    const-string v10, "BOTTOM"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/RectAlign;->BOTTOM:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v8, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/16 v9, 0x8

    const-string v10, "br"

    const-string v11, "BOTTOM_RIGHT"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/RectAlign;->BOTTOM_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

    filled-new-array/range {v0 .. v8}, [Lorg/apache/poi/sl/usermodel/RectAlign;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/RectAlign;

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

    iput-object p3, p0, Lorg/apache/poi/sl/usermodel/RectAlign;->dir:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/RectAlign;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/RectAlign;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/RectAlign;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/RectAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/RectAlign;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/RectAlign;->dir:Ljava/lang/String;

    return-object p0
.end method
