.class public final enum Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/model/ThemesTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum ACCENT1:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum ACCENT2:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum ACCENT3:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum ACCENT4:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum ACCENT5:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum ACCENT6:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum DK1:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum DK2:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum FOLHLINK:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum HLINK:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum LT1:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum LT2:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

.field public static final enum UNKNOWN:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;


# instance fields
.field public final idx:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/4 v1, 0x0

    const-string v2, "Lt1"

    const-string v3, "LT1"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->LT1:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v1, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/4 v2, 0x1

    const-string v3, "Dk1"

    const-string v4, "DK1"

    invoke-direct {v1, v4, v2, v2, v3}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->DK1:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v2, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/4 v3, 0x2

    const-string v4, "Lt2"

    const-string v5, "LT2"

    invoke-direct {v2, v5, v3, v3, v4}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->LT2:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v3, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/4 v4, 0x3

    const-string v5, "Dk2"

    const-string v6, "DK2"

    invoke-direct {v3, v6, v4, v4, v5}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->DK2:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v4, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/4 v5, 0x4

    const-string v6, "Accent1"

    const-string v7, "ACCENT1"

    invoke-direct {v4, v7, v5, v5, v6}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->ACCENT1:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v5, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/4 v6, 0x5

    const-string v7, "Accent2"

    const-string v8, "ACCENT2"

    invoke-direct {v5, v8, v6, v6, v7}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->ACCENT2:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v6, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/4 v7, 0x6

    const-string v8, "Accent3"

    const-string v9, "ACCENT3"

    invoke-direct {v6, v9, v7, v7, v8}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->ACCENT3:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v7, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/4 v8, 0x7

    const-string v9, "Accent4"

    const-string v10, "ACCENT4"

    invoke-direct {v7, v10, v8, v8, v9}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->ACCENT4:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v8, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/16 v9, 0x8

    const-string v10, "Accent5"

    const-string v11, "ACCENT5"

    invoke-direct {v8, v11, v9, v9, v10}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->ACCENT5:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v9, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/16 v10, 0x9

    const-string v11, "Accent6"

    const-string v12, "ACCENT6"

    invoke-direct {v9, v12, v10, v10, v11}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->ACCENT6:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v10, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/16 v11, 0xa

    const-string v12, "Hlink"

    const-string v13, "HLINK"

    invoke-direct {v10, v13, v11, v11, v12}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->HLINK:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v11, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/16 v12, 0xb

    const-string v13, "FolHlink"

    const-string v14, "FOLHLINK"

    invoke-direct {v11, v14, v12, v12, v13}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->FOLHLINK:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    new-instance v12, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const-string v15, "UNKNOWN"

    move-object/from16 v16, v11

    const/16 v11, 0xc

    invoke-direct {v12, v15, v11, v13, v14}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->UNKNOWN:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    move-object/from16 v11, v16

    filled-new-array/range {v0 .. v12}, [Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->$VALUES:[Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->idx:I

    iput-object p4, p0, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->name:Ljava/lang/String;

    return-void
.end method

.method public static byId(I)Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;
    .locals 1

    invoke-static {}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->values()[Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->values()[Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->UNKNOWN:Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->$VALUES:[Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    invoke-virtual {v0}, [Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    return-object v0
.end method
