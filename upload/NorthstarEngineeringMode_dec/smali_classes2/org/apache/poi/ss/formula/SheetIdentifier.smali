.class public Lorg/apache/poi/ss/formula/SheetIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _bookName:Ljava/lang/String;

.field private final _sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    return-void
.end method


# virtual methods
.method public asFormulaString()Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString(Ljava/lang/StringBuilder;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public asFormulaString(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " ["

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->isQuoted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x27

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public getBookName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    return-object p0
.end method

.method public getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
