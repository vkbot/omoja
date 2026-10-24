.class public final synthetic Lg6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/f;->a:I

    iput-object p1, p0, Lg6/f;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg6/f;->a:I

    iget-object p0, p0, Lg6/f;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;->getCfvoArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;->insertNewColor(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
