.class public final Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
.super Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/Pxg3D;


# instance fields
.field private externalWorkbookNumber:I

.field private firstSheetName:Ljava/lang/String;

.field private lastSheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p3, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 0

    .line 6
    invoke-direct {p0, p3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    .line 7
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    .line 8
    instance-of p1, p2, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    if-eqz p1, :cond_0

    .line 9
    check-cast p2, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->getLastSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Ljava/lang/String;)V
    .locals 2

    .line 10
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 1

    const/4 v0, -0x1

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    .line 2
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    .line 3
    iget-object v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->copy()Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->copy()Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->copy()Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    move-result-object p0

    return-object p0
.end method

.method public format2DRefAsString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExternalWorkbookNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ss/formula/ptg/c;-><init>(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;I)V

    const-string v2, "externalWorkbookNumber"

    new-instance v3, Lorg/apache/poi/ss/formula/ptg/h;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/ss/formula/ptg/h;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string v4, "sheetName"

    new-instance v5, Lorg/apache/poi/ss/formula/ptg/i;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/ss/formula/ptg/i;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string v6, "lastSheetName"

    new-instance v7, Lorg/apache/poi/ss/formula/ptg/c;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/ss/formula/ptg/c;-><init>(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;I)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLastSheetName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    return-object p0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setLastSheetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    return-void
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    iget-object v2, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/SheetRangeAndWorkbookIndexFormatter;->format(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XSSF-only Ptg, should not be serialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
