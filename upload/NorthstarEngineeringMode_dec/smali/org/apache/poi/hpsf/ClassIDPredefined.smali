.class public final enum Lorg/apache/poi/hpsf/ClassIDPredefined;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hpsf/ClassIDPredefined;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum DOC_SUMMARY:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EQUATION_V3:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V11:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V12_MACRO:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V12_XLSB:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V14:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V14_CHART:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V14_ODS:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V14_WORKBOOK:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V3:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V3_CHART:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V3_MACRO:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V7:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V7_CHART:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V7_WORKBOOK:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum EXCEL_V8_CHART:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum FILE_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hpsf/ClassIDPredefined;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OLE_V1_PACKAGE:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum PAINT:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum PDF:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum POWERPOINT_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum POWERPOINT_V12_MACRO:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum POWERPOINT_V7:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum POWERPOINT_V7_SLIDE:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum POWERPOINT_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum POWERPOINT_V8_TPL:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum PUBLISHER_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum STD_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum SUMMARY_PROPERTIES:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum TXT_ONLY:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum URL_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum USER_PROPERTIES:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum VISIO_V10:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum WORD_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum WORD_V12_MACRO:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum WORD_V7:Lorg/apache/poi/hpsf/ClassIDPredefined;

.field public static final enum WORD_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;


# instance fields
.field private classId:Lorg/apache/poi/hpsf/ClassID;

.field private final contentType:Ljava/lang/String;

.field private final externalForm:Ljava/lang/String;

.field private final fileExtension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 59

    new-instance v7, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v6, v7

    const-string v1, "OLE_V1_PACKAGE"

    const/4 v2, 0x0

    const-string/jumbo v3, "{0003000C-0000-0000-C000-000000000046}"

    const-string v4, ".bin"

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/apache/poi/hpsf/ClassIDPredefined;->OLE_V1_PACKAGE:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v7, v0

    const-string v9, "EXCEL_V3"

    const/4 v10, 0x1

    const-string/jumbo v11, "{00030000-0000-0000-C000-000000000046}"

    const-string v12, ".xls"

    const-string v13, "application/vnd.ms-excel"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V3:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v8, v0

    const-string v15, "EXCEL_V3_CHART"

    const/16 v16, 0x2

    const-string/jumbo v17, "{00030001-0000-0000-C000-000000000046}"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V3_CHART:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v9, v0

    const-string v21, "EXCEL_V3_MACRO"

    const/16 v22, 0x3

    const-string/jumbo v23, "{00030002-0000-0000-C000-000000000046}"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V3_MACRO:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v10, v0

    const-string v12, "EXCEL_V7"

    const/4 v13, 0x4

    const-string/jumbo v14, "{00020810-0000-0000-C000-000000000046}"

    const-string v15, ".xls"

    const-string v16, "application/vnd.ms-excel"

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V7:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v11, v0

    const-string v18, "EXCEL_V7_WORKBOOK"

    const/16 v19, 0x5

    const-string/jumbo v20, "{00020841-0000-0000-C000-000000000046}"

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V7_WORKBOOK:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v12, v0

    const-string v24, "EXCEL_V7_CHART"

    const/16 v25, 0x6

    const-string/jumbo v26, "{00020811-0000-0000-C000-000000000046}"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V7_CHART:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v13, v0

    const-string v15, "EXCEL_V8"

    const/16 v16, 0x7

    const-string/jumbo v17, "{00020820-0000-0000-C000-000000000046}"

    const-string v18, ".xls"

    const-string v19, "application/vnd.ms-excel"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v14, v0

    const-string v21, "EXCEL_V8_CHART"

    const/16 v22, 0x8

    const-string/jumbo v23, "{00020821-0000-0000-C000-000000000046}"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V8_CHART:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v15, v0

    const-string v27, "EXCEL_V11"

    const/16 v28, 0x9

    const-string/jumbo v29, "{00020812-0000-0000-C000-000000000046}"

    const-string v30, ".xlsx"

    const-string v31, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V11:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v16, v0

    const-string v18, "EXCEL_V12"

    const/16 v19, 0xa

    const-string/jumbo v20, "{00020830-0000-0000-C000-000000000046}"

    const-string v21, ".xlsx"

    const-string v22, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v17, v0

    const-string v24, "EXCEL_V12_MACRO"

    const/16 v25, 0xb

    const-string/jumbo v26, "{00020832-0000-0000-C000-000000000046}"

    const-string v27, ".xlsm"

    const-string v28, "application/vnd.ms-excel.sheet.macroEnabled.12"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V12_MACRO:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v18, v0

    const-string v30, "EXCEL_V12_XLSB"

    const/16 v31, 0xc

    const-string/jumbo v32, "{00020833-0000-0000-C000-000000000046}"

    const-string v33, ".xlsb"

    const-string v34, "application/vnd.ms-excel.sheet.binary.macroEnabled.12"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V12_XLSB:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v19, v0

    const-string v21, "EXCEL_V14"

    const/16 v22, 0xd

    const-string/jumbo v23, "{00024500-0000-0000-C000-000000000046}"

    const-string v24, ".xlsx"

    const-string v25, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V14:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v20, v0

    const-string v27, "EXCEL_V14_WORKBOOK"

    const/16 v28, 0xe

    const-string/jumbo v29, "{000208D5-0000-0000-C000-000000000046}"

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V14_WORKBOOK:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v21, v0

    const-string v33, "EXCEL_V14_CHART"

    const/16 v34, 0xf

    const-string/jumbo v35, "{00024505-0014-0000-C000-000000000046}"

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V14_CHART:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v22, v0

    const-string v24, "EXCEL_V14_ODS"

    const/16 v25, 0x10

    const-string/jumbo v26, "{EABCECDB-CC1C-4A6F-B4E3-7F888A5ADFC8}"

    const-string v27, ".ods"

    const-string v28, "application/vnd.oasis.opendocument.spreadsheet"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V14_ODS:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v23, v0

    const-string v30, "WORD_V7"

    const/16 v31, 0x11

    const-string/jumbo v32, "{00020900-0000-0000-C000-000000000046}"

    const-string v33, ".doc"

    const-string v34, "application/msword"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->WORD_V7:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v24, v0

    const-string v36, "WORD_V8"

    const/16 v37, 0x12

    const-string/jumbo v38, "{00020906-0000-0000-C000-000000000046}"

    const-string v39, ".doc"

    const-string v40, "application/msword"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->WORD_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v25, v0

    const-string v27, "WORD_V12"

    const/16 v28, 0x13

    const-string/jumbo v29, "{F4754C9B-64F5-4B40-8AF4-679732AC0607}"

    const-string v30, ".docx"

    const-string v31, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->WORD_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v26, v0

    const-string v33, "WORD_V12_MACRO"

    const/16 v34, 0x14

    const-string/jumbo v35, "{18A06B6B-2F3F-4E2B-A611-52BE631B2D22}"

    const-string v36, ".docm"

    const-string v37, "application/vnd.ms-word.document.macroEnabled.12"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->WORD_V12_MACRO:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v27, v0

    const-string v39, "POWERPOINT_V7"

    const/16 v40, 0x15

    const-string/jumbo v41, "{EA7BAE70-FB3B-11CD-A903-00AA00510EA3}"

    const-string v42, ".ppt"

    const-string v43, "application/vnd.ms-powerpoint"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->POWERPOINT_V7:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v28, v0

    const-string v30, "POWERPOINT_V7_SLIDE"

    const/16 v31, 0x16

    const-string/jumbo v32, "{EA7BAE71-FB3B-11CD-A903-00AA00510EA3}"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->POWERPOINT_V7_SLIDE:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v29, v0

    const-string v36, "POWERPOINT_V8"

    const/16 v37, 0x17

    const-string/jumbo v38, "{64818D10-4F9B-11CF-86EA-00AA00B929E8}"

    const-string v39, ".ppt"

    const-string v40, "application/vnd.ms-powerpoint"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->POWERPOINT_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v30, v0

    const-string v42, "POWERPOINT_V8_TPL"

    const/16 v43, 0x18

    const-string/jumbo v44, "{64818D11-4F9B-11CF-86EA-00AA00B929E8}"

    const-string v45, ".pot"

    const-string v46, "application/vnd.ms-powerpoint"

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v46}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->POWERPOINT_V8_TPL:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v31, v0

    const-string v33, "POWERPOINT_V12"

    const/16 v34, 0x19

    const-string/jumbo v35, "{CF4F55F4-8F87-4D47-80BB-5808164BB3F8}"

    const-string v36, ".pptx"

    const-string v37, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->POWERPOINT_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v32, v0

    const-string v39, "POWERPOINT_V12_MACRO"

    const/16 v40, 0x1a

    const-string/jumbo v41, "{DC020317-E6E2-4A62-B9FA-B3EFE16626F4}"

    const-string v42, ".pptm"

    const-string v43, "application/vnd.ms-powerpoint.presentation.macroEnabled.12"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->POWERPOINT_V12_MACRO:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v33, v0

    const-string v45, "PUBLISHER_V12"

    const/16 v46, 0x1b

    const-string/jumbo v47, "{0002123D-0000-0000-C000-000000000046}"

    const-string v48, ".pub"

    const-string v49, "application/x-mspublisher"

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v49}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->PUBLISHER_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v34, v0

    const-string v36, "VISIO_V10"

    const/16 v37, 0x1c

    const-string/jumbo v38, "{00021A14-0000-0000-C000-000000000046}"

    const-string v39, ".vsd"

    const-string v40, "application/vnd.visio"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->VISIO_V10:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v35, v0

    const-string v42, "EQUATION_V3"

    const/16 v43, 0x1d

    const-string/jumbo v44, "{0002CE02-0000-0000-C000-000000000046}"

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v46}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->EQUATION_V3:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v36, v0

    const-string v48, "PDF"

    const/16 v49, 0x1e

    const-string/jumbo v50, "{B801CA65-A1FC-11D0-85AD-444553540000}"

    const-string v51, ".pdf"

    const-string v52, "application/pdf"

    move-object/from16 v47, v0

    invoke-direct/range {v47 .. v52}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->PDF:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v37, v0

    const-string v39, "TXT_ONLY"

    const/16 v40, 0x1f

    const-string/jumbo v41, "{5e941d80-bf96-11cd-b579-08002b30bfeb}"

    const-string v42, ".txt"

    const-string/jumbo v43, "text/plain"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->TXT_ONLY:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v38, v0

    const-string v45, "PAINT"

    const/16 v46, 0x20

    const-string/jumbo v47, "{0003000A-0000-0000-C000-000000000046}"

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v49}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->PAINT:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v39, v0

    const-string v51, "STD_MONIKER"

    const/16 v52, 0x21

    const-string/jumbo v53, "{79EAC9D0-BAF9-11CE-8C82-00AA004BA90B}"

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v50, v0

    invoke-direct/range {v50 .. v55}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->STD_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v40, v0

    const-string v42, "URL_MONIKER"

    const/16 v43, 0x22

    const-string/jumbo v44, "{79EAC9E0-BAF9-11CE-8C82-00AA004BA90B}"

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v46}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->URL_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v41, v0

    const-string v48, "FILE_MONIKER"

    const/16 v49, 0x23

    const-string/jumbo v50, "{00000303-0000-0000-C000-000000000046}"

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v47, v0

    invoke-direct/range {v47 .. v52}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->FILE_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v42, v0

    const-string v54, "DOC_SUMMARY"

    const/16 v55, 0x24

    const-string/jumbo v56, "{D5CDD502-2E9C-101B-9397-08002B2CF9AE}"

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v53, v0

    invoke-direct/range {v53 .. v58}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->DOC_SUMMARY:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v43, v0

    const-string v45, "USER_PROPERTIES"

    const/16 v46, 0x25

    const-string/jumbo v47, "{D5CDD505-2E9C-101B-9397-08002B2CF9AE}"

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v49}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->USER_PROPERTIES:Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object/from16 v44, v0

    const-string v51, "SUMMARY_PROPERTIES"

    const/16 v52, 0x26

    const-string/jumbo v53, "{F29F85E0-4FF9-1068-AB91-08002B27B3D9}"

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v50, v0

    invoke-direct/range {v50 .. v55}, Lorg/apache/poi/hpsf/ClassIDPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->SUMMARY_PROPERTIES:Lorg/apache/poi/hpsf/ClassIDPredefined;

    filled-new-array/range {v6 .. v44}, [Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->$VALUES:[Lorg/apache/poi/hpsf/ClassIDPredefined;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->LOOKUP:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/hpsf/ClassIDPredefined;->values()[Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/apache/poi/hpsf/ClassIDPredefined;->LOOKUP:Ljava/util/Map;

    iget-object v5, v3, Lorg/apache/poi/hpsf/ClassIDPredefined;->externalForm:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hpsf/ClassIDPredefined;->externalForm:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/hpsf/ClassIDPredefined;->fileExtension:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/poi/hpsf/ClassIDPredefined;->contentType:Ljava/lang/String;

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lorg/apache/poi/hpsf/ClassIDPredefined;
    .locals 1

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->LOOKUP:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    return-object p0
.end method

.method public static lookup(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/ClassIDPredefined;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->LOOKUP:Ljava/util/Map;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hpsf/ClassIDPredefined;
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/ClassIDPredefined;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hpsf/ClassIDPredefined;
    .locals 1

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->$VALUES:[Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v0}, [Lorg/apache/poi/hpsf/ClassIDPredefined;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hpsf/ClassIDPredefined;

    return-object v0
.end method


# virtual methods
.method public equals(Lorg/apache/poi/hpsf/ClassID;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassIDPredefined;->classId:Lorg/apache/poi/hpsf/ClassID;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    iget-object v1, p0, Lorg/apache/poi/hpsf/ClassIDPredefined;->externalForm:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClassIDPredefined;->classId:Lorg/apache/poi/hpsf/ClassID;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassIDPredefined;->classId:Lorg/apache/poi/hpsf/ClassID;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassIDPredefined;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassIDPredefined;->fileExtension:Ljava/lang/String;

    return-object p0
.end method
