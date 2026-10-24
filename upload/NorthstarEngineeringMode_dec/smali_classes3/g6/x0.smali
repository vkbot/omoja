.class public final synthetic Lg6/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/xmlbeans/impl/values/p0;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/values/p0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/x0;->a:I

    iput-object p1, p0, Lg6/x0;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg6/x0;->a:I

    iget-object p0, p0, Lg6/x0;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStylesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStylesImpl;->removeStyle(I)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagPrImpl;->removeAttr(I)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;->removeActiveWritingStyle(I)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;->removeHeaderReference(I)V

    return-void

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;->removeAbstractNum(I)V

    return-void

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;->removeInline(I)V

    return-void

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTColumnsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTColumnsImpl;->removeCol(I)V

    return-void

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;->removeCols(I)V

    return-void

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStylesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStylesImpl;->removeTableStyle(I)V

    return-void

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableColumnsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableColumnsImpl;->removeTableColumn(I)V

    return-void

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSingleXmlCellsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSingleXmlCellsImpl;->removeSingleXmlCell(I)V

    return-void

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewImpl;->removePivotSelection(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
