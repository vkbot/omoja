.class public final synthetic Lg6/y0;
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

    iput p2, p0, Lg6/y0;->a:I

    iput-object p1, p0, Lg6/y0;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg6/y0;->a:I

    iget-object p0, p0, Lg6/y0;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTabsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTabsImpl;->removeTab(I)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;->removeAttachedSchema(I)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;->removeFooterReference(I)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtDropDownListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtDropDownListImpl;->removeListItem(I)V

    return-void

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtComboBoxImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtComboBoxImpl;->removeListItem(I)V

    return-void

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;->removeNum(I)V

    return-void

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTLatentStylesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTLatentStylesImpl;->removeLsdException(I)V

    return-void

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTEndnotesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTEndnotesImpl;->removeEndnote(I)V

    return-void

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTCommentsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTCommentsImpl;->removeComment(I)V

    return-void

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTAbstractNumImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTAbstractNumImpl;->removeLvl(I)V

    return-void

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorkbookImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorkbookImpl;->removeFileRecoveryPr(I)V

    return-void

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTablePartsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTablePartsImpl;->removeTablePart(I)V

    return-void

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSortStateImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSortStateImpl;->removeSortCondition(I)V

    return-void

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewsImpl;->removeSheetView(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
