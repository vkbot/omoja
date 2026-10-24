.class public final Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
.super Lorg/apache/poi/POIDocument;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;,
        Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetIterator;
    }
.end annotation


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEFAULT_MAX_IMAGE_LENGTH:I = 0x2faf080

.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field public static final INITIAL_CAPACITY:I

.field private static final LOGGER:La5/d;

.field private static MAX_IMAGE_LENGTH:I = 0x2faf080

.field private static MAX_RECORD_LENGTH:I = 0x186a0

.field private static final MAX_STYLES:I = 0xfbe


# instance fields
.field protected _sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private final _udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

.field private fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/usermodel/HSSFFont;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

.field private missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

.field private final names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private preserveNodes:Z

.field private workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "HSSFWorkbook.SheetInitialCapacity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->LOGGER:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 3
    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V
    .locals 4

    .line 10
    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 11
    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 12
    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v2, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 13
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

    move-result-object v0

    iput-boolean p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->clearDirectory()V

    .line 15
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecords(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook(Ljava/util/List;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 20
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setPropertiesFromWorkbook(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 21
    invoke-virtual {p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumRecords()I

    move-result p2

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->convertLabelRecords(Ljava/util/List;I)V

    .line 23
    new-instance v0, Lorg/apache/poi/hssf/model/RecordStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    .line 24
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->createSheet(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 26
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->LOGGER:La5/d;

    .line 27
    invoke-interface {p2}, La5/d;->g()La5/b;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->getType()I

    move-result p1

    invoke-static {p1}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "Unsupported BOF found of type {}"

    invoke-interface {p2, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 28
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result p1

    if-ge v3, p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 29
    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    .line 30
    new-instance p2, Lorg/apache/poi/hssf/usermodel/HSSFName;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameCommentRecord(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameCommentRecord;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    return-void
.end method

.method private convertLabelRecords(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;I)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string v1, "convertLabelRecords called"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x204

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    new-instance v3, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelRecord;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelRecord;->getRow()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CellRecord;->setRow(I)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelRecord;->getColumn()S

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CellRecord;->setColumn(S)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelRecord;->getXFIndex()S

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CellRecord;->setXFIndex(S)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->LOGGER:La5/d;

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p0

    const-string p1, "convertLabelRecords exit"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/model/InternalWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v0
.end method

.method private getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 8
    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFSheet;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V

    return-void
.end method

.method public static getMaxImageLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->MAX_IMAGE_LENGTH:I

    return v0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static getOleMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hpsf/ClassID;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->POWERPOINT_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    const-string v2, "PowerPoint Document"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V7_WORKBOOK:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v3}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSheets()[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, ")"

    const/4 v3, 0x2

    if-lez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    move v4, v3

    :catch_1
    :goto_0
    add-int/lit8 v0, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    const/16 v5, 0x1f

    if-ge v6, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1d

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    return-object v4

    :cond_2
    move v4, v0

    goto :goto_0
.end method

.method public static getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;
    .locals 3

    const-string v0, "WORKBOOK"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "EncryptedPackage"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Book"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BOOK"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "WordDocument"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The document is really a DOC file"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The supplied POIFSFileSystem does not contain a BIFF8 \'Workbook\' entry. Is it really an excel file? Had: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryNames()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v0, "The supplied spreadsheet seems to be Excel 5.0/7.0 (BIFF5) format. POI only supports BIFF8 format (from Excel versions 97/2000/XP/2003)"

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "The supplied spreadsheet seems to be an Encrypted .xlsx file. It must be decrypted before use by XSSF, it cannot be used by HSSF"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private searchForPictures(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFPictureData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    instance-of v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    invoke-direct {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->searchForPictures(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setMaxImageLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->MAX_IMAGE_LENGTH:I

    return-void
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method private setPropertiesFromWorkbook(Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-void
.end method

.method private updateActiveSheetAfterSheetReorder(II)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_0

    :cond_0
    if-ge v0, p1, :cond_1

    if-lt v0, p2, :cond_4

    :cond_1
    if-le v0, p1, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_0

    :cond_2
    if-le p2, p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateEncryptionInfo()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWorkbookRecordList()Lorg/apache/poi/hssf/model/WorkbookRecordList;

    move-result-object p0

    if-nez v2, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p0

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {v3, v2}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/Decryptor;->getVerifier()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/Encryptor;->confirmPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :goto_2
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "can\'t validate/update encryption setting"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private updateNamedRangesAfterSheetReorder(II)V
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getSheetIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-ne v1, p1, :cond_1

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_1
    if-gt p2, v1, :cond_2

    if-ge v1, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_2
    if-ge p1, v1, :cond_0

    if-gt v1, p2, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private validateSheetIndex(I)V
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p1, :cond_1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "(0.."

    const-string v1, ")"

    invoke-static {v0, p0, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    const-string v0, "(no sheets)"

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sheet index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of range "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 4

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    sget v1, Ln4/f;->Z:I

    .line 25
    new-instance v1, Ln4/f$a;

    invoke-direct {v1}, Ln4/f$a;-><init>()V

    .line 26
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ln4/f$a;->m([B)V

    invoke-virtual {v1}, Ln4/f$a;->k()Ln4/f;

    move-result-object v1

    const-string v2, "Workbook"

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 27
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    iget-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0005DocumentSummaryInformation"

    const-string v3, "\u0005SummaryInformation"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    new-instance v1, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    new-instance v2, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    .line 33
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    .line 34
    invoke-static {v1, v2}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 35
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOlePackage(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getOleMap()Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 6
    :cond_1
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    .line 7
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    .line 8
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return p0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 13
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 20
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->initDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 21
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MBD"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 23
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    .line 24
    sget-object v3, Lorg/apache/poi/hpsf/ClassIDPredefined;->OLE_V1_PACKAGE:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v3}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    :cond_2
    if-eqz v2, :cond_1

    .line 25
    invoke-static {v2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createOleMarkerEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 26
    new-instance p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    invoke-direct {p0, p2, p3, p4, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 27
    sget p1, Lorg/apache/commons/io/output/j;->c:I

    .line 28
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object p1

    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->writeOut(Ljava/io/OutputStream;)V

    const-string p0, "\u0001Ole10Native"

    .line 30
    invoke-virtual {p1}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-interface {v2, p0, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p1}, Lorg/apache/commons/io/output/a;->close()V

    return v0

    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 33
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method

.method public addPicture([BI)I
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->initDrawings()V

    const-string v0, "MD5"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    new-instance v3, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>()V

    invoke-virtual {v3, v0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setUID([B)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setMarker(B)V

    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    array-length p1, p1

    add-int/lit8 p1, p1, 0x19

    const/16 v4, 0xff

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/poifs/filesystem/FileMagic;->WMF:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v3, v4, :cond_1

    array-length v3, p1

    const/16 v4, 0x16

    sub-int/2addr v3, v4

    sget v5, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->MAX_IMAGE_LENGTH:I

    invoke-static {p1, v4, v3, v5}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    :cond_1
    new-instance v3, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;-><init>()V

    invoke-virtual {v3, v0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setUID([B)V

    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setPictureData([B)V

    const/4 p1, -0x2

    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setFilter(B)V

    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getCompressedSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x3a

    move v4, v2

    :goto_0
    sget-short v5, Lorg/apache/poi/ddf/EscherBlipRecord;->RECORD_ID_START:S

    add-int/2addr v5, p2

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected picture format: "

    invoke-static {p1, p2}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 v5, 0x7a80

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x6e00

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x46a0

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x5420

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    goto :goto_1

    :pswitch_4
    const/16 v5, 0x2160

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    goto :goto_1

    :pswitch_5
    const/16 v5, 0x3d40

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    :goto_1
    new-instance v5, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    sget-short v6, Lorg/apache/poi/ddf/EscherBSERecord;->RECORD_ID:S

    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    shl-int/lit8 v6, p2, 0x4

    or-int/2addr v1, v6

    int-to-short v1, v1

    invoke-virtual {v5, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    int-to-byte p2, p2

    invoke-virtual {v5, p2}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeMacOS(B)V

    invoke-virtual {v5, p2}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeWin32(B)V

    invoke-virtual {v5, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setUid([B)V

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBSERecord;->setTag(S)V

    invoke-virtual {v5, p1}, Lorg/apache/poi/ddf/EscherBSERecord;->setSize(I)V

    invoke-virtual {v5, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    invoke-virtual {v5, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setOffset(I)V

    invoke-virtual {v5, v3}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipRecord(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addBSERecord(Lorg/apache/poi/ddf/EscherBSERecord;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public cloneSheet(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 4
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->cloneSheet(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 7
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 8
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 10
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 11
    invoke-virtual {v3, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    const/16 v1, 0xd

    .line 12
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 13
    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->cloneFilter(II)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    .line 14
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public bridge synthetic cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->cloneSheet(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/POIDocument;->close()V

    return-void
.end method

.method public createBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hssf/usermodel/HSSFName;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public createCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    const/16 v1, 0xfbe

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumCellStyles()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    .line 5
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-direct {v2, v1, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v2

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The maximum number of cell styles was exceeded. You can define up to 4000 styles in a .xls workbook"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    return-object p0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    move-result-object p0

    return-object p0
.end method

.method public createEvaluationWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createEvaluationWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createNewFont()Lorg/apache/poi/hssf/record/FontRecord;

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfFonts()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(I)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maximum number of fonts was exceeded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public createName()Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createName()Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createName()Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object p0

    return-object p0
.end method

.method public createSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 6

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sheet"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 8
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    return-object v0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->doesContainsSheetName(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_0

    .line 11
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->LOGGER:La5/d;

    .line 12
    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    const-string v3, "Sheet \'{}\' will be added with a trimmed name \'{}\' for MS Excel compliance."

    invoke-interface {v2, p1, v3, v0}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, v0

    .line 13
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v1, p1

    .line 17
    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 18
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    return-object v0

    .line 19
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The workbook already contains a sheet named \'"

    const-string v1, "\'"

    .line 20
    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sheetName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public dumpDrawingGroupRecords(Z)V
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v0, 0xeb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->decode()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    if-eqz p1, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public encryptBytes([B)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    new-instance v2, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v2, p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/Encryptor;->setChunkSize(I)V

    new-array v4, v3, [B

    :try_start_0
    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    move-result-object p0

    move v2, v1

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_4

    const/4 v5, 0x4

    invoke-static {v0, v4, v1, v5}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    invoke-static {v4, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v6

    const/4 v7, 0x2

    invoke-static {v4, v7}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v7

    invoke-static {v6}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->isNeverEncryptedRecord(I)Z

    move-result v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->setNextRecordSize(IZ)V

    invoke-virtual {p0, v4, v1, v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    const/16 v9, 0x85

    if-ne v6, v9, :cond_1

    int-to-long v8, v7

    sget v6, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->MAX_RECORD_LENGTH:I

    invoke-static {v8, v9, v6}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    invoke-virtual {p0, v6, v1, v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    add-int/lit8 v8, v7, -0x4

    invoke-virtual {p0, v6, v5, v8}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    move v5, v7

    :goto_1
    if-lez v5, :cond_3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v0, v4, v1, v6}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    if-eqz v8, :cond_2

    invoke-virtual {p0, v4, v1, v6}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writePlain([BII)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4, v1, v6}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    :goto_2
    sub-int/2addr v5, v6

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x4

    add-int/2addr v2, v7

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public findExistingBuiltinNameRecordIdx(IB)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getBuiltInName()B

    move-result v2

    if-eq v2, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to find all defined names to iterate over"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfFonts()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(I)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getBold()Z

    move-result v3

    if-ne v3, p1, :cond_1

    .line 5
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getColor()S

    move-result v3

    if-ne v3, p2, :cond_1

    .line 6
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getFontHeight()S

    move-result v3

    if-ne v3, p3, :cond_1

    .line 7
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getFontName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getItalic()Z

    move-result v3

    if-ne v3, p5, :cond_1

    .line 9
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getStrikeout()Z

    move-result v3

    if-ne v3, p6, :cond_1

    .line 10
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getTypeOffset()S

    move-result v3

    if-ne v3, p7, :cond_1

    .line 11
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getUnderline()B

    move-result v3

    if-ne v3, p8, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public getActiveSheetIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result p0

    return p0
.end method

.method public getAllEmbeddedObjects()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 3
    invoke-direct {p0, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFPictureData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    instance-of v3, v2, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->decode()V

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->searchForPictures(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBackupFlag()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BackupRecord;->getBackup()S

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 0

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/usermodel/HSSFName;

    :goto_0
    return-object p0
.end method

.method public getBytes()[B
    .locals 8

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string v1, "HSSFWorkbook.getBytes()"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheets()[Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->updateEncryptionInfo()V

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->preSerialize()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/InternalSheet;->preSerialize()V

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->preSerialize()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSize()I

    move-result v2

    new-array v4, v1, [Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_1

    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6, v5, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetBof(II)V

    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;

    invoke-direct {v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;-><init>()V

    aget-object v7, v0, v5

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v7

    invoke-virtual {v7, v6, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V

    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    move-result v7

    add-int/2addr v2, v7

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v2, [B

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v3, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->serialize(I[B)I

    move-result v2

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v5, v4, v3

    invoke-virtual {v5, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->serialize(I[B)I

    move-result v6

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    move-result v7

    if-ne v6, v7, :cond_2

    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Actual serialized sheet size ("

    const-string v1, ") differs from pre-calculated size ("

    invoke-static {v0, v6, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") for sheet ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->encryptBytes([B)V

    return-object v0
.end method

.method public getCellReferenceType()Lorg/apache/poi/ss/usermodel/CellReferenceType;
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/RefModeRecord;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/hssf/record/RefModeRecord;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RefModeRecord;->getMode()S

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->R1C1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    return-object p0

    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RefModeRecord;->getMode()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->A1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    return-object p0

    :cond_5
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->UNKNOWN:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    return-object p0
.end method

.method public getCellStyleAt(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 2
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    int-to-short p1, p1

    invoke-direct {v1, p1, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v1
.end method

.method public bridge synthetic getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public getCreationHelper()Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method public bridge synthetic getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCreationHelper()Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;

    move-result-object p0

    return-object p0
.end method

.method public getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    return-object v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/FilePassRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getInternalWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/FilePassRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFirstVisibleTab()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result p0

    return p0
.end method

.method public getFontAt(I)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 6
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v1

    .line 7
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    invoke-direct {v2, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    .line 8
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public bridge synthetic getFontAt(I)Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(I)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    const/16 v0, 0x1c1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->getEngineId()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getInternalWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-object p0
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-object p0
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object p0
.end method

.method public bridge synthetic getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object p0

    return-object p0
.end method

.method public getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified name index "

    const-string v3, " is outside the allowable range (0.."

    invoke-static {v2, p1, v3}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There are no defined names in this workbook"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameName(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getNameIndex(Lorg/apache/poi/hssf/usermodel/HSSFName;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getNameName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getNameName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p0

    return-object p0
.end method

.method public getNames(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getNameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNumCellStyles()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result p0

    return p0
.end method

.method public getNumberOfFonts()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumberOfFontRecords()I

    move-result p0

    return p0
.end method

.method public getNumberOfFontsAsInt()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfFonts()I

    move-result p0

    return p0
.end method

.method public getNumberOfNames()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getNumberOfSheets()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedTabs()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 3
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object p0
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;

    move-result-object p0

    return-object p0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object p0
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    return-object p0
.end method

.method public getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-object p0
.end method

.method public initDrawings()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    :cond_1
    return-void
.end method

.method public insertChartRecord()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    const/16 v1, 0x5a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    new-instance v2, Lorg/apache/poi/hssf/record/UnknownRecord;

    const/16 v3, 0xeb

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/hssf/record/UnknownRecord;-><init>(I[B)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :array_0
    .array-data 1
        0xft
        0x0t
        0x0t
        -0x10t
        0x52t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        -0x10t
        0x18t
        0x0t
        0x0t
        0x0t
        0x1t
        0x8t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x33t
        0x0t
        0xbt
        -0x10t
        0x12t
        0x0t
        0x0t
        0x0t
        -0x41t
        0x0t
        0x8t
        0x0t
        0x8t
        0x0t
        -0x7ft
        0x1t
        0x9t
        0x0t
        0x0t
        0x8t
        -0x40t
        0x1t
        0x40t
        0x0t
        0x0t
        0x8t
        0x40t
        0x0t
        0x1et
        -0xft
        0x10t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x0t
        0x8t
        0xct
        0x0t
        0x0t
        0x8t
        0x17t
        0x0t
        0x0t
        0x8t
        -0x9t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public isHidden()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHidden()Z

    move-result p0

    return p0
.end method

.method public isSheetHidden(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isSheetHidden(I)Z

    move-result p0

    return p0
.end method

.method public isSheetVeryHidden(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isSheetVeryHidden(I)Z

    move-result p0

    return p0
.end method

.method public isWriteProtected()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isWriteProtected()Z

    move-result p0

    return p0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result p0

    return p0
.end method

.method public removeName(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeName(I)V

    return-void
.end method

.method public removeName(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 0

    .line 3
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Lorg/apache/poi/hssf/usermodel/HSSFName;)I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(I)V

    return-void
.end method

.method public removePrintArea(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeBuiltinRecord(BI)V

    return-void
.end method

.method public removeSheetAt(I)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeSheet(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    if-lt p1, v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_0
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSelectedTab(I)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    if-ne v0, p1, :cond_5

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_3

    :cond_5
    if-le v0, p1, :cond_6

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public resetFontCache()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Map;

    return-void
.end method

.method public setActiveSheet(I)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setActiveSheetIndex(I)V

    return-void
.end method

.method public setBackupFlag(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/BackupRecord;->setBackup(S)V

    return-void
.end method

.method public setCellReferenceType(Lorg/apache/poi/ss/usermodel/CellReferenceType;)V
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v3, v2, Lorg/apache/poi/hssf/record/RefModeRecord;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/poi/hssf/record/RefModeRecord;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellReferenceType;->R1C1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/RefModeRecord;->setMode(S)V

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellReferenceType;->A1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    if-ne p1, v1, :cond_6

    if-nez v2, :cond_5

    new-instance v2, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/RefModeRecord;->setMode(S)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method public setEncryptionMode(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-eq p1, v1, :cond_2

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-eq p1, v1, :cond_2

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only xor, binaryRC4 and cryptoAPI are supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getInternalWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FilePassRecord;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object v0

    :goto_1
    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getInternalWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWorkbookRecordList()Lorg/apache/poi/hssf/model/WorkbookRecordList;

    move-result-object p0

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    :cond_5
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setFirstVisibleTab(I)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecalcId()Lorg/apache/poi/hssf/record/RecalcIdRecord;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->setEngineId(I)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHidden(Z)V

    return-void
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 2

    .line 11
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v1, 0x1

    invoke-direct {v0, p4, p2, v1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 12
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p2

    .line 13
    new-instance p4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p4, p5, p3, v1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    const-string p3, ":"

    .line 14
    invoke-static {p2, p3}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 15
    invoke-virtual {p4}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x6

    .line 1
    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    const/16 v3, 0x2c

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/Appendable;Ljava/lang/String;)V

    const/16 v3, 0x21

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p2, p0, v1, p1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-void
.end method

.method public setSelectedTab(I)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v4

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    return-void
.end method

.method public setSelectedTabs(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 10
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    int-to-short p1, p1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 12
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    return-void
.end method

.method public setSelectedTabs([I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSelectedTabs(Ljava/util/Collection;)V

    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->doesContainsSheetName(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The workbook already contains a sheet named \'"

    const-string v0, "\'"

    invoke-static {p1, p2, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sheetName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetOrder(Ljava/lang/String;I)V

    invoke-static {v0, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForSheetShift(II)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->updateNamedRangesAfterSheetReorder(II)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->updateActiveSheetAfterSheetReorder(II)V

    return-void
.end method

.method public setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetHidden(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    return-void
.end method

.method public sheetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetIterator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public unwriteProtectWorkbook()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->unwriteProtectWorkbook()V

    return-void
.end method

.method public write()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 5
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    .line 6
    sget v1, Ln4/f;->Z:I

    .line 7
    new-instance v1, Ln4/f$a;

    invoke-direct {v1}, Ln4/f$a;-><init>()V

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ln4/f$a;->m([B)V

    invoke-virtual {v1}, Ln4/f$a;->k()Ln4/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->replaceContents(Ljava/io/InputStream;)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->writeProperties()V

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem()V

    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 1

    .line 11
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->create(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    .line 12
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_0

    .line 16
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    .line 17
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 18
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 19
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 22
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
