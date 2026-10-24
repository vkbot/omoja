.class public final Lorg/apache/poi/hssf/record/WSBoolRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final alternateexpression:Lorg/apache/poi/util/BitField;

.field private static final alternateformula:Lorg/apache/poi/util/BitField;

.field private static final applystyles:Lorg/apache/poi/util/BitField;

.field private static final autobreaks:Lorg/apache/poi/util/BitField;

.field private static final dialog:Lorg/apache/poi/util/BitField;

.field private static final displayguts:Lorg/apache/poi/util/BitField;

.field private static final fittopage:Lorg/apache/poi/util/BitField;

.field private static final rowsumsbelow:Lorg/apache/poi/util/BitField;

.field private static final rowsumsright:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x81s


# instance fields
.field private field_1_wsbool:B

.field private field_2_wsbool:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/WSBoolRecord;->autobreaks:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/WSBoolRecord;->dialog:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/WSBoolRecord;->applystyles:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsbelow:Lorg/apache/poi/util/BitField;

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsright:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->fittopage:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->displayguts:Lorg/apache/poi/util/BitField;

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateexpression:Lorg/apache/poi/util/BitField;

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateformula:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    const/4 v0, 0x1

    .line 7
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    const/4 v0, 0x0

    .line 8
    aget-byte p1, p1, v0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/WSBoolRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    .line 4
    iget-byte p1, p1, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->copy()Lorg/apache/poi/hssf/record/WSBoolRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->copy()Lorg/apache/poi/hssf/record/WSBoolRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->copy()Lorg/apache/poi/hssf/record/WSBoolRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/WSBoolRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;-><init>(Lorg/apache/poi/hssf/record/WSBoolRecord;)V

    return-object v0
.end method

.method public getAlternateExpression()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateexpression:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getAlternateFormula()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateformula:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getAutobreaks()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->autobreaks:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getDialog()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->dialog:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayGuts()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->displayguts:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getFitToPage()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->fittopage:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/m2;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/poi/util/BitField;

    sget-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->autobreaks:Lorg/apache/poi/util/BitField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->dialog:Lorg/apache/poi/util/BitField;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->applystyles:Lorg/apache/poi/util/BitField;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsbelow:Lorg/apache/poi/util/BitField;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsright:Lorg/apache/poi/util/BitField;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "ROW_SUMS_BELOW"

    const-string v8, "ROW_SUMS_RIGHT"

    const-string v9, "AUTO_BREAKS"

    const-string v10, "DIALOG"

    const-string v11, "APPLY_STYLES"

    filled-new-array {v9, v10, v11, v2, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hssf/record/u1;

    const/16 v2, 0x1b

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-array p0, v7, [Lorg/apache/poi/util/BitField;

    sget-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->fittopage:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v3

    sget-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->displayguts:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v4

    sget-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateexpression:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v5

    sget-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateformula:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v6

    const-string v2, "ALTERNATE_EXPRESSION"

    const-string v3, "ALTERNATE_FORMULA"

    const-string v4, "FIT_TO_PAGE"

    const-string v5, "DISPLAY_GUTS"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string/jumbo v1, "wsbool1"

    const-string/jumbo v2, "wsbool2"

    invoke-static {v1, v0, v2, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->WS_BOOL:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRowSumsBelow()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsbelow:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getRowSumsRight()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsright:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x81

    return p0
.end method

.method public getWSBool1()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    return p0
.end method

.method public getWSBool2()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getWSBool2()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getWSBool1()B

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method

.method public setAlternateExpression(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateexpression:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    return-void
.end method

.method public setAlternateFormula(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateformula:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    return-void
.end method

.method public setAutobreaks(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->autobreaks:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    return-void
.end method

.method public setDialog(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->dialog:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->displayguts:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    return-void
.end method

.method public setFitToPage(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->fittopage:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsbelow:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsright:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    return-void
.end method

.method public setWSBool1(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    return-void
.end method

.method public setWSBool2(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    return-void
.end method
