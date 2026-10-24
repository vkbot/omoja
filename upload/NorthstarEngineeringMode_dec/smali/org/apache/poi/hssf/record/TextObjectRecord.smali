.class public final Lorg/apache/poi/hssf/record/TextObjectRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "SourceFile"


# static fields
.field private static final FORMAT_RUN_ENCODED_SIZE:I = 0x8

.field public static final HORIZONTAL_TEXT_ALIGNMENT_CENTERED:S = 0x2s

.field public static final HORIZONTAL_TEXT_ALIGNMENT_JUSTIFIED:S = 0x4s

.field public static final HORIZONTAL_TEXT_ALIGNMENT_LEFT_ALIGNED:S = 0x1s

.field public static final HORIZONTAL_TEXT_ALIGNMENT_RIGHT_ALIGNED:S = 0x3s

.field private static final HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

.field public static final TEXT_ORIENTATION_NONE:S = 0x0s

.field public static final TEXT_ORIENTATION_ROT_LEFT:S = 0x3s

.field public static final TEXT_ORIENTATION_ROT_RIGHT:S = 0x2s

.field public static final TEXT_ORIENTATION_TOP_TO_BOTTOM:S = 0x1s

.field public static final VERTICAL_TEXT_ALIGNMENT_BOTTOM:S = 0x3s

.field public static final VERTICAL_TEXT_ALIGNMENT_CENTER:S = 0x2s

.field public static final VERTICAL_TEXT_ALIGNMENT_JUSTIFY:S = 0x4s

.field public static final VERTICAL_TEXT_ALIGNMENT_TOP:S = 0x1s

.field private static final VerticalTextAlignment:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1b6s

.field private static final textLocked:Lorg/apache/poi/util/BitField;


# instance fields
.field private _linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

.field private _text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

.field private _unknownPostFormulaByte:Ljava/lang/Byte;

.field private _unknownPreFormulaInt:I

.field private field_1_options:I

.field private field_2_textOrientation:I

.field private field_3_reserved4:I

.field private field_4_reserved5:I

.field private field_5_reserved6:I

.field private field_8_reserved7:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x70

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->VerticalTextAlignment:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->textLocked:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 7

    .line 14
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_4

    .line 24
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    const/16 v4, 0xb

    if-lt v2, v4, :cond_3

    .line 25
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v2

    .line 26
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    .line 27
    invoke-static {v2, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 28
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    .line 29
    aget-object v5, v2, v4

    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v6, :cond_1

    .line 30
    check-cast v5, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    iput-object v5, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Had unexpected type of ptg at index 0: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_2
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Read "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v2

    const-string v1, " tokens but expected exactly 1"

    .line 34
    invoke-static {p1, v0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_3
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Not enough remaining data for a link formula"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iput-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    .line 37
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    if-gtz v2, :cond_7

    if-lez v0, :cond_5

    .line 38
    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->readRawString(Lorg/apache/poi/hssf/record/RecordInputStream;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    .line 39
    :goto_1
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    if-lez v1, :cond_6

    .line 40
    invoke-static {p1, v2, v1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->processFontRuns(Lorg/apache/poi/hssf/record/RecordInputStream;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;I)V

    :cond_6
    return-void

    .line 41
    :cond_7
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unused "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes at end of record"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/TextObjectRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>(Lorg/apache/poi/hssf/record/cont/ContinuableRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    .line 9
    iget-object v0, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 10
    iget-object v0, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v0, :cond_0

    .line 11
    iget v1, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    iput v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    .line 12
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    .line 13
    iget-object p1, p1, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/TextObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/TextObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/TextObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/TextObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getFormattingDataLength()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->numFormattingRuns()I

    move-result p0

    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static processFontRuns(Lorg/apache/poi/hssf/record/RecordInputStream;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;I)V
    .locals 4

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    div-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->applyFont(IIS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Bad format run data length "

    const-string v0, ")"

    invoke-static {p1, p2, v0}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readRawString(Lorg/apache/poi/hssf/record/RecordInputStream;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private serializeTXORecord(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getFormattingDataLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    :cond_0
    return-void
.end method

.method private serializeTrailingRecords(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeStringData(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->writeFormatData(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V

    return-void
.end method

.method private static writeFormatData(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->numFormattingRuns()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getIndexOfFormattingRun(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getFontOfFormattingRun(I)S

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->copy()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->copy()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/TextObjectRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    return-object v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/hssf/record/s3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/s3;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;I)V

    const-string v3, "isHorizontal"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/t3;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/t3;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;I)V

    const-string v3, "isVertical"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/u3;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/u3;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;I)V

    const-string/jumbo v2, "textLocked"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/s3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/s3;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;I)V

    const-string/jumbo v3, "textOrientation"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/t3;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/t3;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;I)V

    const-string/jumbo v3, "string"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/u3;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/u3;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;I)V

    const-string/jumbo v2, "reserved4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/s3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/s3;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;I)V

    const-string/jumbo v3, "reserved5"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/t3;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/t3;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;I)V

    const-string/jumbo v3, "reserved6"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/u3;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/u3;-><init>(Lorg/apache/poi/hssf/record/TextObjectRecord;I)V

    const-string/jumbo p0, "reserved7"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->TEXT_OBJECT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHorizontalTextAlignment()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getLinkRefPtg()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1b6

    return p0
.end method

.method public getStr()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    return-object p0
.end method

.method public getTextOrientation()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    return p0
.end method

.method public getVerticalTextAlignment()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->VerticalTextAlignment:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public isTextLocked()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->textLocked:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->serializeTXORecord(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->serializeTrailingRecords(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    :cond_0
    return-void
.end method

.method public setHorizontalTextAlignment(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    return-void
.end method

.method public setStr(Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    return-void
.end method

.method public setTextLocked(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->textLocked:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    return-void
.end method

.method public setTextOrientation(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    return-void
.end method

.method public setVerticalTextAlignment(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->VerticalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    return-void
.end method
