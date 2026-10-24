.class public Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
.super Lorg/apache/poi/ooxml/POIXMLDocument;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SlideShow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ooxml/POIXMLDocument;",
        "Lorg/apache/poi/sl/usermodel/SlideShow<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static final GET_ALL_EMBEDDED_PARTS_PATTERN:Ljava/util/regex/Pattern;

.field private static final GET_PICTURE_DATA_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG:La5/d;

.field private static MAX_RECORD_LENGTH:I


# instance fields
.field private final _charts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFChart;",
            ">;"
        }
    .end annotation
.end field

.field private _commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

.field private final _masters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;",
            ">;"
        }
    .end annotation
.end field

.field private _notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

.field private final _pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private _presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

.field private final _slides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
            ">;"
        }
    .end annotation
.end field

.field private _tableStyles:Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->LOG:La5/d;

    const v0, 0xf4240

    sput v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->MAX_RECORD_LENGTH:I

    const-string v0, "/ppt/embeddings/.*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->GET_ALL_EMBEDDED_PARTS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "/ppt/media/.*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->GET_PICTURE_DATA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->empty()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    .line 12
    invoke-static {p1, p2}, Lorg/apache/poi/ooxml/util/PackageHelper;->open(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_charts:Ljava/util/List;

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->rebase(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;->load(Lorg/apache/poi/ooxml/POIXMLFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :goto_1
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic a(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/util/Map;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->lambda$onDocumentRead$0(Ljava/util/Map;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->lambda$getPictureData$2(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/util/Map;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->lambda$onDocumentRead$1(Ljava/util/Map;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V

    return-void
.end method

.method private createNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createNotesMaster()V

    :cond_0
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->findNextAvailableFileNameIndex(Lorg/apache/poi/xslf/usermodel/XSLFRelation;)I

    move-result v1

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1, v2, v0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-virtual {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    return-object v1
.end method

.method public static empty()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 3

    const-class v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    const-string v1, "empty.pptx"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v1, "Missing resource \'empty.pptx\'"

    invoke-direct {v0, v1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findNextAvailableFileNameIndex(Lorg/apache/poi/xslf/usermodel/XSLFRelation;)I
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getUnusedPartIndex(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private synthetic lambda$getPictureData$2(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->setIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onDocumentRead$0(Ljava/util/Map;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;->getId2()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private lambda$onDocumentRead$1(Ljava/util/Map;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V
    .locals 1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId2()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    if-nez p1, :cond_0

    sget-object p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId()J

    move-result-wide p1

    invoke-static {}, Lg5/b0;->c()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "Slide with r:id {} was defined, but didn\'t exist in package, skipping"

    invoke-interface {p0, v0, p1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private removePictureRelations(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFPictureData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->removePictureRelations(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;Lorg/apache/poi/xslf/usermodel/XSLFPictureData;)V

    return-void
.end method

.method private removePictureRelations(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;Lorg/apache/poi/xslf/usermodel/XSLFPictureData;)V
    .locals 2

    .line 2
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/ShapeContainer;->getShapes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    .line 3
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->removePictureRelations(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;Lorg/apache/poi/xslf/usermodel/XSLFPictureData;)V

    .line 5
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v1

    if-ne v1, p3, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removePictureRelation(Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addFont(Ljava/io/InputStream;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addFont(Ljava/io/InputStream;)Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    move-result-object p0

    return-object p0
.end method

.method public addFont(Ljava/io/InputStream;)Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->addFontToSlideShow(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/io/InputStream;)Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 3

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    sget v2, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    .line 21
    :try_start_0
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 23
    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 25
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 1

    .line 18
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getMaxImageSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArrayWithMaxLength(Ljava/io/InputStream;I)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 3

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->findPictureData([B)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {p2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getRelationForType(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    const-string v2, "/ppt/media/image#\\..+"

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getUnusedPartIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    .line 8
    :goto_0
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->setIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    .line 10
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-object p2

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 14
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 15
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 16
    :goto_2
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Picture type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not supported."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public commit()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public createChart()Lorg/apache/poi/xslf/usermodel/XSLFChart;
    .locals 4

    .line 3
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->CHART:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->findNextAvailableFileNameIndex(Lorg/apache/poi/xslf/usermodel/XSLFRelation;)I

    move-result v1

    .line 4
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v1, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFChart;

    .line 5
    invoke-virtual {v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->setChartIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_charts:Ljava/util/List;

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createChart(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFChart;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createChart()Lorg/apache/poi/xslf/usermodel/XSLFChart;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->CHART:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    return-object p0
.end method

.method public createMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public createNotesMaster()V
    .locals 7

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->addNewNotesMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;->addNewNotesMasterId()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdListEntry;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdListEntry;->setId(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v5, v4, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-eqz v5, :cond_0

    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v5, v4}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileNameIndex(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    move v5, v1

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v1, v6, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v5, v1

    move v4, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    :cond_4
    move v2, v5

    :cond_5
    :goto_2
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlides()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->importTheme(Lorg/apache/poi/xslf/usermodel/XSLFTheme;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    return-void
.end method

.method public bridge synthetic createSlide()Lorg/apache/poi/sl/usermodel/Slide;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object p0

    return-object p0
.end method

.method public createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    .line 19
    sget-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->BLANK:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    invoke-virtual {v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayout(Lorg/apache/poi/xslf/usermodel/SlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->LOG:La5/d;

    .line 20
    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    const-string v3, "Blank layout was not found - defaulting to first slide layout in master"

    invoke-interface {v2, v3}, La5/b;->f(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getSlideLayouts()[Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v0

    .line 22
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 23
    aget-object v2, v0, v1

    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "SlideMaster must contain a SlideLayout."

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object p0

    return-object p0
.end method

.method public createSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetSldIdLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->addNewSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/z0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/z0;-><init>(I)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->max()Ljava/util/OptionalLong;

    move-result-object v1

    .line 6
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-wide/16 v3, 0x0

    .line 7
    invoke-virtual {v1, v3, v4}, Ljava/util/OptionalLong;->orElse(J)J

    move-result-wide v3

    const-wide/16 v5, 0xff

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    long-to-int v1, v3

    .line 8
    invoke-direct {p0, v2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->findNextAvailableFileNameIndex(Lorg/apache/poi/xslf/usermodel/XSLFRelation;)I

    move-result v3

    .line 9
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v3, v5}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    .line 11
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->addNewSldId()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v0

    int-to-long v4, v1

    .line 12
    invoke-interface {v0, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->setId(J)V

    .line 13
    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->setId2(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->copyLayout(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    .line 15
    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clearRelationships()V

    const/4 v0, 0x0

    .line 16
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE_LAYOUT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v3, v0, v1, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    .line 17
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public findLayout(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlideMasters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayout(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic findPictureData([B)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->findPictureData([B)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public findPictureData([B)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 3

    .line 2
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v0

    const/16 p1, 0x8

    new-array p1, p1, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPictureData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getChecksum()[B

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllEmbeddedParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->GET_ALL_EMBEDDED_PARTS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCTPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    return-object p0
.end method

.method public getCharts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFChart;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_charts:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCommentAuthors()Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    return-object p0
.end method

.method public getFonts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFonts(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getMetadataTextExtractor()Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;-><init>(Lorg/apache/poi/ooxml/POIXMLDocument;)V

    return-object v0
.end method

.method public getNotesMaster()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    return-object p0
.end method

.method public getNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPageSize()Ljava/awt/Dimension;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->getCx()I

    move-result v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->getCy()I

    move-result p0

    new-instance v1, Ljava/awt/Dimension;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-direct {v1, v0, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v1
.end method

.method public getPersistDocument()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getPictureData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFPictureData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->GET_PICTURE_DATA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/xslf/usermodel/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSlideMasters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    return-object p0
.end method

.method public getSlides()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    return-object p0
.end method

.method public getTableStyles()Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_tableStyles:Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    return-object p0
.end method

.method public importBlip(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationPartById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getData()[B

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v1

    :goto_0
    const/4 p0, 0x0

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {p3, p0, p1, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "cannot import blip "

    const-string p3, " - its document part is not XSLFPictureData"

    invoke-static {p2, p1, p3}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "the target document part is not a child of this package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDocumentRead()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v5

    instance-of v6, v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    check-cast v6, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v6, v5, Lorg/apache/poi/xslf/usermodel/XSLFChart;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    instance-of v4, v5, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v4, :cond_4

    invoke-virtual {p0, v5}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v4

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    instance-of v4, v5, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    if-eqz v4, :cond_5

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    iput-object v5, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_tableStyles:Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    goto :goto_1

    :cond_5
    instance-of v4, v5, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-eqz v4, :cond_6

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    iput-object v5, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    goto :goto_1

    :cond_6
    instance-of v4, v5, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    if-eqz v4, :cond_1

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    iput-object v5, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_charts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_charts:Ljava/util/List;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetSldMasterIdLst()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;->getSldMasterIdList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lt0/b;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0, v0}, Lt0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_8
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetSldIdLst()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdList()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lt0/a;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0, v1}, Lt0/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw v1
    :try_end_5
    .catch Li5/z0; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removeSlide(I)Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->removeSldId(I)V

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFChart;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->removeChartRelation(Lorg/apache/poi/xslf/usermodel/XSLFChart;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_charts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->removeLayoutRelation(Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->removeNotes(Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->removePictureRelations(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFPictureData;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public setPageSize(Ljava/awt/Dimension;)V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;

    invoke-virtual {p1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->setCx(I)V

    invoke-virtual {p1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->setCy(I)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->setSldSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;)V

    return-void
.end method

.method public setSlideOrder(Lorg/apache/poi/xslf/usermodel/XSLFSlide;I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v0

    aget-object v1, v0, p1

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    sub-int v3, p2, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {v0, p2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    aput-object v1, v0, p2

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->setSldIdArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Slide not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
