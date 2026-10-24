.class public final synthetic Lorg/apache/poi/hssf/record/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    check-cast p2, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-static {p1, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->b(Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/BoundSheetRecord;)I

    move-result p0

    return p0
.end method
