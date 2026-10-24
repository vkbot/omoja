.class public Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private cellRef:Ljava/lang/String;

.field private commentCellRefs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final comments:Lorg/apache/poi/xssf/model/Comments;

.field private fIsOpen:Z

.field private formatIndex:S

.field private formatString:Ljava/lang/String;

.field private final formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private final formula:Ljava/lang/StringBuilder;

.field private final formulasNotResults:Z

.field private final headerFooter:Ljava/lang/StringBuilder;

.field private hfIsOpen:Z

.field private isIsOpen:Z

.field private nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

.field private nextRowNum:I

.field private final output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

.field private rowNum:I

.field private final sharedStringsTable:Lorg/apache/poi/xssf/model/SharedStrings;

.field private final stylesTable:Lorg/apache/poi/xssf/model/Styles;

.field private vIsOpen:Z

.field private final value:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/Styles;Lorg/apache/poi/xssf/model/Comments;Lorg/apache/poi/xssf/model/SharedStrings;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/Styles;

    iput-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->comments:Lorg/apache/poi/xssf/model/Comments;

    iput-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->sharedStringsTable:Lorg/apache/poi/xssf/model/SharedStrings;

    iput-object p4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iput-boolean p6, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    .line 5
    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->NUMBER:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p5, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 6
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->init(Lorg/apache/poi/xssf/model/Comments;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/Styles;Lorg/apache/poi/xssf/model/SharedStrings;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 7
    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;-><init>(Lorg/apache/poi/xssf/model/Styles;Lorg/apache/poi/xssf/model/Comments;Lorg/apache/poi/xssf/model/SharedStrings;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/Styles;Lorg/apache/poi/xssf/model/SharedStrings;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Z)V
    .locals 6

    .line 8
    new-instance v4, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v4}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;-><init>(Lorg/apache/poi/xssf/model/Styles;Lorg/apache/poi/xssf/model/SharedStrings;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    return-void
.end method

.method private checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_SHEET_DATA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v0, :cond_1

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    if-nez v0, :cond_4

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v0, :cond_3

    :goto_1
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result p1

    iget v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cell ref should be null only if there are only empty cells in the row; rowNum: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    sget-object v2, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->CELL:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v2, :cond_5

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    return-void

    :cond_5
    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/util/CellAddress;->compareTo(Lorg/apache/poi/ss/util/CellAddress;)I

    move-result v0

    if-lez v0, :cond_6

    sget-object v3, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v3, :cond_6

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    iget v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    if-gt v3, v4, :cond_6

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_2

    :cond_6
    if-gez v0, :cond_7

    if-ne p1, v2, :cond_7

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    if-gt v0, v1, :cond_7

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_8
    return-void
.end method

.method private init(Lorg/apache/poi/xssf/model/Comments;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Lorg/apache/poi/xssf/model/Comments;->getCellAddresses()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isTextTag(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "v"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "inlineStr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private outputCell()V
    .locals 7

    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$1;->$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType:[I

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "(TODO: Unexpected type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget-short v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    iget-object v5, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->sharedStringsTable:Lorg/apache/poi/xssf/model/SharedStrings;

    invoke-interface {v3, v2}, Lorg/apache/poi/xssf/model/SharedStrings;->getItemAt(I)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->LOG:La5/d;

    invoke-interface {v3}, La5/d;->h()La5/b;

    move-result-object v3

    invoke-interface {v3, v2}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v2

    const-string v3, "Failed to parse SST index \'{}\'"

    invoke-interface {v2, v0, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    if-eqz v2, :cond_4

    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-short v5, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    iget-object v6, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    invoke-virtual {v4, v2, v3, v5, v6}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ERROR:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_3

    const-string v0, "FALSE"

    goto :goto_0

    :cond_3
    const-string v0, "TRUE"

    :catch_1
    :cond_4
    :goto_0
    sget-object v2, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->CELL:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->comments:Lorg/apache/poi/xssf/model/Comments;

    if-eqz v2, :cond_5

    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/apache/poi/xssf/model/Comments;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v1

    :cond_5
    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    invoke-interface {v2, p0, v0, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v0, p1}, Lorg/apache/poi/xssf/model/Comments;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->vIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p3, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isTextTag(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->vIsOpen:Z

    iget-boolean p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    if-nez p1, :cond_9

    invoke-direct {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputCell()V

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "f"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    goto/16 :goto_1

    :cond_2
    const-string p1, "is"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    invoke-direct {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputCell()V

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    :cond_3
    const-string p1, "row"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    invoke-interface {p1, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->endRow(I)V

    iget p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextRowNum:I

    goto :goto_1

    :cond_4
    const-string p1, "sheetData"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_SHEET_DATA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-interface {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->endSheet()V

    goto :goto_1

    :cond_5
    const-string p1, "oddHeader"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "evenHeader"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "firstHeader"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const-string p1, "oddFooter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "evenFooter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "firstFooter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_7
    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p3, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->headerFooter(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    :cond_8
    :goto_0
    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->headerFooter(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string p3, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isTextTag(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->vIsOpen:Z

    iget-boolean p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    if-nez p1, :cond_12

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_3

    :cond_1
    const-string p1, "is"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    goto/16 :goto_3

    :cond_2
    const-string p1, "f"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "t"

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    sget-object p2, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->NUMBER:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    if-ne p1, p2, :cond_3

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->FORMULA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    :cond_3
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p2, "shared"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ref"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "si"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    if-eqz p0, :cond_12

    sget-object p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "shared formulas not yet supported!"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    goto/16 :goto_3

    :cond_6
    const-string p1, "oddHeader"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "evenHeader"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "firstHeader"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "firstFooter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "oddFooter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "evenFooter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string p1, "row"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "r"

    if-eqz p1, :cond_9

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    goto :goto_0

    :cond_8
    iget p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextRowNum:I

    iput p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->startRow(I)V

    goto/16 :goto_3

    :cond_9
    const-string p1, "c"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->NUMBER:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    const/4 p1, -0x1

    iput-short p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "s"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "b"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->BOOLEAN:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto/16 :goto_3

    :cond_a
    const-string v1, "e"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->ERROR:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_3

    :cond_b
    const-string v1, "inlineStr"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->INLINE_STRING:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_3

    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->SST_STRING:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_3

    :cond_d
    const-string v0, "str"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->FORMULA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_3

    :cond_e
    iget-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/Styles;

    if-eqz p2, :cond_10

    if-eqz p4, :cond_f

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/Styles;

    invoke-interface {p2, p1}, Lorg/apache/poi/xssf/model/Styles;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p1

    goto :goto_1

    :cond_f
    invoke-interface {p2}, Lorg/apache/poi/xssf/model/Styles;->getNumCellStyles()I

    move-result p2

    if-lez p2, :cond_10

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/Styles;

    invoke-interface {p1, p3}, Lorg/apache/poi/xssf/model/Styles;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p1

    :cond_10
    :goto_1
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getDataFormat()S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    if-nez p1, :cond_12

    iget-short p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    goto :goto_3

    :cond_11
    :goto_2
    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_12
    :goto_3
    return-void
.end method
