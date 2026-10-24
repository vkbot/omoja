.class public final synthetic Lorg/apache/poi/hssf/record/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/FormulaRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/FormulaRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/i1;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/i1;->b:Lorg/apache/poi/hssf/record/FormulaRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/i1;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/i1;->b:Lorg/apache/poi/hssf/record/FormulaRecord;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->b(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->isCalcOnLoad()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->a(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
