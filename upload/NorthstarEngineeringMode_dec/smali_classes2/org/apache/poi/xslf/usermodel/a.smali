.class public final synthetic Lorg/apache/poi/xslf/usermodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xslf/usermodel/a;->a:I

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/xslf/usermodel/a;->a:I

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->b(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    return-void

    :pswitch_1
    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
