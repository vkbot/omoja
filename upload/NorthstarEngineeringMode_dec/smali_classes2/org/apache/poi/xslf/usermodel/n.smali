.class public final synthetic Lorg/apache/poi/xslf/usermodel/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/xslf/usermodel/n;->a:I

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/n;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/xslf/usermodel/n;->a:I

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/n;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->isSetB()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetT()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
