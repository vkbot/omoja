.class public final Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
.super Lorg/apache/poi/ooxml/POIXMLRelation;
.source "SourceFile"


# static fields
.field public static final CHART:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FONT_TABLE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HDPHOTO_WDP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_BMP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_DIB:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_EMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_EPS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_GIF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_JPEG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_PICT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_PNG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_SVG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_TIFF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_WMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_WPG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field static final NS_DRAWINGML:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field public static final NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final WEB_SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final WORKBOOK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    const-string v3, "/word/document.xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template.main+xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.ms-word.document.macroEnabled.main+xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.ms-word.template.macroEnabledTemplate.main+xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/glossaryDocument"

    const-string v2, "/word/glossary/document.xml"

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.document.glossary+xml"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.numbering+xml"

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/numbering"

    const-string v7, "/word/numbering.xml"

    new-instance v8, Lorg/apache/poi/xwpf/usermodel/b;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    new-instance v9, Lmega/widget/recyclerview/b;

    const/16 v2, 0x18

    invoke-direct {v9, v2}, Lmega/widget/recyclerview/b;-><init>(I)V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/fontTable"

    const-string v3, "/word/fontTable.xml"

    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.fontTable+xml"

    invoke-direct {v0, v4, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FONT_TABLE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v6, "application/vnd.openxmlformats-officedocument.wordprocessingml.settings+xml"

    const-string v7, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/settings"

    const-string v8, "/word/settings.xml"

    new-instance v9, Lorg/apache/poi/xwpf/usermodel/c;

    const/4 v2, 0x2

    invoke-direct {v9, v2}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    new-instance v10, Lorg/apache/poi/xwpf/usermodel/b;

    const/16 v3, 0xb

    invoke-direct {v10, v3}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v12, "application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml"

    const-string v13, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles"

    const-string v14, "/word/styles.xml"

    new-instance v15, Lorg/apache/poi/xwpf/usermodel/d;

    const/4 v4, 0x5

    invoke-direct {v15, v4}, Lorg/apache/poi/xwpf/usermodel/d;-><init>(I)V

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/b;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    move-object v11, v0

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v5, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/webSettings"

    const-string v6, "/word/webSettings.xml"

    const-string v7, "application/vnd.openxmlformats-officedocument.wordprocessingml.webSettings+xml"

    invoke-direct {v0, v7, v5, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->WEB_SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v9, "application/vnd.openxmlformats-officedocument.wordprocessingml.header+xml"

    const-string v10, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/header"

    const-string v11, "/word/header#.xml"

    new-instance v12, Lorg/apache/poi/xwpf/usermodel/c;

    const/16 v5, 0xa

    invoke-direct {v12, v5}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    new-instance v13, Lorg/apache/poi/xwpf/usermodel/d;

    const/4 v6, 0x6

    invoke-direct {v13, v6}, Lorg/apache/poi/xwpf/usermodel/d;-><init>(I)V

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v15, "application/vnd.openxmlformats-officedocument.wordprocessingml.footer+xml"

    const-string v16, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/footer"

    const-string v17, "/word/footer#.xml"

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/b;

    const/16 v8, 0x10

    invoke-direct {v7, v8}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    new-instance v8, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v8, v3}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    move-object v14, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v10, "application/vnd.openxmlformats-officedocument.theme+xml"

    const-string v11, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"

    const-string v12, "/word/theme/theme#.xml"

    new-instance v13, Lorg/apache/poi/xslf/usermodel/i;

    const/16 v3, 0x19

    invoke-direct {v13, v3}, Lorg/apache/poi/xslf/usermodel/i;-><init>(I)V

    new-instance v14, Lmega/widget/recyclerview/b;

    const/16 v7, 0x15

    invoke-direct {v14, v7}, Lmega/widget/recyclerview/b;-><init>(I)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v16, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v17, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    const-string v18, "/word/embeddings/Microsoft_Excel_Worksheet#.xlsx"

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/b;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    new-instance v9, Lorg/apache/poi/xslf/usermodel/i;

    const/16 v10, 0x1a

    invoke-direct {v9, v10}, Lorg/apache/poi/xslf/usermodel/i;-><init>(I)V

    move-object v15, v0

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->WORKBOOK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v20, "application/vnd.openxmlformats-officedocument.drawingml.chart+xml"

    const-string v21, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/chart"

    const-string v22, "/word/charts/chart#.xml"

    new-instance v7, Lmega/widget/recyclerview/b;

    const/16 v9, 0x16

    invoke-direct {v7, v9}, Lmega/widget/recyclerview/b;-><init>(I)V

    new-instance v9, Lorg/apache/poi/xwpf/usermodel/b;

    invoke-direct {v9, v2}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    move-object/from16 v19, v0

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->CHART:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v7, 0x0

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-direct {v0, v7, v9, v7}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v12, "application/vnd.openxmlformats-officedocument.wordprocessingml.comments+xml"

    const-string v13, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments"

    const-string v14, "/word/comments.xml"

    new-instance v15, Lorg/apache/poi/xslf/usermodel/i;

    const/16 v7, 0x1b

    invoke-direct {v15, v7}, Lorg/apache/poi/xslf/usermodel/i;-><init>(I)V

    new-instance v9, Lmega/widget/recyclerview/b;

    const/16 v11, 0x17

    invoke-direct {v9, v11}, Lmega/widget/recyclerview/b;-><init>(I)V

    move-object v11, v0

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v17, "application/vnd.openxmlformats-officedocument.wordprocessingml.footnotes+xml"

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/footnotes"

    const-string v19, "/word/footnotes.xml"

    new-instance v9, Lorg/apache/poi/xwpf/usermodel/b;

    const/4 v11, 0x3

    invoke-direct {v9, v11}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    new-instance v12, Lorg/apache/poi/xslf/usermodel/i;

    const/16 v13, 0x1c

    invoke-direct {v12, v13}, Lorg/apache/poi/xslf/usermodel/i;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v20, v9

    move-object/from16 v21, v12

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v21, "application/vnd.openxmlformats-officedocument.wordprocessingml.endnotes+xml"

    const-string v22, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/endnotes"

    const-string v23, "/word/endnotes.xml"

    new-instance v9, Lorg/apache/poi/xwpf/usermodel/b;

    const/4 v12, 0x4

    invoke-direct {v9, v12}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    new-instance v14, Lorg/apache/poi/xslf/usermodel/i;

    const/16 v15, 0x1d

    invoke-direct {v14, v15}, Lorg/apache/poi/xslf/usermodel/i;-><init>(I)V

    move-object/from16 v20, v0

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v9, Lorg/apache/poi/common/usermodel/PictureType;->EMF:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v9, v9, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v26, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v27, "/word/media/image#.emf"

    new-instance v14, Lmega/widget/recyclerview/b;

    invoke-direct {v14, v3}, Lmega/widget/recyclerview/b;-><init>(I)V

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/b;

    invoke-direct {v3, v4}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    move-object/from16 v24, v0

    move-object/from16 v25, v9

    move-object/from16 v28, v14

    move-object/from16 v29, v3

    invoke-direct/range {v24 .. v29}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v3, Lorg/apache/poi/common/usermodel/PictureType;->WMF:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v3, v3, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v19, "/word/media/image#.wmf"

    new-instance v9, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v9, v1}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    new-instance v14, Lmega/widget/recyclerview/b;

    invoke-direct {v14, v10}, Lmega/widget/recyclerview/b;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v20, v9

    move-object/from16 v21, v14

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v3, Lorg/apache/poi/common/usermodel/PictureType;->PICT:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v3, v3, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v22, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v23, "/word/media/image#.pict"

    new-instance v9, Lorg/apache/poi/xwpf/usermodel/b;

    invoke-direct {v9, v6}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    new-instance v10, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v10, v8}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PICT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v3, Lorg/apache/poi/common/usermodel/PictureType;->JPEG:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v3, v3, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v19, "/word/media/image#.jpeg"

    new-instance v9, Lmega/widget/recyclerview/b;

    invoke-direct {v9, v7}, Lmega/widget/recyclerview/b;-><init>(I)V

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/b;

    const/4 v10, 0x7

    invoke-direct {v7, v10}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v20, v9

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_JPEG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v3, Lorg/apache/poi/common/usermodel/PictureType;->PNG:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v3, v3, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v22, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v23, "/word/media/image#.png"

    new-instance v7, Lmega/widget/recyclerview/b;

    invoke-direct {v7, v13}, Lmega/widget/recyclerview/b;-><init>(I)V

    new-instance v9, Lorg/apache/poi/xwpf/usermodel/b;

    const/16 v13, 0x8

    invoke-direct {v9, v13}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v24, v7

    move-object/from16 v25, v9

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PNG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v3, Lorg/apache/poi/common/usermodel/PictureType;->DIB:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v3, v3, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v19, "/word/media/image#.dib"

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v7, v11}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    new-instance v9, Lmega/widget/recyclerview/b;

    invoke-direct {v9, v15}, Lmega/widget/recyclerview/b;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_DIB:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v3, Lorg/apache/poi/common/usermodel/PictureType;->GIF:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v3, v3, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v22, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v23, "/word/media/image#.gif"

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/b;

    const/16 v9, 0x9

    invoke-direct {v7, v9}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    new-instance v14, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v14, v12}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v24, v7

    move-object/from16 v25, v14

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_GIF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v3, Lorg/apache/poi/common/usermodel/PictureType;->TIFF:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v3, v3, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v17, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v18, "/word/media/image#.tiff"

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/d;

    invoke-direct {v7, v1}, Lorg/apache/poi/xwpf/usermodel/d;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/b;

    invoke-direct {v1, v5}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_TIFF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->EPS:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v1, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v21, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v22, "/word/media/image#.eps"

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v3, v4}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/d;

    invoke-direct {v4, v8}, Lorg/apache/poi/xwpf/usermodel/d;-><init>(I)V

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EPS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->BMP:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v15, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v16, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v17, "/word/media/image#.bmp"

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v1, v6}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/d;

    invoke-direct {v3, v2}, Lorg/apache/poi/xwpf/usermodel/d;-><init>(I)V

    move-object v14, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_BMP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->WPG:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v1, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v20, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v21, "/word/media/image#.wpg"

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/b;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v3, v10}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v18 .. v23}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WPG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->WDP:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v15, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v16, "http://schemas.microsoft.com/office/2007/relationships/hdphoto"

    const-string v17, "/ppt/media/hdphoto#.wdp"

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/d;

    invoke-direct {v1, v11}, Lorg/apache/poi/xwpf/usermodel/d;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/b;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    move-object v14, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HDPHOTO_WDP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->SVG:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v1, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v20, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v21, "/word/media/image#.svg"

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v2, v13}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/d;

    invoke-direct {v3, v12}, Lorg/apache/poi/xwpf/usermodel/d;-><init>(I)V

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v18 .. v23}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_SVG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v14, 0x0

    const-string v15, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const/16 v16, 0x0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/b;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lorg/apache/poi/xwpf/usermodel/b;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/c;

    invoke-direct {v2, v9}, Lorg/apache/poi/xwpf/usermodel/c;-><init>(I)V

    move-object v13, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    .line 2
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    .line 4
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    .line 6
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XWPFRelation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
