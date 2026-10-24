.class public final synthetic Lh6/k8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/k8;->a:I

    iput-object p1, p0, Lh6/k8;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlCell;

    iget-object p0, p0, Lh6/k8;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->setCustomXmlArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlCell;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lh6/k8;->a:I

    iget-object v1, p0, Lh6/k8;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->setCustomXmlDelRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->setOMathParaArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->setCustomXmlInsRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->setMoveToArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->setCustomXmlMoveToRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->setMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;)V

    return-void

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lh6/k8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->setBookmarkStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->setCustomXmlMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
