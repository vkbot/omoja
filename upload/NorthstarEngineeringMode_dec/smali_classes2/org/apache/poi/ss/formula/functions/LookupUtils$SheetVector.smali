.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SheetVector"
.end annotation


# instance fields
.field private final _re:Lorg/apache/poi/ss/formula/eval/RefEval;

.field private final _size:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_re:Lorg/apache/poi/ss/formula/eval/RefEval;

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_re:Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_re:Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Specified index ("

    const-string v2, ") is outside the allowed range (0.."

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    return p0
.end method
