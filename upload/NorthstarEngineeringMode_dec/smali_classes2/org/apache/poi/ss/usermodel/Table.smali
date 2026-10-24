.class public interface abstract Lorg/apache/poi/ss/usermodel/Table;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final isStructuredReference:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-zA-Z_\\\\][a-zA-Z0-9._]*\\[.*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/Table;->isStructuredReference:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public contains(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    invoke-interface {p0, v6}, Lorg/apache/poi/ss/usermodel/Table;->contains(Lorg/apache/poi/ss/util/CellReference;)Z

    move-result p0

    return p0
.end method

.method public abstract contains(Lorg/apache/poi/ss/util/CellReference;)Z
.end method

.method public abstract findColumnIndex(Ljava/lang/String;)I
.end method

.method public abstract getEndColIndex()I
.end method

.method public abstract getEndRowIndex()I
.end method

.method public abstract getHeaderRowCount()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSheetName()Ljava/lang/String;
.end method

.method public abstract getStartColIndex()I
.end method

.method public abstract getStartRowIndex()I
.end method

.method public abstract getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;
.end method

.method public abstract getStyleName()Ljava/lang/String;
.end method

.method public abstract getTotalsRowCount()I
.end method

.method public abstract isHasTotalsRow()Z
.end method
