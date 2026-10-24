.class public final enum Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherColorRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SysIndexSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum CURRENT_OR_LAST_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_OR_LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_OR_FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum SHADOW_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v1, 0x0

    const/16 v2, 0xf0

    const-string v3, "FILL_COLOR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v1, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v2, 0x1

    const/16 v3, 0xf1

    const-string v4, "LINE_OR_FILL_COLOR"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_OR_FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v3, 0x2

    const/16 v4, 0xf2

    const-string v5, "LINE_COLOR"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v3, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v4, 0x3

    const/16 v5, 0xf3

    const-string v6, "SHADOW_COLOR"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->SHADOW_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v4, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v5, 0x4

    const/16 v6, 0xf4

    const-string v7, "CURRENT_OR_LAST_COLOR"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->CURRENT_OR_LAST_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v5, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v6, 0x5

    const/16 v7, 0xf5

    const-string v8, "FILL_BACKGROUND_COLOR"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v7, 0x6

    const/16 v8, 0xf6

    const-string v9, "LINE_BACKGROUND_COLOR"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v7, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v8, 0x7

    const/16 v9, 0xf7

    const-string v10, "FILL_OR_LINE_COLOR"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_OR_LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

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

    iput p3, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->value:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 1

    const-class v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    invoke-virtual {v0}, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-object v0
.end method
