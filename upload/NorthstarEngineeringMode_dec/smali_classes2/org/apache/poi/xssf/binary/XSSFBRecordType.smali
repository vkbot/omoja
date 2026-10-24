.class public final enum Lorg/apache/poi/xssf/binary/XSSFBRecordType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xssf/binary/XSSFBRecordType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginHeaderFooter:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginSheet:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBundleSh:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellBlank:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellIsst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellRString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellReal:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellRk:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellSt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtColInfo:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCommentAuthor:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCommentText:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaNum:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtRowHdr:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtSstItem:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtWsDim:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtWsProp:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtXf:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field private static final TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/binary/XSSFBRecordType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Unimplemented:Lorg/apache/poi/xssf/binary/XSSFBRecordType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 46

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v0, v1

    const-string v2, "BrtCellBlank"

    const/4 v15, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v15, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellBlank:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v1, v2

    const-string v4, "BrtCellRk"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellRk:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v2, v3

    const-string v4, "BrtCellError"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v4, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v3, v4

    const-string v5, "BrtCellBool"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v4, v5

    const-string v6, "BrtCellReal"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellReal:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v5, v6

    const-string v7, "BrtCellSt"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellSt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v7, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v6, v7

    const-string v8, "BrtCellIsst"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellIsst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v8, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v7, v8

    const-string v9, "BrtFmlaString"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v9, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v8, v9

    const-string v10, "BrtFmlaNum"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaNum:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v10, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v9, v10

    const-string v11, "BrtFmlaBool"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v11, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v10, v11

    const-string v12, "BrtFmlaError"

    const/16 v14, 0xb

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v12, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v11, v12

    const-string v13, "BrtRowHdr"

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtRowHdr:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v13, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v12, v13

    const/16 v14, 0xc

    const/16 v15, 0x3e

    move-object/from16 v41, v0

    const-string v0, "BrtCellRString"

    invoke-direct {v13, v0, v14, v15}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellRString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v13, v0

    const/16 v14, 0xd

    const/16 v15, 0x81

    move-object/from16 v42, v1

    const-string v1, "BrtBeginSheet"

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginSheet:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object v14, v0

    const/16 v1, 0xe

    const/16 v15, 0x93

    move-object/from16 v43, v2

    const-string v2, "BrtWsProp"

    invoke-direct {v0, v2, v1, v15}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtWsProp:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v44, 0x0

    move-object v15, v0

    const/16 v1, 0xf

    const/16 v2, 0x94

    move-object/from16 v45, v3

    const-string v3, "BrtWsDim"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtWsDim:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const/16 v2, 0x3c

    const-string v3, "BrtColInfo"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtColInfo:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const/16 v2, 0x91

    const-string v3, "BrtBeginSheetData"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const/16 v2, 0x92

    const-string v3, "BrtEndSheetData"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v19, v0

    const/16 v1, 0x1ee

    const-string v2, "BrtHLink"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const/16 v2, 0x1df

    const-string v3, "BrtBeginHeaderFooter"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginHeaderFooter:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const/16 v2, 0x276

    const-string v3, "BrtBeginCommentAuthors"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const/16 v2, 0x277

    const-string v3, "BrtEndCommentAuthors"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const/16 v2, 0x278

    const-string v3, "BrtCommentAuthor"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCommentAuthor:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const/16 v2, 0x27b

    const-string v3, "BrtBeginComment"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const/16 v2, 0x27d

    const-string v3, "BrtCommentText"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCommentText:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const/16 v2, 0x27c

    const-string v3, "BrtEndComment"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const/16 v2, 0x2f

    const-string v3, "BrtXf"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtXf:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const/16 v2, 0x2c

    const-string v3, "BrtFmt"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const/16 v2, 0x267

    const-string v3, "BrtBeginFmts"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const/16 v2, 0x268

    const-string v3, "BrtEndFmts"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const/16 v2, 0x269

    const-string v3, "BrtBeginCellXFs"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const/16 v2, 0x26a

    const-string v3, "BrtEndCellXFs"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v33, v0

    const/16 v1, 0x21

    const/16 v2, 0x272

    const-string v3, "BrtBeginCellStyleXFS"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v34, v0

    const/16 v1, 0x22

    const/16 v2, 0x273

    const-string v3, "BrtEndCellStyleXFS"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v35, v0

    const-string v1, "BrtSstItem"

    const/16 v2, 0x23

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtSstItem:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v36, v0

    const/16 v1, 0x24

    const/16 v2, 0x9f

    const-string v3, "BrtBeginSst"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v37, v0

    const/16 v1, 0x25

    const/16 v2, 0xa0

    const-string v3, "BrtEndSst"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v38, v0

    const/16 v1, 0x26

    const/16 v2, 0x9c

    const-string v3, "BrtBundleSh"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBundleSh:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v39, v0

    const/16 v1, 0x27

    const/16 v2, 0x817

    const-string v3, "BrtAbsPath15"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v40, v0

    const/16 v1, 0x28

    const/4 v2, -0x1

    const-string v3, "Unimplemented"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->Unimplemented:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    move-object/from16 v3, v45

    filled-new-array/range {v0 .. v40}, [Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->$VALUES:[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->TYPE_MAP:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->values()[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v44

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    sget-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->id:I

    return-void
.end method

.method public static lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->TYPE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->Unimplemented:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->$VALUES:[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, [Lorg/apache/poi/xssf/binary/XSSFBRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->id:I

    return p0
.end method
