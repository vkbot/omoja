.class public Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xslf/usermodel/XSLFTableCell;",
        ">;"
    }
.end annotation


# instance fields
.field private final _cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableCell;",
            ">;"
        }
    .end annotation
.end field

.field private final _row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

.field private final _table:Lorg/apache/poi/xslf/usermodel/XSLFTable;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->getTcArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-direct {v4, v2, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCell()Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->addNewTc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfColumns()I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->sizeOfTcArray()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCTTable()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;->addNewGridCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;

    move-result-object v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;->setW(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateRowColIndexes()V

    return-object v1
.end method

.method public getCells()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableCell;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->xgetH()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    return-object p0
.end method

.method public insertCell(I)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->insertNewTc(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfColumns()I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->sizeOfTcArray()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCTTable()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;->insertNewGridCol(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;

    move-result-object p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;->setW(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateRowColIndexes()V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableCell;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public mergeCells(II)V
    .locals 2

    if-ge p1, p2, :cond_1

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setGridSpan(I)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setHMerge()V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot merge, first column >= last column : "

    const-string v1, " >= "

    invoke-static {v0, p1, v1, p2}, Landroidx/activity/result/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeCell(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->sizeOfTcArray()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->removeTc(I)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateRowColIndexes()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Cannot remove cell at "

    const-string v2, "; row has only "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->sizeOfTcArray()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "columns."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeight(D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->setH(Ljava/lang/Object;)V

    return-void
.end method
