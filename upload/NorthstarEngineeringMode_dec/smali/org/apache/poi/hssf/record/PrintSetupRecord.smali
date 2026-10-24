.class public final Lorg/apache/poi/hssf/record/PrintSetupRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final draft:Lorg/apache/poi/util/BitField;

.field private static final landscape:Lorg/apache/poi/util/BitField;

.field private static final lefttoright:Lorg/apache/poi/util/BitField;

.field private static final noOrientation:Lorg/apache/poi/util/BitField;

.field private static final nocolor:Lorg/apache/poi/util/BitField;

.field private static final notes:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0xa1s

.field private static final usepage:Lorg/apache/poi/util/BitField;

.field private static final validsettings:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_10_footermargin:D

.field private field_11_copies:S

.field private field_1_paper_size:S

.field private field_2_scale:S

.field private field_3_page_start:S

.field private field_4_fit_width:S

.field private field_5_fit_height:S

.field private field_6_options:S

.field private field_7_hresolution:S

.field private field_8_vresolution:S

.field private field_9_headermargin:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->lefttoright:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->landscape:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->validsettings:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->nocolor:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->draft:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->notes:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->noOrientation:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->usepage:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    .line 8
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 9
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    .line 10
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    .line 11
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    .line 12
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    .line 13
    iget-short p1, p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    .line 24
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    .line 25
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->copy()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/PrintSetupRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->copy()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->copy()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object p0

    return-object p0
.end method

.method public getCopies()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x22

    return p0
.end method

.method public getDraft()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->draft:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getFitHeight()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    return p0
.end method

.method public getFitWidth()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    return p0
.end method

.method public getFooterMargin()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    return-wide v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lorg/apache/poi/hssf/record/w2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/w2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string/jumbo v4, "paperSize"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/y2;

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/y2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string/jumbo v4, "scale"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/w2;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/hssf/record/w2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string/jumbo v5, "pageStart"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/x2;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/hssf/record/x2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string v5, "fitWidth"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/y2;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/hssf/record/y2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string v5, "fitHeight"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/w2;

    const/4 v5, 0x2

    invoke-direct {v2, v0, v5}, Lorg/apache/poi/hssf/record/w2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const/16 v6, 0x8

    new-array v6, v6, [Lorg/apache/poi/util/BitField;

    sget-object v7, Lorg/apache/poi/hssf/record/PrintSetupRecord;->lefttoright:Lorg/apache/poi/util/BitField;

    aput-object v7, v6, v3

    sget-object v7, Lorg/apache/poi/hssf/record/PrintSetupRecord;->landscape:Lorg/apache/poi/util/BitField;

    aput-object v7, v6, v4

    sget-object v4, Lorg/apache/poi/hssf/record/PrintSetupRecord;->validsettings:Lorg/apache/poi/util/BitField;

    aput-object v4, v6, v5

    sget-object v4, Lorg/apache/poi/hssf/record/PrintSetupRecord;->nocolor:Lorg/apache/poi/util/BitField;

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v4, 0x4

    sget-object v8, Lorg/apache/poi/hssf/record/PrintSetupRecord;->draft:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v4

    const/4 v4, 0x5

    sget-object v8, Lorg/apache/poi/hssf/record/PrintSetupRecord;->notes:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v4

    const/4 v4, 0x6

    sget-object v8, Lorg/apache/poi/hssf/record/PrintSetupRecord;->noOrientation:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v4

    const/4 v4, 0x7

    sget-object v8, Lorg/apache/poi/hssf/record/PrintSetupRecord;->usepage:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v4

    const-string v9, "lefttoright"

    const-string v10, "landscape"

    const-string/jumbo v11, "validsettings"

    const-string v12, "nocolor"

    const-string v13, "draft"

    const-string v14, "notes"

    const-string v15, "noOrientation"

    const-string/jumbo v16, "usepage"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v6, v4}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string/jumbo v4, "options"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/x2;

    invoke-direct {v2, v0, v5}, Lorg/apache/poi/hssf/record/x2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string v4, "hResolution"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/y2;

    invoke-direct {v2, v0, v5}, Lorg/apache/poi/hssf/record/y2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string/jumbo v4, "vResolution"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/w2;

    invoke-direct {v2, v0, v7}, Lorg/apache/poi/hssf/record/w2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string v4, "headerMargin"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/x2;

    invoke-direct {v2, v0, v7}, Lorg/apache/poi/hssf/record/x2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string v4, "footerMargin"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/x2;

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/x2;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;I)V

    const-string v0, "copies"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->PRINT_SETUP:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHResolution()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    return p0
.end method

.method public getHeaderMargin()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    return-wide v0
.end method

.method public getLandscape()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->landscape:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getLeftToRight()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->lefttoright:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getNoColor()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->nocolor:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getNoOrientation()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->noOrientation:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getNotes()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->notes:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return p0
.end method

.method public getPageStart()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    return p0
.end method

.method public getPaperSize()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    return p0
.end method

.method public getScale()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xa1

    return p0
.end method

.method public getUsePage()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->usepage:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getVResolution()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    return p0
.end method

.method public getValidSettings()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->validsettings:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getPaperSize()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getScale()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getPageStart()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFitWidth()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFitHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHResolution()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getVResolution()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHeaderMargin()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFooterMargin()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getCopies()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setCopies(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    return-void
.end method

.method public setDraft(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->draft:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return-void
.end method

.method public setFitHeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    return-void
.end method

.method public setFitWidth(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    return-void
.end method

.method public setFooterMargin(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    return-void
.end method

.method public setHResolution(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    return-void
.end method

.method public setHeaderMargin(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    return-void
.end method

.method public setLandscape(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->landscape:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return-void
.end method

.method public setLeftToRight(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->lefttoright:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return-void
.end method

.method public setNoColor(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->nocolor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return-void
.end method

.method public setNoOrientation(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->noOrientation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return-void
.end method

.method public setNotes(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->notes:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return-void
.end method

.method public setPageStart(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    return-void
.end method

.method public setPaperSize(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    return-void
.end method

.method public setScale(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    return-void
.end method

.method public setUsePage(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->usepage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return-void
.end method

.method public setVResolution(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    return-void
.end method

.method public setValidSettings(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->validsettings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return-void
.end method
