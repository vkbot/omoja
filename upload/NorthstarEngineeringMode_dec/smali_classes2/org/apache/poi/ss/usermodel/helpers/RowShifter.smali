.class public abstract Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
.super Lorg/apache/poi/ss/usermodel/helpers/BaseRowColShifter;
.source "SourceFile"


# instance fields
.field protected final sheet:Lorg/apache/poi/ss/usermodel/Sheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/helpers/BaseRowColShifter;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method

.method private removalNeeded(Lorg/apache/poi/ss/util/CellRangeAddress;III)Z
    .locals 1

    sub-int p0, p3, p2

    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    if-lez p4, :cond_0

    add-int/lit8 p2, p3, 0x1

    add-int/2addr p3, p4

    sub-int p0, p3, p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-instance p2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {p2, p0, p3, v0, v0}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    goto :goto_0

    :cond_0
    add-int/2addr p4, p2

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p0, p4

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-instance p2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {p2, p4, p0, v0, v0}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result p0

    return p0
.end method

.method public static validateShiftLeftParameters(III)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->validateShiftParameters(III)V

    sub-int p1, p0, p2

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Column index less than zero: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p0, p2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static validateShiftParameters(III)V
    .locals 1

    if-ltz p2, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Incorrect shifting range : %d-%d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Shifting step may not be negative, but had "

    invoke-static {p1, p2}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public shiftMergedRegions(III)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    iget-object v5, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v5, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->removalNeeded(Lorg/apache/poi/ss/util/CellRangeAddress;III)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_0
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, p1, :cond_2

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    if-lt v6, p1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v7

    :goto_2
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v8

    if-le v8, p2, :cond_4

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v8

    if-gt v8, p2, :cond_3

    goto :goto_3

    :cond_3
    move v7, v3

    :cond_4
    :goto_3
    if-eqz v6, :cond_6

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->containsRow(I)Z

    move-result v6

    if-nez v6, :cond_6

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->containsRow(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setFirstRow(I)V

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setLastRow(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->removeMergedRegions(Ljava/util/Collection;)V

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object p3, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {p3, p2}, Lorg/apache/poi/ss/usermodel/Sheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    goto :goto_5

    :cond_9
    return-object v0
.end method
