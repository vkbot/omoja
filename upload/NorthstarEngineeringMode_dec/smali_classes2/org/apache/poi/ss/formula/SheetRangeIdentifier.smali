.class public Lorg/apache/poi/ss/formula/SheetRangeIdentifier;
.super Lorg/apache/poi/ss/formula/SheetIdentifier;
.source "SourceFile"


# instance fields
.field private final _lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;Lorg/apache/poi/ss/formula/NameIdentifier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    iput-object p3, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    return-void
.end method


# virtual methods
.method public asFormulaString(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->isQuoted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public getFirstSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getLastSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    return-object p0
.end method
