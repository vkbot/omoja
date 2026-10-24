.class public final enum Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/usermodel/fonts/FontHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanoseFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

.field public static final enum ANY:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

.field public static final enum DECORATIVE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

.field public static final enum NO_FIT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

.field public static final enum PICTORIAL:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

.field public static final enum SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

.field public static final enum TEXT_DISPLAY:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->ANY:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    const-string v2, "NO_FIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->NO_FIT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    const-string v3, "TEXT_DISPLAY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->TEXT_DISPLAY:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    const-string v4, "SCRIPT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    new-instance v4, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    const-string v5, "DECORATIVE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->DECORATIVE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    const-string v6, "PICTORIAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->PICTORIAL:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    return-object v0
.end method
