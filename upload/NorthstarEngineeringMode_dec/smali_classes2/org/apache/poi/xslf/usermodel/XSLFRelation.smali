.class public final Lorg/apache/poi/xslf/usermodel/XSLFRelation;
.super Lorg/apache/poi/ooxml/POIXMLRelation;
.source "SourceFile"


# static fields
.field public static final CHART:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final COMMENTS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final COMMENT_AUTHORS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final DIAGRAM_DRAWING:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final FONT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final HDPHOTO_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final HYPERLINK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_BMP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_DIB:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_EMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_EPS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_GIF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_JPEG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_PICT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_PNG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_SVG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_TIFF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_WMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_WPG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final MACRO_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final MAIN:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field static final NS_DRAWINGML:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field public static final OLE_OBJECT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final PRESENTATIONML:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final PRESENTATIONML_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final PRESENTATION_MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final SLIDE_LAYOUT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final SLIDE_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final TABLE_STYLES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final VML_DRAWING:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final WORKBOOK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xslf/usermodel/XSLFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->_table:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MAIN:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.ms-powerpoint.slideshow.macroEnabled.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.ms-powerpoint.template.macroEnabled.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.template.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.ms-powerpoint.presentation.macroEnabled.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATION_MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.themeManager+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.notesSlide+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesSlide"

    const-string v5, "/ppt/notesSlides/notesSlide#.xml"

    new-instance v6, Landroidx/constraintlayout/core/state/b;

    const/16 v1, 0xd

    invoke-direct {v6, v1}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v7, Lorg/apache/poi/hssf/record/m1;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.slide+xml"

    const-string v11, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide"

    const-string v12, "/ppt/slides/slide#.xml"

    new-instance v13, Landroidx/constraintlayout/core/state/c;

    const/16 v2, 0xe

    invoke-direct {v13, v2}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v14, Landroidx/constraintlayout/core/state/b;

    const/16 v3, 0x18

    invoke-direct {v14, v3}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v16, "application/vnd.openxmlformats-officedocument.presentationml.slideLayout+xml"

    const-string v17, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideLayout"

    const-string v18, "/ppt/slideLayouts/slideLayout#.xml"

    const/16 v19, 0x0

    new-instance v4, Lorg/apache/poi/hssf/record/m1;

    const/16 v5, 0x15

    invoke-direct {v4, v5}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object v15, v0

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE_LAYOUT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.slideMaster+xml"

    const-string v11, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster"

    const-string v12, "/ppt/slideMasters/slideMaster#.xml"

    const/4 v13, 0x0

    new-instance v14, Landroidx/constraintlayout/core/state/d;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v16, "application/vnd.openxmlformats-officedocument.presentationml.notesMaster+xml"

    const-string v17, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesMaster"

    const-string v18, "/ppt/notesMasters/notesMaster#.xml"

    new-instance v4, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v4, v3}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v6, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v6, v3}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object v15, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.comments+xml"

    const-string v11, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments"

    const-string v12, "/ppt/comments/comment#.xml"

    new-instance v13, Landroidx/constraintlayout/core/state/d;

    const/4 v3, 0x1

    invoke-direct {v13, v3}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    new-instance v14, Landroidx/constraintlayout/core/state/c;

    const/16 v3, 0x19

    invoke-direct {v14, v3}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->COMMENTS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v16, "application/vnd.openxmlformats-officedocument.presentationml.commentAuthors+xml"

    const-string v17, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/commentAuthors"

    const-string v18, "/ppt/commentAuthors.xml"

    new-instance v4, Landroidx/constraintlayout/core/state/c;

    const/4 v6, 0x7

    invoke-direct {v4, v6}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v7, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v7, v6}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object v15, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->COMMENT_AUTHORS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const/4 v4, 0x0

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-direct {v0, v4, v6, v4}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->HYPERLINK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v10, "application/vnd.openxmlformats-officedocument.theme+xml"

    const-string v11, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"

    const-string v12, "/ppt/theme/theme#.xml"

    new-instance v13, Landroidx/constraintlayout/core/state/b;

    invoke-direct {v13, v2}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v14, Landroidx/constraintlayout/core/state/c;

    const/16 v4, 0x8

    invoke-direct {v14, v4}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/vmlDrawing"

    const-string v7, "/ppt/drawings/vmlDrawing#.vml"

    const-string v9, "application/vnd.openxmlformats-officedocument.vmlDrawing"

    invoke-direct {v0, v9, v6, v7}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->VML_DRAWING:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v11, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v12, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    const-string v13, "/ppt/embeddings/Microsoft_Excel_Worksheet#.xlsx"

    new-instance v14, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v14, v4}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    new-instance v15, Landroidx/constraintlayout/core/state/b;

    const/16 v4, 0xf

    invoke-direct {v15, v4}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->WORKBOOK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v17, "application/vnd.openxmlformats-officedocument.drawingml.chart+xml"

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/chart"

    const-string v19, "/ppt/charts/chart#.xml"

    new-instance v6, Landroidx/constraintlayout/core/state/c;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v9, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v9, v7}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v20, v6

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->CHART:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v11, "application/vnd.ms-office.drawingml.diagramDrawing+xml"

    const-string v12, "http://schemas.microsoft.com/office/2007/relationships/diagramDrawing"

    const-string v13, "/ppt/diagrams/drawing#.xml"

    new-instance v14, Landroidx/constraintlayout/core/state/b;

    const/16 v6, 0x10

    invoke-direct {v14, v6}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v15, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v15, v8}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->DIAGRAM_DRAWING:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v7, v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v19, "/ppt/media/image#.emf"

    new-instance v8, Landroidx/constraintlayout/core/state/b;

    const/16 v9, 0x11

    invoke-direct {v8, v9}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v10, Landroidx/constraintlayout/core/state/c;

    const/16 v11, 0xb

    invoke-direct {v10, v11}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v13, v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v14, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v15, "/ppt/media/image#.wmf"

    new-instance v7, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v7, v11}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    new-instance v8, Landroidx/constraintlayout/core/state/b;

    const/16 v10, 0x12

    invoke-direct {v8, v10}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    move-object v12, v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v12 .. v17}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v7, v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v19, "/ppt/media/image#.pict"

    new-instance v8, Landroidx/constraintlayout/core/state/c;

    const/16 v11, 0xc

    invoke-direct {v8, v11}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v12, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v12, v11}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v12

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PICT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v7, v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v22, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v23, "/ppt/media/image#.jpeg"

    new-instance v8, Landroidx/constraintlayout/core/state/b;

    const/16 v11, 0x13

    invoke-direct {v8, v11}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v12, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v12, v1}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v12

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_JPEG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v14, v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v15, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v16, "/ppt/media/image#.png"

    new-instance v7, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v7, v1}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    new-instance v1, Landroidx/constraintlayout/core/state/b;

    const/16 v8, 0x14

    invoke-direct {v1, v8}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    move-object v13, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PNG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v1, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v19, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v20, "/ppt/media/image#.dib"

    new-instance v7, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v7, v2}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    new-instance v2, Landroidx/constraintlayout/core/state/b;

    invoke-direct {v2, v5}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v21, v7

    move-object/from16 v22, v2

    invoke-direct/range {v17 .. v22}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_DIB:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v13, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v14, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v15, "/ppt/media/image#.gif"

    new-instance v1, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v1, v4}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v2, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v2, v4}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object v12, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_GIF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v1, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v19, "/ppt/media/image#.tiff"

    new-instance v2, Landroidx/constraintlayout/core/state/b;

    const/16 v4, 0x16

    invoke-direct {v2, v4}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v7, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v7, v6}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_TIFF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EPS:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v13, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v14, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v15, "/ppt/media/image#.eps"

    new-instance v1, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v1, v6}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    new-instance v2, Landroidx/constraintlayout/core/state/b;

    const/16 v6, 0x17

    invoke-direct {v2, v6}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    move-object v12, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EPS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v1, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v19, "/ppt/media/image#.bmp"

    new-instance v2, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v2, v9}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v7, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v7, v9}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_BMP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v13, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v14, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v15, "/ppt/media/image#.wpg"

    new-instance v1, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v1, v10}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v2, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v2, v10}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object v12, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WPG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WDP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v19, "/ppt/media/image#.wdp"

    new-instance v7, Landroidx/constraintlayout/core/state/b;

    invoke-direct {v7, v3}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v3, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v3, v11}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v20, v7

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    iget-object v13, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v14, "http://schemas.microsoft.com/office/2007/relationships/hdphoto"

    const-string v15, "/ppt/media/hdphoto#.wdp"

    new-instance v1, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v1, v11}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    new-instance v2, Landroidx/constraintlayout/core/state/b;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    move-object v12, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->HDPHOTO_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->SVG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v1, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v18, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v19, "/ppt/media/image#.svg"

    new-instance v2, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v2, v8}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v3, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v3, v8}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_SVG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const/4 v10, 0x0

    const-string v11, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const/4 v12, 0x0

    new-instance v13, Landroidx/constraintlayout/core/state/b;

    const/16 v1, 0x1b

    invoke-direct {v13, v1}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v14, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v14, v5}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v16, "application/vnd.openxmlformats-officedocument.presentationml.tableStyles+xml"

    const-string v17, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/tableStyles"

    const-string v18, "/ppt/tableStyles.xml"

    new-instance v1, Landroidx/constraintlayout/core/state/b;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    new-instance v2, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v2, v4}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    move-object v15, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->TABLE_STYLES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v8, "application/vnd.openxmlformats-officedocument.oleObject"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    const-string v10, "/ppt/embeddings/oleObject#.bin"

    new-instance v11, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v11, v4}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    new-instance v12, Landroidx/constraintlayout/core/state/b;

    const/16 v1, 0x1d

    invoke-direct {v12, v1}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->OLE_OBJECT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v14, "application/x-fontdata"

    const-string v15, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/font"

    const-string v16, "/ppt/fonts/font#.fntdata"

    new-instance v1, Landroidx/constraintlayout/core/state/c;

    invoke-direct {v1, v6}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    new-instance v2, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v2, v6}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    move-object v13, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->FONT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

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

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->_table:Ljava/util/Map;

    .line 4
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0
.end method
