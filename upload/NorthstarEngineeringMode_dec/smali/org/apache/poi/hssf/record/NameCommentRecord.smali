.class public final Lorg/apache/poi/hssf/record/NameCommentRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x894s


# instance fields
.field private final field_1_record_type:S

.field private final field_2_frt_cell_ref_flag:S

.field private final field_3_reserved:J

.field private field_6_name_text:Ljava/lang/String;

.field private field_7_comment_text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/NameCommentRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 2
    iget-short v0, p1, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    .line 4
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    .line 5
    iget-object v0, p1, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    if-nez v2, :cond_0

    .line 15
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    .line 17
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/NameCommentRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/NameCommentRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->copy()Lorg/apache/poi/hssf/record/NameCommentRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/NameCommentRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;-><init>(Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->copy()Lorg/apache/poi/hssf/record/NameCommentRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->copy()Lorg/apache/poi/hssf/record/NameCommentRecord;

    move-result-object p0

    return-object p0
.end method

.method public getCommentText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    return-object p0
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x12

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz v1, :cond_1

    mul-int/lit8 p0, p0, 0x2

    :cond_1
    add-int/2addr v0, p0

    return v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "recordType"

    new-instance v1, Lorg/apache/poi/hssf/record/f2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/f2;-><init>(Lorg/apache/poi/hssf/record/NameCommentRecord;I)V

    const-string v3, "frtCellRefFlag"

    new-instance v4, Lorg/apache/poi/hssf/record/g2;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/g2;-><init>(Lorg/apache/poi/hssf/record/NameCommentRecord;I)V

    const-string/jumbo v5, "reserved"

    new-instance v6, Lorg/apache/poi/hssf/record/q1;

    const/4 v2, 0x6

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "name"

    new-instance v8, Lorg/apache/poi/hssf/record/f2;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/f2;-><init>(Lorg/apache/poi/hssf/record/NameCommentRecord;I)V

    const-string v9, "comment"

    new-instance v10, Lorg/apache/poi/hssf/record/g2;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/g2;-><init>(Lorg/apache/poi/hssf/record/NameCommentRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->NAME_COMMENT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x894

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-short v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-wide v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    invoke-interface {p1, v2, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_1
    return-void
.end method

.method public setCommentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    return-void
.end method
