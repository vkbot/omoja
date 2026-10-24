.class public final Lorg/apache/poi/hssf/record/NameRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/NameRecord$Option;
    }
.end annotation


# static fields
.field public static final BUILTIN_AUTO_ACTIVATE:B = 0xat

.field public static final BUILTIN_AUTO_CLOSE:B = 0x3t

.field public static final BUILTIN_AUTO_DEACTIVATE:B = 0xbt

.field public static final BUILTIN_AUTO_OPEN:B = 0x2t

.field public static final BUILTIN_CONSOLIDATE_AREA:B = 0x1t

.field public static final BUILTIN_CRITERIA:B = 0x5t

.field public static final BUILTIN_DATABASE:B = 0x4t

.field public static final BUILTIN_DATA_FORM:B = 0x9t

.field public static final BUILTIN_FILTER_DB:B = 0xdt

.field public static final BUILTIN_PRINT_AREA:B = 0x6t

.field public static final BUILTIN_PRINT_TITLE:B = 0x7t

.field public static final BUILTIN_RECORDER:B = 0x8t

.field public static final BUILTIN_SHEET_TITLE:B = 0xct

.field public static final sid:S = 0x18s


# instance fields
.field private field_11_nameIsMultibyte:Z

.field private field_12_built_in_code:B

.field private field_12_name_text:Ljava/lang/String;

.field private field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

.field private field_14_custom_menu_text:Ljava/lang/String;

.field private field_15_description_text:Ljava/lang/String;

.field private field_16_help_topic_text:Ljava/lang/String;

.field private field_17_status_bar_text:Ljava/lang/String;

.field private field_1_option_flag:S

.field private field_2_keyboard_shortcut:B

.field private field_5_externSheetIndex_plus1:S

.field private field_6_sheetNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 2
    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BI)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>()V

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    or-int/lit8 p1, p1, 0x20

    int-to-short p1, p1

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setOptionFlag(S)V

    iput p2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/NameRecord;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>(Lorg/apache/poi/hssf/record/cont/ContinuableRecord;)V

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    .line 5
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    iput v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    .line 8
    iget-boolean v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    .line 9
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    .line 10
    iget-object v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    .line 12
    iget-object v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    .line 15
    iget-object p1, p1, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 7

    .line 18
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readAllContinuedRemainder()[B

    move-result-object p1

    .line 20
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    .line 21
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    .line 22
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    .line 23
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result p1

    .line 24
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    .line 25
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    .line 26
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    .line 27
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v2

    .line 28
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v3

    .line 29
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v4

    .line 30
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v5

    .line 31
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 33
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    goto :goto_1

    :cond_1
    iget-boolean v6, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz v6, :cond_2

    .line 34
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    goto :goto_1

    .line 35
    :cond_2
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    .line 36
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    add-int v6, v2, v3

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    sub-int/2addr p1, v6

    .line 37
    invoke-static {v1, v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    .line 38
    invoke-static {v0, v2}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    .line 39
    invoke-static {v0, v3}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    .line 40
    invoke-static {v0, v4}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    .line 41
    invoke-static {v0, v5}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/NameRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/NameRecord;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameTextLength()I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/NameRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getNameRawSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz p0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method private getNameTextLength()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static translateBuiltInName(B)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "_FilterDatabase"

    return-object p0

    :pswitch_1
    const-string p0, "Sheet_Title"

    return-object p0

    :pswitch_2
    const-string p0, "Auto_Deactivate"

    return-object p0

    :pswitch_3
    const-string p0, "Auto_Activate"

    return-object p0

    :pswitch_4
    const-string p0, "Data_Form"

    return-object p0

    :pswitch_5
    const-string p0, "Recorder"

    return-object p0

    :pswitch_6
    const-string p0, "Print_Titles"

    return-object p0

    :pswitch_7
    const-string p0, "Print_Area"

    return-object p0

    :pswitch_8
    const-string p0, "Criteria"

    return-object p0

    :pswitch_9
    const-string p0, "Database"

    return-object p0

    :pswitch_a
    const-string p0, "Auto_Close"

    return-object p0

    :pswitch_b
    const-string p0, "Auto_Open"

    return-object p0

    :pswitch_c
    const-string p0, "Consolidate_Area"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->copy()Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>(Lorg/apache/poi/hssf/record/NameRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->copy()Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p0

    return-object p0
.end method

.method public getBuiltInName()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    return p0
.end method

.method public getCustomMenuText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    return-object p0
.end method

.method public getDataSize()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameRawSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    return-object p0
.end method

.method public getExternSheetNumber()I
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-ne v0, v2, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-ne v0, v2, :cond_2

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getFnGroup()B
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit16 p0, p0, 0xfc0

    shr-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 6
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

    new-instance v1, Lorg/apache/poi/hssf/record/h2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/h2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v3, "dataSize"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/j2;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/j2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string/jumbo v4, "optionFlag"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/h2;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/h2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v5, "keyboardShortcut"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/i2;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/i2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v5, "externSheetIndex"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/j2;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/j2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string/jumbo v4, "sheetNumber"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/h2;

    const/4 v4, 0x3

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/h2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v5, "nameIsMultibyte"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/i2;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/i2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v5, "builtInName"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/j2;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/j2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v4, "nameLength"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/h2;

    const/4 v4, 0x4

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/h2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v5, "nameText"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/i2;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/i2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v4, "formula"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/i2;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/i2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v4, "customMenuText"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/j2;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/j2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v2, "descriptionText"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/h2;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/h2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string v2, "helpTopicText"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/i2;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/i2;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    const-string/jumbo p0, "statusBarText"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->NAME:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHelpTopicText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyboardShortcut()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    return p0
.end method

.method public getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getBuiltInName()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/NameRecord;->translateBuiltInName(B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getOptionFlag()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    return p0
.end method

.method public getSheetNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-object p0
.end method

.method public hasFormula()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    invoke-static {v0}, Lorg/apache/poi/hssf/record/NameRecord$Option;->isFormula(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBuiltInName()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCommandName()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComplexFunction()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFunctionName()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHiddenName()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMacro()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getOptionFlag()S

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getKeyboardShortcut()B

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameTextLength()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    iget-object v4, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-short v4, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v4, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeArrayConstantData(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getCustomMenuText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getHelpTopicText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getStatusBarText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setCustomMenuText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    return-void
.end method

.method public setFunction(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    or-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 p1, p1, -0x3

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    :goto_0
    return-void
.end method

.method public setHelpTopicText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    or-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 p1, p1, -0x2

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    :goto_0
    return-void
.end method

.method public setKeyboardShortcut(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    return-void
.end method

.method public setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    return-void
.end method

.method public setOptionFlag(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    return-void
.end method

.method public setSheetNumber(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    return-void
.end method

.method public setStatusBarText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-void
.end method
