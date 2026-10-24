.class public final synthetic Lorg/apache/poi/common/usermodel/fonts/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/common/usermodel/fonts/FontHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/common/usermodel/fonts/a;->a:I

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/a;->b:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/common/usermodel/fonts/a;->a:I

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/a;->b:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->t(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->e(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->k(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getPanoseProportion()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getPanoseFamily()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getFullName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getFamilyName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->u(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->r(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->a(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getPanoseLetterForm()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->l(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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
