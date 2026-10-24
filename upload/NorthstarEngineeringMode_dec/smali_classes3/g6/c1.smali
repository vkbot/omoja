.class public final synthetic Lg6/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/xmlbeans/impl/values/p0;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/values/p0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/c1;->a:I

    iput-object p1, p0, Lg6/c1;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lg6/c1;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;->setNumPicBulletArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lg6/c1;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagType;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;->setSmartTagTypeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagType;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lg6/c1;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStyleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblStylePr;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStyleImpl;->setTblStylePrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblStylePr;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg6/c1;->a:I

    iget-object v1, p0, Lg6/c1;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTblGridBaseImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTblGridBaseImpl;->setGridColArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lg6/c1;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lg6/c1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtEndPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtEndPrImpl;->setRPrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lg6/c1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumImpl;->setLvlOverrideArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;)V

    return-void

    :pswitch_5
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFootnotesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFootnotesImpl;->setFootnoteArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V

    return-void

    :pswitch_6
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;->setAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;)V

    return-void

    :pswitch_7
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTCustomXmlPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTCustomXmlPrImpl;->setAttrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;)V

    return-void

    :pswitch_8
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;->setConditionalFormattingArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
