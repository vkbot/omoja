.class public final synthetic Lorg/apache/poi/ss/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ss/usermodel/Sheet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ss/util/e;->a:I

    iput-object p1, p0, Lorg/apache/poi/ss/util/e;->b:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/e;->a:I

    iget-object p0, p0, Lorg/apache/poi/ss/util/e;->b:Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast p1, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->b(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/Integer;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->a(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/Integer;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
