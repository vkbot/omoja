.class public final synthetic Lorg/apache/poi/hssf/record/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;
.implements Lorg/apache/poi/hssf/record/HSSFRecordTypes$RecordConstructor;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/j3;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/hssf/record/j3;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->a(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/hssf/record/chart/DatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/DatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/hssf/record/chart/EndRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/EndRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/hssf/record/chart/TextRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/TextRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/AxisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/hssf/record/TableStylesRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TableStylesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_19
    new-instance p0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/LabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1a
    new-instance p0, Lorg/apache/poi/hssf/record/UnknownRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/UnknownRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method public final apply(Lorg/apache/poi/util/LittleEndianInput;II)Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0
.end method
