.class public Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private display:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private final relId:Ljava/lang/String;

.field private toolTip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/util/CellRangeAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object v3, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getRelId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    return-object p0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    return-void
.end method

.method public setToolTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XSSFHyperlinkRecord{cellRangeAddress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', toolTip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', display=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
