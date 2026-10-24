.class public final synthetic Lorg/apache/poi/hssf/record/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/HSSFRecordTypes$RecordConstructor;
.implements Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/o1;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/hssf/record/o1;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/PasswordRev4Record;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PasswordRev4Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/hssf/record/SupBookRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SupBookRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/hssf/record/DSFRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/hssf/record/DeltaRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DeltaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DrawingRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/hssf/record/BookBoolRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/BookBoolRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/hssf/record/MulBlankRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/MulBlankRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SCLRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PaletteRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/WriteProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/hssf/record/CalcModeRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CalcModeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/WriteAccessRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lorg/apache/poi/hssf/record/ContinueRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ContinueRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_19
    new-instance p0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1a
    new-instance p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/BottomMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    iget p0, p0, Lorg/apache/poi/hssf/record/o1;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method
