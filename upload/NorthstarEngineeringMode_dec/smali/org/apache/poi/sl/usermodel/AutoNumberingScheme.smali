.class public final enum Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field private static final ALPHA_LIST:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field private static final ARABIC_LIST:Ljava/lang/String; = "0123456789"

.field private static final CIRCLE_DB_LIST:Ljava/lang/String; = "\u2776\u2777\u2778\u2779\u277a\u277b\u277c\u277d\u277e"

.field private static final WINGDINGS_BLACK_LIST:Ljava/lang/String; = "\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094"

.field private static final WINGDINGS_WHITE_LIST:Ljava/lang/String; = "\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089"

.field public static final enum alphaLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabic1Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabic2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum circleNumDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum circleNumWdBlackPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum circleNumWdWhitePlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChsPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChsPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChtPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChtPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1JpnChsDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1JpnKorPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1JpnKorPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hebrew2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiAlpha1Period:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiAlphaParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiAlphaParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiNumParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method static constructor <clinit>()V
    .locals 46

    new-instance v1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v0, v1

    const-string v2, "alphaLcParenBoth"

    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v9, v6}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v2, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v1, v2

    const-string v3, "alphaUcParenBoth"

    const/16 v11, 0xa

    const/4 v8, 0x2

    invoke-direct {v2, v3, v6, v11, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v2, v3

    const-string v4, "alphaLcParenRight"

    const/16 v10, 0x9

    const/4 v12, 0x3

    invoke-direct {v3, v4, v8, v10, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v4, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v3, v4

    const-string v5, "alphaUcParenRight"

    const/16 v13, 0xb

    const/4 v14, 0x4

    invoke-direct {v4, v5, v12, v13, v14}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v4, v5

    const-string v7, "alphaLcPeriod"

    const/4 v15, 0x0

    const/4 v13, 0x5

    invoke-direct {v5, v7, v14, v15, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v7, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v5, v7

    const-string v15, "alphaUcPeriod"

    const/4 v14, 0x6

    invoke-direct {v7, v15, v13, v6, v14}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v7, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v6, v7

    const-string v15, "arabicParenBoth"

    const/16 v13, 0xc

    const/4 v11, 0x7

    invoke-direct {v7, v15, v14, v13, v11}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v15, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v7, v15

    const-string v14, "arabicParenRight"

    invoke-direct {v15, v14, v11, v8, v9}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v14, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v8, v14

    const-string v15, "arabicPeriod"

    invoke-direct {v14, v15, v9, v12, v10}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v9, v12

    const-string v14, "arabicPlain"

    const/16 v15, 0xd

    const/16 v11, 0xa

    invoke-direct {v12, v14, v10, v15, v11}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v10, v12

    const-string/jumbo v14, "romanLcParenBoth"

    const/4 v13, 0x4

    const/16 v15, 0xb

    invoke-direct {v12, v14, v11, v13, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/4 v14, 0x7

    move-object v11, v12

    const-string/jumbo v13, "romanUcParenBoth"

    move-object/from16 v41, v0

    const/16 v0, 0xe

    const/16 v14, 0xc

    invoke-direct {v12, v13, v15, v0, v14}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v13, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v12, v13

    const-string/jumbo v15, "romanLcParenRight"

    move-object/from16 v42, v1

    const/4 v0, 0x5

    const/16 v1, 0xd

    invoke-direct {v13, v15, v14, v0, v1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object v13, v0

    const-string/jumbo v14, "romanUcParenRight"

    const/16 v15, 0xf

    move-object/from16 v43, v2

    const/16 v2, 0xe

    invoke-direct {v0, v14, v1, v15, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/4 v1, 0x6

    move-object v14, v0

    move-object/from16 v44, v3

    const-string/jumbo v3, "romanLcPeriod"

    invoke-direct {v0, v3, v2, v1, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move v1, v15

    move-object v15, v0

    const-string/jumbo v2, "romanUcPeriod"

    const/16 v3, 0x10

    move-object/from16 v45, v4

    const/4 v4, 0x7

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v16, v0

    const-string v1, "circleNumDbPlain"

    const/16 v2, 0x12

    const/16 v4, 0x11

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->circleNumDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v17, v0

    const-string v1, "circleNumWdBlackPlain"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->circleNumWdBlackPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v18, v0

    const-string v1, "circleNumWdWhitePlain"

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v4, v4}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->circleNumWdWhitePlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v19, v0

    const-string v1, "arabicDbPeriod"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v20, v0

    const/16 v1, 0x1c

    const/16 v4, 0x15

    const-string v2, "arabicDbPlain"

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const/16 v2, 0x16

    const-string v4, "ea1ChsPeriod"

    const/16 v3, 0x11

    invoke-direct {v0, v4, v1, v3, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChsPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const/16 v2, 0x17

    const-string v3, "ea1ChsPlain"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChsPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v23, v0

    const/16 v1, 0x15

    const/16 v2, 0x18

    const-string v3, "ea1ChtPeriod"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChtPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const/16 v2, 0x19

    const-string v3, "ea1ChtPlain"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChtPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v25, v0

    const/16 v1, 0x26

    const/16 v2, 0x1a

    const-string v3, "ea1JpnChsDbPeriod"

    const/16 v4, 0x19

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1JpnChsDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const/16 v2, 0x1b

    const-string v3, "ea1JpnKorPlain"

    const/16 v4, 0x1a

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1JpnKorPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const/16 v2, 0x1c

    const-string v3, "ea1JpnKorPeriod"

    const/16 v4, 0x1b

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1JpnKorPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const/16 v2, 0x17

    const-string v3, "arabic1Minus"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabic1Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v29, v0

    const/16 v1, 0x18

    const/16 v2, 0x1e

    const-string v3, "arabic2Minus"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabic2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v30, v0

    const/16 v1, 0x19

    const/16 v2, 0x1f

    const-string v3, "hebrew2Minus"

    const/16 v4, 0x1e

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hebrew2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v31, v0

    const/16 v1, 0x1e

    const/16 v2, 0x20

    const-string/jumbo v3, "thaiAlphaPeriod"

    const/16 v4, 0x1f

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v32, v0

    const/16 v1, 0x1f

    const/16 v2, 0x21

    const-string/jumbo v3, "thaiAlphaParenRight"

    const/16 v4, 0x20

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiAlphaParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v33, v0

    const/16 v1, 0x20

    const/16 v2, 0x22

    const-string/jumbo v3, "thaiAlphaParenBoth"

    const/16 v4, 0x21

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiAlphaParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v34, v0

    const/16 v1, 0x21

    const/16 v2, 0x23

    const-string/jumbo v3, "thaiNumPeriod"

    const/16 v4, 0x22

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v35, v0

    const/16 v1, 0x22

    const/16 v2, 0x24

    const-string/jumbo v3, "thaiNumParenRight"

    const/16 v4, 0x23

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v36, v0

    const/16 v1, 0x23

    const/16 v2, 0x25

    const-string/jumbo v3, "thaiNumParenBoth"

    const/16 v4, 0x24

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiNumParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v37, v0

    const/16 v1, 0x24

    const/16 v2, 0x26

    const-string v3, "hindiAlphaPeriod"

    const/16 v4, 0x25

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v38, v0

    const-string v1, "hindiNumPeriod"

    const/16 v3, 0x25

    const/16 v4, 0x27

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v39, v0

    const-string v1, "hindiNumParenRight"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v40, v0

    const/16 v1, 0x28

    const/16 v2, 0x29

    const-string v3, "hindiAlpha1Period"

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiAlpha1Period:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    move-object/from16 v4, v45

    filled-new-array/range {v0 .. v40}, [Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->$VALUES:[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ooxmlId:I

    return-void
.end method

.method private static addIndexedChar(ILjava/lang/String;ZLjava/lang/StringBuilder;)V
    .locals 2

    if-eqz p2, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p0, v0, :cond_1

    div-int v1, p0, v0

    invoke-static {v1, p1, p2, p3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->addIndexedChar(ILjava/lang/String;ZLjava/lang/StringBuilder;)V

    :cond_1
    rem-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static forNativeID(I)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->values()[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forOoxmlID(I)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->values()[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private formatCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "lc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v1, "uc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private formatIndex(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "roman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatRomanIndex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "arabic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string p0, "db"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0123456789"

    invoke-static {p1, p0, v1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "alpha"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    const-string p0, "abcdefghijklmnopqrstuvwxyz"

    invoke-static {p1, p0, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string/jumbo p0, "wdwhite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/16 v3, 0xa

    if-eqz p0, :cond_4

    if-ne p1, v3, :cond_3

    const-string/jumbo p0, "\u008a"

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089"

    invoke-static {p1, p0, v1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    const-string/jumbo p0, "wdblack"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-ne p1, v3, :cond_5

    const-string/jumbo p0, "\u0095"

    goto :goto_1

    :cond_5
    const-string/jumbo p0, "\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094"

    invoke-static {p1, p0, v1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_6
    const-string p0, "numdb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    if-ne p1, v3, :cond_7

    const-string/jumbo p0, "\u277f"

    goto :goto_2

    :cond_7
    const-string/jumbo p0, "\u2776\u2777\u2778\u2779\u277a\u277b\u277c\u277d\u277e"

    invoke-static {p1, p0, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_8
    const-string p0, "?"

    return-object p0
.end method

.method private formatRomanIndex(I)Ljava/lang/String;
    .locals 14

    const/16 p0, 0xd

    new-array v0, p0, [I

    fill-array-data v0, :array_0

    const-string v1, "M"

    const-string v2, "CM"

    const-string v3, "D"

    const-string v4, "CD"

    const-string v5, "C"

    const-string v6, "XC"

    const-string v7, "L"

    const-string v8, "XL"

    const-string v9, "X"

    const-string v10, "IX"

    const-string v11, "V"

    const-string v12, "IV"

    const-string v13, "I"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    new-array v3, v2, [[Ljava/lang/String;

    const-string v4, "XLV"

    const-string v5, "VL"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "XCV"

    const-string v6, "VC"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "CDL"

    const-string v7, "LD"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "CML"

    const-string v7, "LM"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "CMVC"

    const-string v7, "LMVL"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    const-string v4, "LDXL"

    const-string v8, "CDXC"

    filled-new-array {v8, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v3, v9

    const-string v4, "LDVL"

    const-string v9, "CDVC"

    filled-new-array {v9, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x6

    aput-object v4, v3, v10

    const-string v4, "LMXL"

    const-string v10, "CMXC"

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x7

    aput-object v4, v3, v11

    const-string v4, "VCIV"

    const-string v11, "XCIX"

    filled-new-array {v11, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0x8

    aput-object v4, v3, v12

    const-string v4, "VLIV"

    const-string v12, "XLIX"

    filled-new-array {v12, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x9

    aput-object v4, v3, v13

    const-string v4, "IL"

    filled-new-array {v12, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0xa

    aput-object v4, v3, v12

    const-string v4, "IC"

    filled-new-array {v11, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v11, 0xb

    aput-object v4, v3, v11

    const-string v4, "XD"

    filled-new-array {v8, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0xc

    aput-object v4, v3, v8

    const-string v4, "XDV"

    filled-new-array {v9, v4}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, p0

    const-string v8, "CDIC"

    const-string v9, "XDIX"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0xe

    aput-object v8, v3, v11

    const-string v8, "XMV"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xf

    aput-object v7, v3, v11

    const-string v7, "CMIC"

    const-string v11, "XMIX"

    filled-new-array {v7, v11}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x10

    aput-object v7, v3, v12

    const-string v7, "XM"

    filled-new-array {v10, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x11

    aput-object v7, v3, v10

    const-string v7, "VD"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x12

    aput-object v4, v3, v7

    const-string v4, "VDIV"

    filled-new-array {v9, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x13

    aput-object v7, v3, v9

    const-string v7, "VM"

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x14

    aput-object v7, v3, v8

    const-string v7, "VMIV"

    filled-new-array {v11, v7}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x15

    aput-object v8, v3, v9

    const-string v8, "ID"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x16

    aput-object v4, v3, v8

    const-string v4, "IM"

    filled-new-array {v7, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x17

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v5

    :goto_0
    if-ge v7, p0, :cond_1

    :goto_1
    aget v8, v0, v7

    if-lt p1, v8, :cond_0

    sub-int/2addr p1, v8

    aget-object v8, v1, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move p1, v5

    :goto_2
    if-ge p1, v2, :cond_2

    aget-object v0, v3, p1

    aget-object v1, v0, v5

    aget-object v0, v0, v6

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-object p0

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method private formatSeperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "plain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string/jumbo v0, "parenright"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ")"

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo v0, "parenboth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "("

    invoke-static {p0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string/jumbo v0, "period"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "."

    invoke-static {p1, p0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "minus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "-"

    invoke-static {p1, p0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p1
.end method

.method private static getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->addIndexedChar(ILjava/lang/String;ZLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->$VALUES:[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-object v0
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatIndex(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatSeperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme$1;->$SwitchMap$org$apache$poi$sl$usermodel$AutoNumberingScheme:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-string v0, "Hindi alphabetic character followed by a period."

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown Numbered Scheme"

    return-object p0

    :pswitch_0
    return-object v0

    :pswitch_1
    const-string p0, "Hindi numeric character followed by a closing parenthesis."

    return-object p0

    :pswitch_2
    const-string p0, "Japanese with double-byte period."

    return-object p0

    :pswitch_3
    const-string p0, "Hindi numeric character followed by a period."

    return-object p0

    :pswitch_4
    return-object v0

    :pswitch_5
    const-string p0, "Thai numeral enclosed in parentheses."

    return-object p0

    :pswitch_6
    const-string p0, "Thai numeral followed by a closing parenthesis."

    return-object p0

    :pswitch_7
    const-string p0, "Thai numeral followed by a period."

    return-object p0

    :pswitch_8
    const-string p0, "Thai alphabetic character enclosed by parentheses."

    return-object p0

    :pswitch_9
    const-string p0, "Thai alphabetic character followed by a closing parenthesis."

    return-object p0

    :pswitch_a
    const-string p0, "Thai alphabetic character followed by a period."

    return-object p0

    :pswitch_b
    const-string p0, "Double-byte Arabic numbers with double-byte period."

    return-object p0

    :pswitch_c
    const-string p0, "Double-byte Arabic numbers."

    return-object p0

    :pswitch_d
    const-string p0, "Japanese/Korean with single-byte period."

    return-object p0

    :pswitch_e
    const-string p0, "Japanese/Korean."

    return-object p0

    :pswitch_f
    const-string p0, "Bidi Hebrew 2 with ANSI minus symbol."

    return-object p0

    :pswitch_10
    const-string p0, "Bidi Arabic 2 (AraAbjad) with ANSI minus symbol."

    return-object p0

    :pswitch_11
    const-string p0, "Bidi Arabic 1 (AraAlpha) with ANSI minus symbol."

    return-object p0

    :pswitch_12
    const-string p0, "Traditional Chinese with single-byte period."

    return-object p0

    :pswitch_13
    const-string p0, "Traditional Chinese."

    return-object p0

    :pswitch_14
    const-string p0, "Wingdings black circle numbers."

    return-object p0

    :pswitch_15
    const-string p0, "Wingdings white circle numbers."

    return-object p0

    :pswitch_16
    const-string p0, "Double byte circle numbers."

    return-object p0

    :pswitch_17
    const-string p0, "Simplified Chinese with single-byte period."

    return-object p0

    :pswitch_18
    const-string p0, "Simplified Chinese."

    return-object p0

    :pswitch_19
    const-string p0, "Uppercase Roman numeral followed by a closing parenthesis. Example: I), II), III), ..."

    return-object p0

    :pswitch_1a
    const-string p0, "Uppercase Roman numeral enclosed in parentheses. Example: (I), (II), (III), ..."

    return-object p0

    :pswitch_1b
    const-string p0, "Arabic numeral. Example: 1, 2, 3, ..."

    return-object p0

    :pswitch_1c
    const-string p0, "Arabic numeral enclosed in parentheses. Example: (1), (2), (3), ..."

    return-object p0

    :pswitch_1d
    const-string p0, "Uppercase alphabetic character followed by a closing parenthesis. Example: A), B), C), ..."

    return-object p0

    :pswitch_1e
    const-string p0, "Uppercase alphabetic character enclosed in parentheses. Example: (A), (B), (C), ..."

    return-object p0

    :pswitch_1f
    const-string p0, "Lowercase alphabetic character followed by a closing parenthesis. Example: a), b), c), ..."

    return-object p0

    :pswitch_20
    const-string p0, "Lowercase alphabetic character enclosed in parentheses. Example: (a), (b), (c), ..."

    return-object p0

    :pswitch_21
    const-string p0, "Uppercase Roman numeral followed by a period. Example: I., II., III., ..."

    return-object p0

    :pswitch_22
    const-string p0, "Lowercase Roman numeral followed by a period. Example: i., ii., iii., ..."

    return-object p0

    :pswitch_23
    const-string p0, "Lowercase Roman numeral followed by a closing parenthesis. Example: i), ii), iii), ..."

    return-object p0

    :pswitch_24
    const-string p0, "Lowercase Roman numeral enclosed in parentheses. Example: (i), (ii), (iii), ..."

    return-object p0

    :pswitch_25
    const-string p0, "Arabic numeral followed by a period. Example: 1., 2., 3., ..."

    return-object p0

    :pswitch_26
    const-string p0, "Arabic numeral followed by a closing parenthesis. Example: 1), 2), 3), ..."

    return-object p0

    :pswitch_27
    const-string p0, "Uppercase Latin character followed by a period. Example: A., B., C., ..."

    return-object p0

    :pswitch_28
    const-string p0, "Lowercase Latin character followed by a period. Example: a., b., c., ..."

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
