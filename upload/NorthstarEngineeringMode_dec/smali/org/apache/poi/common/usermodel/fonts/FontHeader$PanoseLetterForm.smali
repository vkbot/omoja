.class public final enum Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/usermodel/fonts/FontHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanoseLetterForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum ANY:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum NORMAL_BOXED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum NORMAL_CONTACT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum NORMAL_FLATTENED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum NORMAL_OFF_CENTER:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum NORMAL_ROUNDED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum NORMAL_SQUARE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum NORMAL_WEIGHTED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum NO_FIT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum OBLIQUE_BOXED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum OBLIQUE_CONTACT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum OBLIQUE_FLATTENED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum OBLIQUE_OFF_CENTER:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum OBLIQUE_ROUNDED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum OBLIQUE_SQUARE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

.field public static final enum OBLIQUE_WEIGHTED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->ANY:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v2, "NO_FIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->NO_FIT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v3, "NORMAL_CONTACT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->NORMAL_CONTACT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v4, "NORMAL_WEIGHTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->NORMAL_WEIGHTED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v4, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v5, "NORMAL_BOXED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->NORMAL_BOXED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v6, "NORMAL_FLATTENED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->NORMAL_FLATTENED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v7, "NORMAL_ROUNDED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->NORMAL_ROUNDED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v7, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v8, "NORMAL_OFF_CENTER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->NORMAL_OFF_CENTER:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v8, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v9, "NORMAL_SQUARE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->NORMAL_SQUARE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v9, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v10, "OBLIQUE_CONTACT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->OBLIQUE_CONTACT:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v10, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v11, "OBLIQUE_WEIGHTED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->OBLIQUE_WEIGHTED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v11, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v12, "OBLIQUE_BOXED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->OBLIQUE_BOXED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v12, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v13, "OBLIQUE_FLATTENED"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->OBLIQUE_FLATTENED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v13, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v14, "OBLIQUE_ROUNDED"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->OBLIQUE_ROUNDED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v14, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v15, "OBLIQUE_OFF_CENTER"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->OBLIQUE_OFF_CENTER:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    new-instance v15, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    const-string v13, "OBLIQUE_SQUARE"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->OBLIQUE_SQUARE:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    return-object v0
.end method
