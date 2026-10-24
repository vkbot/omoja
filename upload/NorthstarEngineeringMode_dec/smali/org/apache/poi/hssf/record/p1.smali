.class public final synthetic Lorg/apache/poi/hssf/record/p1;
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

    iput p1, p0, Lorg/apache/poi/hssf/record/p1;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/hssf/record/p1;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/RecalcIdRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DVALRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/hssf/record/IterationRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/IterationRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/hssf/record/UserSViewEnd;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/UserSViewEnd;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_8
    invoke-static {p1}, Lorg/apache/poi/hssf/record/InterfaceEndRecord;->create(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/hssf/record/DBCellRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DBCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/MMSRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/hssf/record/PrecisionRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PrecisionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/apache/poi/hssf/record/HideObjRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HideObjRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HCenterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/GutsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lorg/apache/poi/hssf/record/CRNRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CRNRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lorg/apache/poi/hssf/record/DConRefRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DConRefRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lorg/apache/poi/hssf/record/BackupRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/BackupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/EOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
    iget p0, p0, Lorg/apache/poi/hssf/record/p1;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
