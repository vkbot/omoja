.class public final enum Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/usermodel/fonts/FontHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanoseXHeight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

.field public static final enum ANY:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

.field public static final enum CONSTANT_LARGE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

.field public static final enum CONSTANT_SMALL:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

.field public static final enum CONSTANT_STD:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

.field public static final enum DUCKING_LARGE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

.field public static final enum DUCKING_SMALL:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

.field public static final enum DUCKING_STD:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

.field public static final enum NO_FIT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->ANY:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    const-string v2, "NO_FIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->NO_FIT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    const-string v3, "CONSTANT_SMALL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->CONSTANT_SMALL:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    const-string v4, "CONSTANT_STD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->CONSTANT_STD:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    new-instance v4, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    const-string v5, "CONSTANT_LARGE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->CONSTANT_LARGE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    const-string v6, "DUCKING_SMALL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->DUCKING_SMALL:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    const-string v7, "DUCKING_STD"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->DUCKING_STD:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    new-instance v7, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    const-string v8, "DUCKING_LARGE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->DUCKING_LARGE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    return-object v0
.end method
