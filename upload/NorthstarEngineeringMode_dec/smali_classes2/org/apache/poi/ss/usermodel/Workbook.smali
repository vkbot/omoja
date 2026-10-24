.class public interface abstract Lorg/apache/poi/ss/usermodel/Workbook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/ss/usermodel/Sheet;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_SENSITIVE_SHEET_NAME_LEN:I = 0x1f

.field public static final PICTURE_TYPE_DIB:I = 0x7

.field public static final PICTURE_TYPE_EMF:I = 0x2

.field public static final PICTURE_TYPE_JPEG:I = 0x5

.field public static final PICTURE_TYPE_PICT:I = 0x4

.field public static final PICTURE_TYPE_PNG:I = 0x6

.field public static final PICTURE_TYPE_WMF:I = 0x3


# virtual methods
.method public abstract addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract addPicture([BI)I
.end method

.method public abstract addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
.end method

.method public abstract cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
.end method

.method public abstract close()V
.end method

.method public abstract createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
.end method

.method public abstract createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
.end method

.method public abstract createEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
.end method

.method public abstract createFont()Lorg/apache/poi/ss/usermodel/Font;
.end method

.method public abstract createName()Lorg/apache/poi/ss/usermodel/Name;
.end method

.method public abstract createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
.end method

.method public abstract createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
.end method

.method public abstract findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
.end method

.method public abstract getActiveSheetIndex()I
.end method

.method public abstract getAllNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPictures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/PictureData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCellReferenceType()Lorg/apache/poi/ss/usermodel/CellReferenceType;
.end method

.method public abstract getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
.end method

.method public abstract getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
.end method

.method public abstract getFirstVisibleTab()I
.end method

.method public abstract getFontAt(I)Lorg/apache/poi/ss/usermodel/Font;
.end method

.method public abstract getForceFormulaRecalculation()Z
.end method

.method public abstract getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
.end method

.method public abstract getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
.end method

.method public abstract getNames(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumCellStyles()I
.end method

.method public abstract getNumberOfFonts()I
.end method

.method public abstract getNumberOfFontsAsInt()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation
.end method

.method public abstract getNumberOfNames()I
.end method

.method public abstract getNumberOfSheets()I
.end method

.method public abstract getPrintArea(I)Ljava/lang/String;
.end method

.method public abstract getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
.end method

.method public abstract getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
.end method

.method public abstract getSheetIndex(Ljava/lang/String;)I
.end method

.method public abstract getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
.end method

.method public abstract getSheetName(I)Ljava/lang/String;
.end method

.method public abstract getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
.end method

.method public abstract getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isSheetHidden(I)Z
.end method

.method public abstract isSheetVeryHidden(I)Z
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->sheetIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public abstract linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
.end method

.method public abstract removeName(Lorg/apache/poi/ss/usermodel/Name;)V
.end method

.method public abstract removePrintArea(I)V
.end method

.method public abstract removeSheetAt(I)V
.end method

.method public abstract setActiveSheet(I)V
.end method

.method public abstract setCellReferenceType(Lorg/apache/poi/ss/usermodel/CellReferenceType;)V
.end method

.method public abstract setFirstVisibleTab(I)V
.end method

.method public abstract setForceFormulaRecalculation(Z)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
.end method

.method public abstract setPrintArea(IIIII)V
.end method

.method public abstract setPrintArea(ILjava/lang/String;)V
.end method

.method public abstract setSelectedTab(I)V
.end method

.method public abstract setSheetHidden(IZ)V
.end method

.method public abstract setSheetName(ILjava/lang/String;)V
.end method

.method public abstract setSheetOrder(Ljava/lang/String;I)V
.end method

.method public abstract setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
.end method

.method public abstract sheetIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->sheetIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumberOfSheets()I

    move-result p0

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {v0, v1, v2, p0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public abstract write(Ljava/io/OutputStream;)V
.end method
