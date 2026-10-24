.class public abstract Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;
.implements Lorg/apache/poi/ss/formula/EvaluationWorkbook;
.implements Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;,
        Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _tableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation
.end field

.field protected final _uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-void
.end method

.method private convertFromExternalSheetIndex(I)I
    .locals 0

    return p1
.end method

.method private convertToExternalSheetIndex(I)I
    .locals 0

    return p1
.end method

.method private findExternalLinkIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/model/ExternalLinksTable;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getLinkedFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getTableCache()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    return-object p0
.end method

.method private resolveBookIndex(Ljava/lang/String;)I
    .locals 4

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getExternalLinksTable()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->findExternalLinkIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    return v2

    :cond_1
    const-string v2, "\'file:///"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->findExternalLinkIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    if-eq p0, v3, :cond_2

    return p0

    :cond_2
    new-instance p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$FakeExternalLinksTable;-><init>(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$1;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Book not linked for filename "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_tableCache:Ljava/util/Map;

    return-void
.end method

.method public convertFromExternSheetIndex(I)I
    .locals 0

    return p1
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    return-object p0
.end method

.method public createName()Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    return-object p0
.end method

.method public get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 5
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->resolveBookIndex(Ljava/lang/String;)I

    move-result p0

    .line 7
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-object v0

    .line 8
    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-object p0
.end method

.method public get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->resolveBookIndex(Ljava/lang/String;)I

    move-result p0

    .line 3
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/CellReference;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;-><init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/CellReference;)V

    return-object p0
.end method

.method public getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "HSSF-style external references are not supported for XSSF"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 1

    if-lez p3, :cond_2

    add-int/lit8 p3, p3, -0x1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getExternalLinksTable()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getDefinedNames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/ss/usermodel/Name;

    .line 4
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Name;->getNameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Name;->getSheetIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 6
    new-instance p2, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    const/4 p3, -0x1

    invoke-direct {p2, p1, p3, p0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;-><init>(Ljava/lang/String;II)V

    return-object p2

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Name \'"

    const-string v0, "\' not found in reference to "

    .line 8
    invoke-static {p3, p1, v0}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getLinkedFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result p0

    .line 11
    new-instance p2, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;-><init>(Ljava/lang/String;II)V

    return-object p2
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "HSSF-style external references are not supported for XSSF"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 0

    if-lez p3, :cond_0

    add-int/lit8 p3, p3, -0x1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getExternalLinksTable()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getLinkedFileName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p3, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 6
    :cond_2
    :goto_1
    new-instance p2, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 1
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->convertToExternalSheetIndex(I)I

    move-result p0

    return p0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not implemented yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 1
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfNames()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 2
    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v4

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v4, v2, :cond_0

    if-ne v4, p2, :cond_1

    .line 6
    :cond_0
    new-instance p1, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;

    invoke-direct {p1, v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFName;ILorg/apache/poi/ss/formula/FormulaParsingWorkbook;)V

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 2

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->getIndex()I

    move-result p1

    .line 9
    new-instance v0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFName;ILorg/apache/poi/ss/formula/FormulaParsingWorkbook;)V

    return-object v0
.end method

.method public getNameText(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/NameXPxg;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-nez p2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    return-object v1

    .line 7
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->resolveBookIndex(Ljava/lang/String;)I

    move-result p0

    .line 9
    new-instance p2, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {p2, p0, v1, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 10
    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->resolveBookIndex(Ljava/lang/String;)I

    move-result p0

    .line 13
    new-instance p2, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {p2, p0, v0, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 14
    :cond_4
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    move-result-object p0

    return-object p0
.end method

.method public getSheetFirstNameByExternSheet(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->convertFromExternalSheetIndex(I)I

    move-result p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSheetLastNameByExternSheet(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getSheetFirstNameByExternSheet(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object p0
.end method

.method public bridge synthetic getTable(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Table;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getTable(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTable;

    move-result-object p0

    return-object p0
.end method

.method public getTable(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getTableCache()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    return-object p0
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object p0

    return-object p0
.end method

.method public resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getNameIndex()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;->getFunctionName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
