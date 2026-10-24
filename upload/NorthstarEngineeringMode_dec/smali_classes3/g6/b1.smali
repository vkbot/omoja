.class public final synthetic Lg6/b1;
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

    iput p2, p0, Lg6/b1;->a:I

    iput-object p1, p0, Lg6/b1;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg6/b1;->a:I

    iget-object p0, p0, Lg6/b1;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTblGridBaseImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTblGridBaseImpl;->removeGridCol(I)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStyleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStyleImpl;->removeTblStylePr(I)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;->removeSmartTagType(I)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtEndPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtEndPrImpl;->removeRPr(I)V

    return-void

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;->removeNumPicBullet(I)V

    return-void

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumImpl;->removeLvlOverride(I)V

    return-void

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFootnotesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFootnotesImpl;->removeFootnote(I)V

    return-void

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;->removeAnchor(I)V

    return-void

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTCustomXmlPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTCustomXmlPrImpl;->removeAttr(I)V

    return-void

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;->removeConditionalFormatting(I)V

    return-void

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->removeTableStyleElement(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
