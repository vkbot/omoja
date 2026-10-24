.class public final synthetic Ls0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls0/i;->c:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget p0, p0, Ls0/i;->c:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-static {p1, p2}, Lorg/apache/poi/xssf/util/CTColComparator;->a(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    check-cast p2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-static {p1, p2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->a(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    check-cast p2, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-static {p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord;->c(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ld/g;

    check-cast p2, Ld/g;

    sget p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->l:I

    iget-wide p0, p1, Ld/g;->h1:J

    iget-wide v0, p2, Ld/g;->h1:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
