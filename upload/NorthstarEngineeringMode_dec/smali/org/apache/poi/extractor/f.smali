.class public final synthetic Lorg/apache/poi/extractor/f;
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

    iput p1, p0, Lorg/apache/poi/extractor/f;->c:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/extractor/f;->c:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-static {p1, p2}, Lorg/apache/poi/xssf/util/CTColComparator;->b(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    check-cast p2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-static {p1, p2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->a(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lorg/apache/poi/extractor/ExtractorProvider;

    check-cast p2, Lorg/apache/poi/extractor/ExtractorProvider;

    invoke-static {p1, p2}, Lorg/apache/poi/extractor/ExtractorFactory;->c(Lorg/apache/poi/extractor/ExtractorProvider;Lorg/apache/poi/extractor/ExtractorProvider;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
