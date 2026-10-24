.class public final synthetic Lg6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/c;->a:I

    iput-object p1, p0, Lg6/c;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg6/c;->a:I

    iget-object p0, p0, Lg6/c;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;->insertFormula(ILjava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;->xsetFormulaArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
