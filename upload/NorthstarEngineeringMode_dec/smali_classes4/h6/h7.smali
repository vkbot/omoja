.class public final synthetic Lh6/h7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/h7;->a:I

    iput-object p1, p0, Lh6/h7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh6/h7;->a:I

    iget-object p0, p0, Lh6/h7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getPermEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewCustomXmlMoveToRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getCustomXmlDelRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewMoveTo(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
