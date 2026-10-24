.class public final Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CellStyle;
.implements Lorg/apache/poi/common/Duplicatable;


# static fields
.field private static final getDataFormatStringCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final lastDateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static final lastFormats:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final _format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

.field private final _index:S

.field private final _workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/h;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/apache/poi/hssf/usermodel/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/util/ThreadLocalUtil;->registerCleaner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    return-void
.end method

.method public constructor <init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iput-short p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    return-void
.end method

.method public constructor <init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Short;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lambda$static$0()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lambda$static$1()V

    return-void
.end method

.method private checkDefaultBackgroundFills()V
    .locals 3

    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-eq v1, v0, :cond_1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFillBackgroundColor(S)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFillBackgroundColor(S)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$static$0()Ljava/lang/Short;
    .locals 1

    const/16 v0, -0x8000

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$1()V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method


# virtual methods
.method public cloneStyleFrom(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 4
    iget-object v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 5
    iget-object v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    const/16 v1, -0x8000

    .line 6
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    .line 8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFormat(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setDataFormat(S)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 11
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createNewFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v0

    .line 12
    iget-object v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFontIndex()I

    move-result p1

    .line 14
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/FontRecord;)V

    .line 16
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 17
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontIndex(Lorg/apache/poi/hssf/record/FontRecord;)I

    move-result v1

    int-to-short v1, v1

    invoke-direct {p1, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFont;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFont(Lorg/apache/poi/hssf/usermodel/HSSFFont;)V

    :cond_0
    return-void
.end method

.method public cloneStyleFrom(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->cloneStyleFrom(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can only clone from one HSSFCellStyle to another, not between HSSFCellStyle and XSSFCellStyle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->copy()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    if-eqz v2, :cond_5

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-nez v2, :cond_2

    iget-object v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-eqz v2, :cond_3

    return v1

    :cond_2
    iget-object v3, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-short p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    iget-short p1, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    return v1
.end method

.method public getAlignment()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignment()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object p0

    return-object p0
.end method

.method public getBorderBottom()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderBottom()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBorderLeft()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderLeft()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBorderRight()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderRight()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBorderTop()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderTop()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBottomBorderColor()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBottomBorderPaletteIdx()S

    move-result p0

    return p0
.end method

.method public getDataFormat()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFormatIndex()S

    move-result p0

    return p0
.end method

.method public getDataFormatString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    .line 1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFormats()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 4
    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFormats()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 6
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString(Lorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDataFormatString(Lorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;
    .locals 1

    .line 11
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 12
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->getFormat(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataFormatString(Lorg/apache/poi/ss/usermodel/Workbook;)Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string p0, "General"

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->getFormat(S)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFillBackgroundColor()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result p0

    add-int/lit8 v1, v0, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 3
    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillBackgroundColor()S

    move-result p0

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getFillForegroundColor()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result p0

    return p0
.end method

.method public getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 3
    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillForegroundColor()S

    move-result p0

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getFillPattern()Lorg/apache/poi/ss/usermodel/FillPatternType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlFillPattern()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FillPatternType;->forInt(I)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object p0

    return-object p0
.end method

.method public getFont(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 0

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFontIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(I)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public getFontIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result p0

    return p0
.end method

.method public getFontIndexAsInt()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result p0

    return p0
.end method

.method public getHidden()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isHidden()Z

    move-result p0

    return p0
.end method

.method public getIndention()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndent()S

    move-result p0

    return p0
.end method

.method public getIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    return p0
.end method

.method public getLeftBorderColor()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getLeftBorderPaletteIdx()S

    move-result p0

    return p0
.end method

.method public getLocked()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isLocked()Z

    move-result p0

    return p0
.end method

.method public getParentStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0xfff

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v1, v0, v2, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQuotePrefixed()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->get123Prefix()Z

    move-result p0

    return p0
.end method

.method public getReadingOrder()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getReadingOrder()S

    move-result p0

    return p0
.end method

.method public getRightBorderColor()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRightBorderPaletteIdx()S

    move-result p0

    return p0
.end method

.method public getRotation()S
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRotation()S

    move-result p0

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    rsub-int/lit8 p0, p0, 0x5a

    int-to-short p0, p0

    :cond_1
    return p0
.end method

.method public getShrinkToFit()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getShrinkToFit()Z

    move-result p0

    return p0
.end method

.method public getTopBorderColor()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getTopBorderPaletteIdx()S

    move-result p0

    return p0
.end method

.method public getUserStyleName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-short p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getVerticalAlignment()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object p0

    return-object p0
.end method

.method public getWrapText()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getWrapText()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    iget-short p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setAlignment(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentAlignment(Z)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignment(S)V

    return-void
.end method

.method public setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderBottom(S)V

    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderLeft(S)V

    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderRight(S)V

    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderTop(S)V

    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBottomBorderPaletteIdx(S)V

    return-void
.end method

.method public setDataFormat(S)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    return-void
.end method

.method public setFillBackgroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 1

    .line 3
    instance-of v0, p1, Lorg/apache/poi/hssf/util/HSSFColor;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lorg/apache/poi/hssf/util/HSSFColor;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFillBackgroundColor(S)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HSSFCellStyle only accepts HSSFColor instances"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFillBackgroundColor(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 1
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillBackground(S)V

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->checkDefaultBackgroundFills()V

    return-void
.end method

.method public setFillForegroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 1

    .line 3
    instance-of v0, p1, Lorg/apache/poi/hssf/util/HSSFColor;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lorg/apache/poi/hssf/util/HSSFColor;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFillForegroundColor(S)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HSSFCellStyle only accepts HSSFColor instances"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFillForegroundColor(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 1
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillForeground(S)V

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->checkDefaultBackgroundFills()V

    return-void
.end method

.method public setFillPattern(Lorg/apache/poi/ss/usermodel/FillPatternType;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FillPatternType;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlFillPattern(S)V

    return-void
.end method

.method public setFont(Lorg/apache/poi/hssf/usermodel/HSSFFont;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentFont(Z)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getIndex()I

    move-result p1

    int-to-short p1, p1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    return-void
.end method

.method public setFont(Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFont(Lorg/apache/poi/hssf/usermodel/HSSFFont;)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentCellOptions(Z)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setHidden(Z)V

    return-void
.end method

.method public setIndention(S)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndent(S)V

    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setLeftBorderPaletteIdx(S)V

    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentCellOptions(Z)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setLocked(Z)V

    return-void
.end method

.method public setQuotePrefixed(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->set123Prefix(Z)V

    return-void
.end method

.method public setReadingOrder(S)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setReadingOrder(S)V

    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setRightBorderPaletteIdx(S)V

    return-void
.end method

.method public setRotation(S)V
    .locals 3

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, -0x5a

    if-gez p1, :cond_1

    if-lt p1, v0, :cond_1

    rsub-int/lit8 p1, p1, 0x5a

    int-to-short p1, p1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5a

    if-le p1, v1, :cond_2

    const/16 v2, 0xb4

    if-gt p1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-lt p1, v0, :cond_3

    if-gt p1, v1, :cond_3

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setRotation(S)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The rotation must be between -90 and 90 degrees, or 0xff"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShrinkToFit(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setShrinkToFit(Z)V

    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setTopBorderPaletteIdx(S)V

    return-void
.end method

.method public setUserStyleName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-short v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-short v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-short p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    const/16 v1, 0x14

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to set user specified style names for built in styles!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/StyleRecord;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setVerticalAlignment(S)V

    return-void
.end method

.method public setWrapText(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentAlignment(Z)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setWrapText(Z)V

    return-void
.end method

.method public verifyBelongsToWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This Style does not belong to the supplied Workbook. Are you trying to assign a style from one workbook to the cell of a differnt workbook?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
